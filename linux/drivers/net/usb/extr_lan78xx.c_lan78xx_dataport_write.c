
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan78xx_priv {int dataport_mutex; } ;
struct lan78xx_net {int intf; scalar_t__* data; } ;


 int DP_ADDR ;
 int DP_CMD ;
 int DP_CMD_WRITE_ ;
 int DP_DATA ;
 int DP_SEL ;
 int DP_SEL_RSEL_MASK_ ;
 int lan78xx_dataport_wait_not_busy (struct lan78xx_net*) ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lan78xx_dataport_write(struct lan78xx_net *dev, u32 ram_select,
      u32 addr, u32 length, u32 *buf)
{
 struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);
 u32 dp_sel;
 int i, ret;

 if (usb_autopm_get_interface(dev->intf) < 0)
   return 0;

 mutex_lock(&pdata->dataport_mutex);

 ret = lan78xx_dataport_wait_not_busy(dev);
 if (ret < 0)
  goto done;

 ret = lan78xx_read_reg(dev, DP_SEL, &dp_sel);

 dp_sel &= ~DP_SEL_RSEL_MASK_;
 dp_sel |= ram_select;
 ret = lan78xx_write_reg(dev, DP_SEL, dp_sel);

 for (i = 0; i < length; i++) {
  ret = lan78xx_write_reg(dev, DP_ADDR, addr + i);

  ret = lan78xx_write_reg(dev, DP_DATA, buf[i]);

  ret = lan78xx_write_reg(dev, DP_CMD, DP_CMD_WRITE_);

  ret = lan78xx_dataport_wait_not_busy(dev);
  if (ret < 0)
   goto done;
 }

done:
 mutex_unlock(&pdata->dataport_mutex);
 usb_autopm_put_interface(dev->intf);

 return ret;
}
