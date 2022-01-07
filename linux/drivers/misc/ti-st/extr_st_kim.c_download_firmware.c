
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kim_data_s {TYPE_2__* fw_entry; int kim_rcvd; int core_data; TYPE_1__* kim_pdev; } ;
struct hci_command {int opcode; } ;
struct bts_header {int dummy; } ;
struct bts_action_send {int data; } ;
struct bts_action_delay {int msec; } ;
struct bts_action {int size; int type; unsigned char* data; } ;
struct TYPE_5__ {long size; int * data; } ;
struct TYPE_4__ {int dev; } ;





 int CMD_RESP_TIME ;
 int CMD_WR_TIME ;
 long EINVAL ;
 long EIO ;
 long ERESTARTSYS ;
 long ETIMEDOUT ;
 unsigned long jiffies ;
 int mdelay (int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 long read_local_version (struct kim_data_s*,unsigned char*) ;
 int reinit_completion (int *) ;
 int release_firmware (TYPE_2__*) ;
 long request_firmware (TYPE_2__**,unsigned char*,int *) ;
 int skip_change_remote_baud (unsigned char**,long*) ;
 int st_get_uart_wr_room (int ) ;
 long st_int_write (int ,int ,int) ;
 int time_after_eq (unsigned long,unsigned long) ;
 int time_before (unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;
 long wait_for_completion_interruptible_timeout (int *,unsigned long) ;

__attribute__((used)) static long download_firmware(struct kim_data_s *kim_gdata)
{
 long err = 0;
 long len = 0;
 unsigned char *ptr = ((void*)0);
 unsigned char *action_ptr = ((void*)0);
 unsigned char bts_scr_name[40] = { 0 };
 int wr_room_space;
 int cmd_size;
 unsigned long timeout;

 err = read_local_version(kim_gdata, bts_scr_name);
 if (err != 0) {
  pr_err("kim: failed to read local ver");
  return err;
 }
 err =
     request_firmware(&kim_gdata->fw_entry, bts_scr_name,
        &kim_gdata->kim_pdev->dev);
 if (unlikely((err != 0) || (kim_gdata->fw_entry->data == ((void*)0)) ||
       (kim_gdata->fw_entry->size == 0))) {
  pr_err(" request_firmware failed(errno %ld) for %s", err,
      bts_scr_name);
  return -EINVAL;
 }
 ptr = (void *)kim_gdata->fw_entry->data;
 len = kim_gdata->fw_entry->size;



 ptr += sizeof(struct bts_header);
 len -= sizeof(struct bts_header);

 while (len > 0 && ptr) {
  pr_debug(" action size %d, type %d ",
      ((struct bts_action *)ptr)->size,
      ((struct bts_action *)ptr)->type);

  switch (((struct bts_action *)ptr)->type) {
  case 129:
   pr_debug("S");
   action_ptr = &(((struct bts_action *)ptr)->data[0]);
   if (unlikely
       (((struct hci_command *)action_ptr)->opcode ==
        0xFF36)) {


    pr_warn("change remote baud"
        " rate command in firmware");
    skip_change_remote_baud(&ptr, &len);
    break;
   }




   cmd_size = ((struct bts_action *)ptr)->size;
   timeout = jiffies + msecs_to_jiffies(CMD_WR_TIME);
   do {
    wr_room_space =
     st_get_uart_wr_room(kim_gdata->core_data);
    if (wr_room_space < 0) {
     pr_err("Unable to get free "
       "space info from uart tx buffer");
     release_firmware(kim_gdata->fw_entry);
     return wr_room_space;
    }
    mdelay(1);
   } while ((wr_room_space < cmd_size) &&
     time_before(jiffies, timeout));


   if (time_after_eq(jiffies, timeout)) {
    pr_err("Timeout while waiting for free "
      "free space in uart tx buffer");
    release_firmware(kim_gdata->fw_entry);
    return -ETIMEDOUT;
   }



   reinit_completion(&kim_gdata->kim_rcvd);






   err = st_int_write(kim_gdata->core_data,
   ((struct bts_action_send *)action_ptr)->data,
        ((struct bts_action *)ptr)->size);
   if (unlikely(err < 0)) {
    release_firmware(kim_gdata->fw_entry);
    return err;
   }




   if (err != cmd_size) {
    pr_err("Number of bytes written to uart "
      "tx buffer are not matching with "
      "requested cmd write size");
    release_firmware(kim_gdata->fw_entry);
    return -EIO;
   }
   break;
  case 128:
   pr_debug("W");
   err = wait_for_completion_interruptible_timeout(
     &kim_gdata->kim_rcvd,
     msecs_to_jiffies(CMD_RESP_TIME));
   if (err <= 0) {
    pr_err("response timeout/signaled during fw download ");

    release_firmware(kim_gdata->fw_entry);
    return err ? -ERESTARTSYS : -ETIMEDOUT;
   }
   reinit_completion(&kim_gdata->kim_rcvd);
   break;
  case 130:
   pr_info("sleep command in scr");
   action_ptr = &(((struct bts_action *)ptr)->data[0]);
   mdelay(((struct bts_action_delay *)action_ptr)->msec);
   break;
  }
  len =
      len - (sizeof(struct bts_action) +
      ((struct bts_action *)ptr)->size);
  ptr =
      ptr + sizeof(struct bts_action) +
      ((struct bts_action *)ptr)->size;
 }

 release_firmware(kim_gdata->fw_entry);
 return 0;
}
