
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_usb_card {struct bootcmd* ep_out_buf; } ;
struct bootcmd {int cmd; int pad; int magic; } ;


 int BOOT_CMD_MAGIC_NUMBER ;
 int cpu_to_le32 (int ) ;
 int memset (int ,int ,int) ;
 int usb_tx_block (struct if_usb_card*,struct bootcmd*,int) ;

__attribute__((used)) static int if_usb_issue_boot_command(struct if_usb_card *cardp, int ivalue)
{
 struct bootcmd *bootcmd = cardp->ep_out_buf;


 bootcmd->magic = cpu_to_le32(BOOT_CMD_MAGIC_NUMBER);
 bootcmd->cmd = ivalue;
 memset(bootcmd->pad, 0, sizeof(bootcmd->pad));


 usb_tx_block(cardp, cardp->ep_out_buf, sizeof(*bootcmd));

 return 0;
}
