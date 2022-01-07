
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int len; int* msg; } ;
struct meson_ao_cec_g12a_device {TYPE_1__ rx_msg; int adap; int regmap_cec; } ;


 int CECB_LOCK_BUF ;
 scalar_t__ CECB_RX_CNT ;
 scalar_t__ CECB_RX_DATA00 ;
 int CEC_MAX_MSG_SIZE ;
 int cec_received_msg (int ,TYPE_1__*) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void meson_ao_cec_g12a_irq_rx(struct meson_ao_cec_g12a_device *ao_cec)
{
 int i, ret = 0;
 u32 val;

 ret = regmap_read(ao_cec->regmap_cec, CECB_RX_CNT, &val);

 ao_cec->rx_msg.len = val;
 if (ao_cec->rx_msg.len > CEC_MAX_MSG_SIZE)
  ao_cec->rx_msg.len = CEC_MAX_MSG_SIZE;

 for (i = 0; i < ao_cec->rx_msg.len; i++) {
  ret |= regmap_read(ao_cec->regmap_cec,
       CECB_RX_DATA00 + i, &val);

  ao_cec->rx_msg.msg[i] = val & 0xff;
 }

 ret |= regmap_write(ao_cec->regmap_cec, CECB_LOCK_BUF, 0);
 if (ret)
  return;

 cec_received_msg(ao_cec->adap, &ao_cec->rx_msg);
}
