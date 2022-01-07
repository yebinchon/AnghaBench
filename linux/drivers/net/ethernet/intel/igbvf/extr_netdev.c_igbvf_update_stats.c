
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_6__ {int mprc; } ;
struct e1000_hw {int dummy; } ;
struct igbvf_adapter {scalar_t__ link_speed; TYPE_3__ stats; TYPE_2__* netdev; int state; struct pci_dev* pdev; struct e1000_hw hw; } ;
struct TYPE_4__ {int multicast; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int UPDATE_VF_COUNTER (int ,int ) ;
 int VFGORC ;
 int VFGORLBC ;
 int VFGOTC ;
 int VFGOTLBC ;
 int VFGPRC ;
 int VFGPRLBC ;
 int VFGPTC ;
 int VFGPTLBC ;
 int VFMPRC ;
 int __IGBVF_RESETTING ;
 int gorc ;
 int gorlbc ;
 int gotc ;
 int gotlbc ;
 int gprc ;
 int gprlbc ;
 int gptc ;
 int gptlbc ;
 int mprc ;
 scalar_t__ pci_channel_offline (struct pci_dev*) ;
 scalar_t__ test_bit (int ,int *) ;

void igbvf_update_stats(struct igbvf_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct pci_dev *pdev = adapter->pdev;




 if (adapter->link_speed == 0)
  return;

 if (test_bit(__IGBVF_RESETTING, &adapter->state))
  return;

 if (pci_channel_offline(pdev))
  return;

 UPDATE_VF_COUNTER(VFGPRC, gprc);
 UPDATE_VF_COUNTER(VFGORC, gorc);
 UPDATE_VF_COUNTER(VFGPTC, gptc);
 UPDATE_VF_COUNTER(VFGOTC, gotc);
 UPDATE_VF_COUNTER(VFMPRC, mprc);
 UPDATE_VF_COUNTER(VFGOTLBC, gotlbc);
 UPDATE_VF_COUNTER(VFGPTLBC, gptlbc);
 UPDATE_VF_COUNTER(VFGORLBC, gorlbc);
 UPDATE_VF_COUNTER(VFGPRLBC, gprlbc);


 adapter->netdev->stats.multicast = adapter->stats.mprc;
}
