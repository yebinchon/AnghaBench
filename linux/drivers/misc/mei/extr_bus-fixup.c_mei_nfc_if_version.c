
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_nfc_reply {int data; } ;
struct mei_nfc_if_version {int radio_type; int vendor_id; int fw_ivn; } ;
struct mei_nfc_cmd {int data_size; int sub_command; int command; } ;
struct mei_device {int dev; int device_lock; } ;
struct mei_cl {struct mei_device* dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MEI_CL_IO_TX_BLOCKING ;
 int MEI_NFC_CMD_MAINTENANCE ;
 int MEI_NFC_SUBCMD_IF_VERSION ;
 int WARN_ON (int ) ;
 int __mei_cl_recv (struct mei_cl*,int *,size_t,int ,int ) ;
 int __mei_cl_send (struct mei_cl*,int *,int,int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ,int ) ;
 int kfree (struct mei_nfc_reply*) ;
 struct mei_nfc_reply* kzalloc (size_t,int ) ;
 int memcpy (struct mei_nfc_if_version*,int ,int) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static int mei_nfc_if_version(struct mei_cl *cl,
         struct mei_nfc_if_version *ver)
{
 struct mei_device *bus;
 struct mei_nfc_cmd cmd = {
  .command = MEI_NFC_CMD_MAINTENANCE,
  .data_size = 1,
  .sub_command = MEI_NFC_SUBCMD_IF_VERSION,
 };
 struct mei_nfc_reply *reply = ((void*)0);
 size_t if_version_length;
 int bytes_recv, ret;

 bus = cl->dev;

 WARN_ON(mutex_is_locked(&bus->device_lock));

 ret = __mei_cl_send(cl, (u8 *)&cmd, sizeof(struct mei_nfc_cmd),
       MEI_CL_IO_TX_BLOCKING);
 if (ret < 0) {
  dev_err(bus->dev, "Could not send IF version cmd\n");
  return ret;
 }


 if_version_length = sizeof(struct mei_nfc_reply) +
  sizeof(struct mei_nfc_if_version);

 reply = kzalloc(if_version_length, GFP_KERNEL);
 if (!reply)
  return -ENOMEM;

 ret = 0;
 bytes_recv = __mei_cl_recv(cl, (u8 *)reply, if_version_length, 0, 0);
 if (bytes_recv < 0 || (size_t)bytes_recv < if_version_length) {
  dev_err(bus->dev, "Could not read IF version\n");
  ret = -EIO;
  goto err;
 }

 memcpy(ver, reply->data, sizeof(struct mei_nfc_if_version));

 dev_info(bus->dev, "NFC MEI VERSION: IVN 0x%x Vendor ID 0x%x Type 0x%x\n",
  ver->fw_ivn, ver->vendor_id, ver->radio_type);

err:
 kfree(reply);
 return ret;
}
