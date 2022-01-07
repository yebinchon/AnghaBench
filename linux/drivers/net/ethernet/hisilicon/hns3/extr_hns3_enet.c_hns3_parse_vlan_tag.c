
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pci_dev {int revision; } ;
struct hns3_enet_ring {TYPE_1__* tqp; } ;
struct TYPE_4__ {int vlan_tag; int ot_vlan_tag; } ;
struct hns3_desc {TYPE_2__ rx; } ;
struct hnae3_handle {int port_base_vlan_state; struct pci_dev* pdev; } ;
struct TYPE_3__ {struct hnae3_handle* handle; } ;


 int HNAE3_PORT_BASE_VLAN_DISABLE ;
 int HNS3_RXD_STRP_TAGP_M ;
 int HNS3_RXD_STRP_TAGP_S ;



 int VLAN_VID_MASK ;
 int hnae3_get_field (int ,int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static bool hns3_parse_vlan_tag(struct hns3_enet_ring *ring,
    struct hns3_desc *desc, u32 l234info,
    u16 *vlan_tag)
{
 struct hnae3_handle *handle = ring->tqp->handle;
 struct pci_dev *pdev = ring->tqp->handle->pdev;

 if (pdev->revision == 0x20) {
  *vlan_tag = le16_to_cpu(desc->rx.ot_vlan_tag);
  if (!(*vlan_tag & VLAN_VID_MASK))
   *vlan_tag = le16_to_cpu(desc->rx.vlan_tag);

  return (*vlan_tag != 0);
 }
 switch (hnae3_get_field(l234info, HNS3_RXD_STRP_TAGP_M,
    HNS3_RXD_STRP_TAGP_S)) {
 case 0x1:
  if (handle->port_base_vlan_state !=
    HNAE3_PORT_BASE_VLAN_DISABLE)
   return 0;

  *vlan_tag = le16_to_cpu(desc->rx.ot_vlan_tag);
  return 1;
 case 0x2:
  if (handle->port_base_vlan_state !=
    HNAE3_PORT_BASE_VLAN_DISABLE)
   return 0;

  *vlan_tag = le16_to_cpu(desc->rx.vlan_tag);
  return 1;
 case 0x3:
  if (handle->port_base_vlan_state ==
    HNAE3_PORT_BASE_VLAN_DISABLE)
   *vlan_tag = le16_to_cpu(desc->rx.ot_vlan_tag);
  else
   *vlan_tag = le16_to_cpu(desc->rx.vlan_tag);

  return 1;
 default:
  return 0;
 }
}
