
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dev; } ;
struct urb {int status; struct usb_device* dev; struct s2255_fw* context; } ;
struct s2255_fw {int fw_loaded; int fw_size; int fw_state; int wait_fw; int * fw_urb; int pfw_data; TYPE_1__* fw; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int CHUNK_SIZE ;
 int GFP_ATOMIC ;
 int S2255_FW_FAILED ;
 int S2255_FW_LOADED_DSPWAIT ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,...) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 int s2255_dev_err (int *,char*) ;
 int usb_fill_bulk_urb (int *,struct usb_device*,int ,int ,int,void (*) (struct urb*),struct s2255_fw*) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;
 scalar_t__ usb_submit_urb (int *,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void s2255_fwchunk_complete(struct urb *urb)
{
 struct s2255_fw *data = urb->context;
 struct usb_device *udev = urb->dev;
 int len;
 if (urb->status) {
  dev_err(&udev->dev, "URB failed with status %d\n", urb->status);
  atomic_set(&data->fw_state, S2255_FW_FAILED);

  wake_up(&data->wait_fw);
  return;
 }
 if (data->fw_urb == ((void*)0)) {
  s2255_dev_err(&udev->dev, "disconnected\n");
  atomic_set(&data->fw_state, S2255_FW_FAILED);

  wake_up(&data->wait_fw);
  return;
 }





 if (data->fw_loaded < data->fw_size) {
  len = (data->fw_loaded + 512) > data->fw_size ?
      data->fw_size % 512 : 512;

  if (len < 512)
   memset(data->pfw_data, 0, 512);

  memcpy(data->pfw_data,
         (char *) data->fw->data + data->fw_loaded, len);

  usb_fill_bulk_urb(data->fw_urb, udev, usb_sndbulkpipe(udev, 2),
      data->pfw_data, 512,
      s2255_fwchunk_complete, data);
  if (usb_submit_urb(data->fw_urb, GFP_ATOMIC) < 0) {
   dev_err(&udev->dev, "failed submit URB\n");
   atomic_set(&data->fw_state, S2255_FW_FAILED);

   wake_up(&data->wait_fw);
   return;
  }
  data->fw_loaded += len;
 } else
  atomic_set(&data->fw_state, S2255_FW_LOADED_DSPWAIT);
 return;

}
