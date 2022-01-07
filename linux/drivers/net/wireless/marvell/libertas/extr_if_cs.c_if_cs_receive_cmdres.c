
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct lbs_private {int driver_lock; int dnld_sent; int card; int dev; } ;


 int DNLD_RES_RECEIVED ;
 int IF_CS_BIT_RESP ;
 int IF_CS_CARD_STATUS ;
 int IF_CS_RESP ;
 int IF_CS_RESP_LEN ;
 int LBS_CMD_BUFFER_SIZE ;
 void* if_cs_read16 (int ,int ) ;
 int if_cs_read16_rep (int ,int ,int *,int) ;
 int if_cs_read8 (int ,int ) ;
 int netdev_err (int ,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int if_cs_receive_cmdres(struct lbs_private *priv, u8 *data, u32 *len)
{
 unsigned long flags;
 int ret = -1;
 u16 status;


 status = if_cs_read16(priv->card, IF_CS_CARD_STATUS);
 if ((status & IF_CS_BIT_RESP) == 0) {
  netdev_err(priv->dev, "no cmd response in card\n");
  *len = 0;
  goto out;
 }

 *len = if_cs_read16(priv->card, IF_CS_RESP_LEN);
 if ((*len == 0) || (*len > LBS_CMD_BUFFER_SIZE)) {
  netdev_err(priv->dev,
      "card cmd buffer has invalid # of bytes (%d)\n",
      *len);
  goto out;
 }


 if_cs_read16_rep(priv->card, IF_CS_RESP, data, *len/sizeof(u16));
 if (*len & 1)
  data[*len-1] = if_cs_read8(priv->card, IF_CS_RESP);



 *len -= 8;
 ret = 0;


 spin_lock_irqsave(&priv->driver_lock, flags);
 priv->dnld_sent = DNLD_RES_RECEIVED;
 spin_unlock_irqrestore(&priv->driver_lock, flags);

out:
 return ret;
}
