
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {int dummy; } ;


 int DVB_CA_EN50221_POLL_CAM_PRESENT ;
 int DVB_CA_EN50221_POLL_CAM_READY ;
 int EINVAL ;
 int TT3650_CMD_CI_TEST ;
 int tt3650_ci_msg_locked (struct dvb_ca_en50221*,int ,int*,int ,int) ;

__attribute__((used)) static int tt3650_ci_poll_slot_status(struct dvb_ca_en50221 *ca, int slot, int open)
{
 u8 buf[1];
 int ret;

 if (slot)
  return -EINVAL;

 ret = tt3650_ci_msg_locked(ca, TT3650_CMD_CI_TEST, buf, 0, 1);
 if (ret)
  return ret;

 if (1 == buf[0]) {
  return DVB_CA_EN50221_POLL_CAM_PRESENT |
   DVB_CA_EN50221_POLL_CAM_READY;
 }
 return 0;
}
