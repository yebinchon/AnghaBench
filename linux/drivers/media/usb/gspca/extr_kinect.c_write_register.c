
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct gspca_dev {int dummy; } ;
typedef int __le16 ;


 int D_USBO ;
 int cpu_to_le16 (int ) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int pr_warn (char*,int,int ,int ) ;
 int send_cmd (struct gspca_dev*,int,int *,int,int *,int) ;

__attribute__((used)) static int write_register(struct gspca_dev *gspca_dev, uint16_t reg,
   uint16_t data)
{
 uint16_t reply[2];
 __le16 cmd[2];
 int res;

 cmd[0] = cpu_to_le16(reg);
 cmd[1] = cpu_to_le16(data);

 gspca_dbg(gspca_dev, D_USBO, "Write Reg 0x%04x <= 0x%02x\n", reg, data);
 res = send_cmd(gspca_dev, 0x03, cmd, 4, reply, 4);
 if (res < 0)
  return res;
 if (res != 2) {
  pr_warn("send_cmd returned %d [%04x %04x], 0000 expected\n",
   res, reply[0], reply[1]);
 }
 return 0;
}
