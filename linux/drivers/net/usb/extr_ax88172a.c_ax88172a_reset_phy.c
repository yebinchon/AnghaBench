
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int AX_SWRESET_CLEAR ;
 int AX_SWRESET_IPPD ;
 int AX_SWRESET_IPRL ;
 int asix_sw_reset (struct usbnet*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static int ax88172a_reset_phy(struct usbnet *dev, int embd_phy)
{
 int ret;

 ret = asix_sw_reset(dev, AX_SWRESET_IPPD, 0);
 if (ret < 0)
  goto err;

 msleep(150);
 ret = asix_sw_reset(dev, AX_SWRESET_CLEAR, 0);
 if (ret < 0)
  goto err;

 msleep(150);

 ret = asix_sw_reset(dev, embd_phy ? AX_SWRESET_IPRL : AX_SWRESET_IPPD,
       0);
 if (ret < 0)
  goto err;

 return 0;

err:
 return ret;
}
