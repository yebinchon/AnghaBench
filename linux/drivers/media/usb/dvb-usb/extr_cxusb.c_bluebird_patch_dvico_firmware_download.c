
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int idProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct firmware {int size; int* data; } ;


 int ARRAY_SIZE (int*) ;
 int CYPRESS_FX2 ;
 int EINVAL ;
 int ENOMEM ;
 int USB_VID_DVICO ;
 int* dvico_firmware_id_offsets ;
 int le16_to_cpu (int ) ;
 int memcpy (int*,int*,int) ;
 int usb_cypress_load_firmware (struct usb_device*,struct firmware*,int ) ;
 int vfree (int*) ;
 int* vmalloc (int) ;

__attribute__((used)) static int bluebird_patch_dvico_firmware_download(struct usb_device *udev,
        const struct firmware *fw)
{
 int pos;

 for (pos = 0; pos < ARRAY_SIZE(dvico_firmware_id_offsets); pos++) {
  int idoff = dvico_firmware_id_offsets[pos];

  if (fw->size < idoff + 4)
   continue;

  if (fw->data[idoff] == (USB_VID_DVICO & 0xff) &&
      fw->data[idoff + 1] == USB_VID_DVICO >> 8) {
   struct firmware new_fw;
   u8 *new_fw_data = vmalloc(fw->size);
   int ret;

   if (!new_fw_data)
    return -ENOMEM;

   memcpy(new_fw_data, fw->data, fw->size);
   new_fw.size = fw->size;
   new_fw.data = new_fw_data;

   new_fw_data[idoff + 2] =
    le16_to_cpu(udev->descriptor.idProduct) + 1;
   new_fw_data[idoff + 3] =
    le16_to_cpu(udev->descriptor.idProduct) >> 8;

   ret = usb_cypress_load_firmware(udev, &new_fw,
       CYPRESS_FX2);
   vfree(new_fw_data);
   return ret;
  }
 }

 return -EINVAL;
}
