
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ssb_sprom {int il0mac; int et1mac; } ;
struct brcms_hardware {int _nbands; TYPE_2__* d11core; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {struct ssb_sprom sprom; } ;


 int ETH_ALEN ;
 int is_zero_ether_addr (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void brcms_c_get_macaddr(struct brcms_hardware *wlc_hw, u8 etheraddr[ETH_ALEN])
{
 struct ssb_sprom *sprom = &wlc_hw->d11core->bus->sprom;


 if (!is_zero_ether_addr(sprom->il0mac)) {
  memcpy(etheraddr, sprom->il0mac, ETH_ALEN);
  return;
 }

 if (wlc_hw->_nbands > 1)
  memcpy(etheraddr, sprom->et1mac, ETH_ALEN);
 else
  memcpy(etheraddr, sprom->il0mac, ETH_ALEN);
}
