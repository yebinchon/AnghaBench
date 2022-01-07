
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_usb_pipe {int urb_alloc; int usb_pipe_handle; int logical_pipe_num; int urb_submitted; int urb_list_head; } ;
struct ath10k_urb_context {struct ath10k_usb_pipe* pipe; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_USB ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ) ;
 int ath10k_usb_free_urb_to_pipe (struct ath10k_usb_pipe*,struct ath10k_urb_context*) ;
 int init_usb_anchor (int *) ;
 struct ath10k_urb_context* kzalloc (int,int ) ;

__attribute__((used)) static int ath10k_usb_alloc_pipe_resources(struct ath10k *ar,
        struct ath10k_usb_pipe *pipe,
        int urb_cnt)
{
 struct ath10k_urb_context *urb_context;
 int i;

 INIT_LIST_HEAD(&pipe->urb_list_head);
 init_usb_anchor(&pipe->urb_submitted);

 for (i = 0; i < urb_cnt; i++) {
  urb_context = kzalloc(sizeof(*urb_context), GFP_KERNEL);
  if (!urb_context)
   return -ENOMEM;

  urb_context->pipe = pipe;




  pipe->urb_alloc++;
  ath10k_usb_free_urb_to_pipe(pipe, urb_context);
 }

 ath10k_dbg(ar, ATH10K_DBG_USB,
     "usb alloc resources lpipe %d hpipe 0x%x urbs %d\n",
     pipe->logical_pipe_num, pipe->usb_pipe_handle,
     pipe->urb_alloc);

 return 0;
}
