
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct meson_ao_cec_g12a_device {int regmap_cec; } ;
struct cec_msg {int len; int* msg; } ;
struct cec_adapter {struct meson_ao_cec_g12a_device* priv; } ;


 int CECB_CTRL ;
 int CECB_CTRL_SEND ;
 int CECB_CTRL_TYPE ;
 unsigned int CECB_CTRL_TYPE_NEW ;
 unsigned int CECB_CTRL_TYPE_NEXT ;
 unsigned int CECB_CTRL_TYPE_RETRY ;
 int CECB_LOCK_BUF ;
 int CECB_LOCK_BUF_EN ;
 scalar_t__ CECB_TX_CNT ;
 scalar_t__ CECB_TX_DATA00 ;



 int EBUSY ;
 int EIO ;
 int FIELD_PREP (int,unsigned int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,scalar_t__,int) ;

__attribute__((used)) static int meson_ao_cec_g12a_transmit(struct cec_adapter *adap, u8 attempts,
     u32 signal_free_time, struct cec_msg *msg)
{
 struct meson_ao_cec_g12a_device *ao_cec = adap->priv;
 unsigned int type;
 int ret = 0;
 u32 val;
 int i;


 ret = regmap_read(ao_cec->regmap_cec, CECB_LOCK_BUF, &val);
 if (ret)
  return ret;
 if (val & CECB_LOCK_BUF_EN)
  return -EBUSY;


 ret = regmap_read(ao_cec->regmap_cec, CECB_CTRL, &val);
 if (ret)
  return ret;
 if (val & CECB_CTRL_SEND)
  return -EBUSY;

 switch (signal_free_time) {
 case 128:
  type = CECB_CTRL_TYPE_RETRY;
  break;
 case 129:
  type = CECB_CTRL_TYPE_NEXT;
  break;
 case 130:
 default:
  type = CECB_CTRL_TYPE_NEW;
  break;
 }

 for (i = 0; i < msg->len; i++)
  ret |= regmap_write(ao_cec->regmap_cec, CECB_TX_DATA00 + i,
        msg->msg[i]);

 ret |= regmap_write(ao_cec->regmap_cec, CECB_TX_CNT, msg->len);
 if (ret)
  return -EIO;

 ret = regmap_update_bits(ao_cec->regmap_cec, CECB_CTRL,
     CECB_CTRL_SEND |
     CECB_CTRL_TYPE,
     CECB_CTRL_SEND |
     FIELD_PREP(CECB_CTRL_TYPE, type));

 return ret;
}
