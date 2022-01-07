
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int wait_queue; } ;
struct vmci_ctx {int user_version; void* queue_pair_array; void* doorbell_array; int list_item; scalar_t__ cid; int * notify_page; int * notify; int cred; scalar_t__ priv_flags; void* pending_doorbell_array; TYPE_1__ host_context; int notifier_list; int datagram_queue; int lock; int kref; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int lock; int head; } ;


 int EINVAL ;
 int ENOMEM ;
 struct vmci_ctx* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ VMCI_INVALID_ID ;
 int VMCI_MAX_GUEST_DOORBELL_COUNT ;
 int VMCI_MAX_GUEST_QP_COUNT ;
 scalar_t__ VMCI_PRIVILEGE_ALL_FLAGS ;
 scalar_t__ VMCI_RESERVED_CID_LIMIT ;
 int ctx_dummy_notify ;
 TYPE_2__ ctx_list ;
 int get_cred (struct cred const*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct vmci_ctx*) ;
 int kref_init (int *) ;
 struct vmci_ctx* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int pr_devel (char*,...) ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ vmci_ctx_exists (scalar_t__) ;
 void* vmci_handle_arr_create (int ,int ) ;
 int vmci_handle_arr_destroy (void*) ;

struct vmci_ctx *vmci_ctx_create(u32 cid, u32 priv_flags,
     uintptr_t event_hnd,
     int user_version,
     const struct cred *cred)
{
 struct vmci_ctx *context;
 int error;

 if (cid == VMCI_INVALID_ID) {
  pr_devel("Invalid context ID for VMCI context\n");
  error = -EINVAL;
  goto err_out;
 }

 if (priv_flags & ~VMCI_PRIVILEGE_ALL_FLAGS) {
  pr_devel("Invalid flag (flags=0x%x) for VMCI context\n",
    priv_flags);
  error = -EINVAL;
  goto err_out;
 }

 if (user_version == 0) {
  pr_devel("Invalid suer_version %d\n", user_version);
  error = -EINVAL;
  goto err_out;
 }

 context = kzalloc(sizeof(*context), GFP_KERNEL);
 if (!context) {
  pr_warn("Failed to allocate memory for VMCI context\n");
  error = -EINVAL;
  goto err_out;
 }

 kref_init(&context->kref);
 spin_lock_init(&context->lock);
 INIT_LIST_HEAD(&context->list_item);
 INIT_LIST_HEAD(&context->datagram_queue);
 INIT_LIST_HEAD(&context->notifier_list);


 init_waitqueue_head(&context->host_context.wait_queue);

 context->queue_pair_array =
  vmci_handle_arr_create(0, VMCI_MAX_GUEST_QP_COUNT);
 if (!context->queue_pair_array) {
  error = -ENOMEM;
  goto err_free_ctx;
 }

 context->doorbell_array =
  vmci_handle_arr_create(0, VMCI_MAX_GUEST_DOORBELL_COUNT);
 if (!context->doorbell_array) {
  error = -ENOMEM;
  goto err_free_qp_array;
 }

 context->pending_doorbell_array =
  vmci_handle_arr_create(0, VMCI_MAX_GUEST_DOORBELL_COUNT);
 if (!context->pending_doorbell_array) {
  error = -ENOMEM;
  goto err_free_db_array;
 }

 context->user_version = user_version;

 context->priv_flags = priv_flags;

 if (cred)
  context->cred = get_cred(cred);

 context->notify = &ctx_dummy_notify;
 context->notify_page = ((void*)0);







 spin_lock(&ctx_list.lock);

 while (vmci_ctx_exists(cid)) {

  cid = max(cid, VMCI_RESERVED_CID_LIMIT - 1) + 1;
  if (cid == VMCI_INVALID_ID)
   cid = VMCI_RESERVED_CID_LIMIT;
 }
 context->cid = cid;

 list_add_tail_rcu(&context->list_item, &ctx_list.head);
 spin_unlock(&ctx_list.lock);

 return context;

 err_free_db_array:
 vmci_handle_arr_destroy(context->doorbell_array);
 err_free_qp_array:
 vmci_handle_arr_destroy(context->queue_pair_array);
 err_free_ctx:
 kfree(context);
 err_out:
 return ERR_PTR(error);
}
