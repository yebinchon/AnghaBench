
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;


 int HFA384X_OUTW (int,int ) ;
 int HFA384X_PCICOR_OFF ;
 int HFA384X_PCIHCR_OFF ;
 int mdelay (int) ;

__attribute__((used)) static void prism2_pci_genesis_reset(local_info_t *local, int hcr)
{
 struct net_device *dev = local->dev;

 HFA384X_OUTW(0x00C5, HFA384X_PCICOR_OFF);
 mdelay(10);
 HFA384X_OUTW(hcr, HFA384X_PCIHCR_OFF);
 mdelay(10);
 HFA384X_OUTW(0x0045, HFA384X_PCICOR_OFF);
 mdelay(10);
}
