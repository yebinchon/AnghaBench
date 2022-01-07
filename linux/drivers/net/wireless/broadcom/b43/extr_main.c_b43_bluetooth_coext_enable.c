
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ssb_sprom {int boardflags_lo; } ;
struct TYPE_4__ {scalar_t__ type; int gmode; } ;
struct b43_wldev {TYPE_2__ phy; TYPE_1__* dev; } ;
struct TYPE_3__ {struct ssb_sprom* bus_sprom; } ;


 int B43_BFL_BTCMOD ;
 int B43_BFL_BTCOEXIST ;
 int B43_HF_BTCOEX ;
 int B43_HF_BTCOEXALT ;
 scalar_t__ B43_PHYTYPE_B ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int ) ;
 int modparam_btcoex ;

__attribute__((used)) static void b43_bluetooth_coext_enable(struct b43_wldev *dev)
{
 struct ssb_sprom *sprom = dev->dev->bus_sprom;
 u64 hf;

 if (!modparam_btcoex)
  return;
 if (!(sprom->boardflags_lo & B43_BFL_BTCOEXIST))
  return;
 if (dev->phy.type != B43_PHYTYPE_B && !dev->phy.gmode)
  return;

 hf = b43_hf_read(dev);
 if (sprom->boardflags_lo & B43_BFL_BTCMOD)
  hf |= B43_HF_BTCOEXALT;
 else
  hf |= B43_HF_BTCOEX;
 b43_hf_write(dev, hf);
}
