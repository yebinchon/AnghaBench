
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cx88_core {scalar_t__ i2c_rc; int v4l2_dev; int audio_hdl; int video_hdl; int lmmio; int devlist; int i2c_adap; scalar_t__ i2c_rtc; int refcount; } ;


 int cx88_devcount ;
 int cx88_ir_fini (struct cx88_core*) ;
 int devlist ;
 int i2c_del_adapter (int *) ;
 int i2c_unregister_device (scalar_t__) ;
 int iounmap (int ) ;
 int kfree (struct cx88_core*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int refcount_dec_and_test (int *) ;
 int release_mem_region (int ,int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;

void cx88_core_put(struct cx88_core *core, struct pci_dev *pci)
{
 release_mem_region(pci_resource_start(pci, 0),
      pci_resource_len(pci, 0));

 if (!refcount_dec_and_test(&core->refcount))
  return;

 mutex_lock(&devlist);
 cx88_ir_fini(core);
 if (core->i2c_rc == 0) {
  if (core->i2c_rtc)
   i2c_unregister_device(core->i2c_rtc);
  i2c_del_adapter(&core->i2c_adap);
 }
 list_del(&core->devlist);
 iounmap(core->lmmio);
 cx88_devcount--;
 mutex_unlock(&devlist);
 v4l2_ctrl_handler_free(&core->video_hdl);
 v4l2_ctrl_handler_free(&core->audio_hdl);
 v4l2_device_unregister(&core->v4l2_dev);
 kfree(core);
}
