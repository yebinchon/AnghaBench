
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee1394_device_id {int dummy; } ;
struct fw_unit {int device; int directory; } ;
struct firedtv {int isochannel; int voltage; int tone; int type; int list; int remote_ctrl_work; int demux_mutex; int avc_wait; int avc_mutex; int * device; } ;
typedef int name ;


 int ARRAY_SIZE (int *) ;
 int CSR_MODEL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int MAX_MODEL_NAME_LEN ;
 int avc_identify_subunit (struct firedtv*) ;
 int avc_register_remote_control (struct firedtv*) ;
 int avc_remote_ctrl_work ;
 int dev_set_drvdata (int *,struct firedtv*) ;
 int fdtv_dvb_register (struct firedtv*,int ) ;
 int fdtv_register_rc (struct firedtv*,int *) ;
 int fdtv_unregister_rc (struct firedtv*) ;
 int fw_csr_string (int ,int ,char*,int) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct firedtv*) ;
 struct firedtv* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int * model_names ;
 int mutex_init (int *) ;
 int node_list ;
 int node_list_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int node_probe(struct fw_unit *unit, const struct ieee1394_device_id *id)
{
 struct firedtv *fdtv;
 char name[MAX_MODEL_NAME_LEN];
 int name_len, i, err;

 fdtv = kzalloc(sizeof(*fdtv), GFP_KERNEL);
 if (!fdtv)
  return -ENOMEM;

 dev_set_drvdata(&unit->device, fdtv);
 fdtv->device = &unit->device;
 fdtv->isochannel = -1;
 fdtv->voltage = 0xff;
 fdtv->tone = 0xff;

 mutex_init(&fdtv->avc_mutex);
 init_waitqueue_head(&fdtv->avc_wait);
 mutex_init(&fdtv->demux_mutex);
 INIT_WORK(&fdtv->remote_ctrl_work, avc_remote_ctrl_work);

 name_len = fw_csr_string(unit->directory, CSR_MODEL,
     name, sizeof(name));
 for (i = ARRAY_SIZE(model_names); --i; )
  if (strlen(model_names[i]) <= name_len &&
      strncmp(name, model_names[i], name_len) == 0)
   break;
 fdtv->type = i;

 err = fdtv_register_rc(fdtv, &unit->device);
 if (err)
  goto fail_free;

 spin_lock_irq(&node_list_lock);
 list_add_tail(&fdtv->list, &node_list);
 spin_unlock_irq(&node_list_lock);

 err = avc_identify_subunit(fdtv);
 if (err)
  goto fail;

 err = fdtv_dvb_register(fdtv, model_names[fdtv->type]);
 if (err)
  goto fail;

 avc_register_remote_control(fdtv);

 return 0;
fail:
 spin_lock_irq(&node_list_lock);
 list_del(&fdtv->list);
 spin_unlock_irq(&node_list_lock);
 fdtv_unregister_rc(fdtv);
fail_free:
 kfree(fdtv);

 return err;
}
