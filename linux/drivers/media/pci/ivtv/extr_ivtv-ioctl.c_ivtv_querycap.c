
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int bus_info; int card; int driver; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int v4l2_cap; int pdev; int card_name; } ;
struct file {int private_data; } ;


 int IVTV_DRIVER_NAME ;
 int V4L2_CAP_DEVICE_CAPS ;
 struct ivtv_open_id* fh2id (int ) ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int ivtv_querycap(struct file *file, void *fh, struct v4l2_capability *vcap)
{
 struct ivtv_open_id *id = fh2id(file->private_data);
 struct ivtv *itv = id->itv;

 strscpy(vcap->driver, IVTV_DRIVER_NAME, sizeof(vcap->driver));
 strscpy(vcap->card, itv->card_name, sizeof(vcap->card));
 snprintf(vcap->bus_info, sizeof(vcap->bus_info), "PCI:%s", pci_name(itv->pdev));
 vcap->capabilities = itv->v4l2_cap | V4L2_CAP_DEVICE_CAPS;
 return 0;
}
