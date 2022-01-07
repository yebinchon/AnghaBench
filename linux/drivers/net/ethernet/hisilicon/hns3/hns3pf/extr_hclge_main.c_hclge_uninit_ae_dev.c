
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_ae_dev {struct hclge_dev* priv; } ;
struct hclge_mac {int mdio_bus; scalar_t__ phydev; } ;
struct TYPE_4__ {int vector_irq; } ;
struct TYPE_3__ {struct hclge_mac mac; } ;
struct hclge_dev {int vport_cfg_mutex; int vport_lock; TYPE_2__ misc_vector; TYPE_1__ hw; } ;


 int hclge_cmd_uninit (struct hclge_dev*) ;
 int hclge_config_mac_tnl_int (struct hclge_dev*,int) ;
 int hclge_config_nic_hw_error (struct hclge_dev*,int) ;
 int hclge_config_rocee_ras_interrupt (struct hclge_dev*,int) ;
 int hclge_enable_vector (TYPE_2__*,int) ;
 int hclge_misc_affinity_teardown (struct hclge_dev*) ;
 int hclge_misc_irq_uninit (struct hclge_dev*) ;
 int hclge_pci_uninit (struct hclge_dev*) ;
 int hclge_state_uninit (struct hclge_dev*) ;
 int hclge_uninit_umv_space (struct hclge_dev*) ;
 int hclge_uninit_vport_mac_table (struct hclge_dev*) ;
 int hclge_uninit_vport_vlan_table (struct hclge_dev*) ;
 int mdiobus_unregister (int ) ;
 int mutex_destroy (int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void hclge_uninit_ae_dev(struct hnae3_ae_dev *ae_dev)
{
 struct hclge_dev *hdev = ae_dev->priv;
 struct hclge_mac *mac = &hdev->hw.mac;

 hclge_misc_affinity_teardown(hdev);
 hclge_state_uninit(hdev);

 if (mac->phydev)
  mdiobus_unregister(mac->mdio_bus);

 hclge_uninit_umv_space(hdev);


 hclge_enable_vector(&hdev->misc_vector, 0);
 synchronize_irq(hdev->misc_vector.vector_irq);


 hclge_config_mac_tnl_int(hdev, 0);
 hclge_config_nic_hw_error(hdev, 0);
 hclge_config_rocee_ras_interrupt(hdev, 0);

 hclge_cmd_uninit(hdev);
 hclge_misc_irq_uninit(hdev);
 hclge_pci_uninit(hdev);
 mutex_destroy(&hdev->vport_lock);
 hclge_uninit_vport_mac_table(hdev);
 hclge_uninit_vport_vlan_table(hdev);
 mutex_destroy(&hdev->vport_cfg_mutex);
 ae_dev->priv = ((void*)0);
}
