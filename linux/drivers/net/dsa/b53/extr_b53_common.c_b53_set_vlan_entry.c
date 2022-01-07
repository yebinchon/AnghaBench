
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct b53_vlan {int members; int untag; } ;
struct b53_device {int core_rev; TYPE_1__* ds; int * vta_regs; } ;
struct TYPE_2__ {int dev; } ;


 int B53_ARLIO_PAGE ;
 int B53_VLAN_PAGE ;
 int B53_VLAN_TABLE_ACCESS_25 ;
 int B53_VLAN_TABLE_ACCESS_65 ;
 int B53_VLAN_WRITE_25 ;
 int B53_VLAN_WRITE_65 ;
 int VA_UNTAG_MASK_25 ;
 int VA_UNTAG_MASK_65 ;
 int VA_UNTAG_S_25 ;
 int VA_UNTAG_S_65 ;
 int VA_VALID_25 ;
 int VA_VALID_25_R4 ;
 int VA_VALID_65 ;
 int VA_VID_HIGH_S ;
 int VTA_CMD_WRITE ;
 int VTA_RW_OP_EN ;
 int VTA_RW_STATE_WR ;
 int VTE_UNTAG_S ;
 int b53_do_vlan_op (struct b53_device*,int ) ;
 int b53_write16 (struct b53_device*,int ,int ,int) ;
 int b53_write32 (struct b53_device*,int ,int ,int) ;
 int dev_dbg (int ,char*,int,int,int) ;
 scalar_t__ is5325 (struct b53_device*) ;
 scalar_t__ is5365 (struct b53_device*) ;

__attribute__((used)) static void b53_set_vlan_entry(struct b53_device *dev, u16 vid,
          struct b53_vlan *vlan)
{
 if (is5325(dev)) {
  u32 entry = 0;

  if (vlan->members) {
   entry = ((vlan->untag & VA_UNTAG_MASK_25) <<
     VA_UNTAG_S_25) | vlan->members;
   if (dev->core_rev >= 3)
    entry |= VA_VALID_25_R4 | vid << VA_VID_HIGH_S;
   else
    entry |= VA_VALID_25;
  }

  b53_write32(dev, B53_VLAN_PAGE, B53_VLAN_WRITE_25, entry);
  b53_write16(dev, B53_VLAN_PAGE, B53_VLAN_TABLE_ACCESS_25, vid |
       VTA_RW_STATE_WR | VTA_RW_OP_EN);
 } else if (is5365(dev)) {
  u16 entry = 0;

  if (vlan->members)
   entry = ((vlan->untag & VA_UNTAG_MASK_65) <<
     VA_UNTAG_S_65) | vlan->members | VA_VALID_65;

  b53_write16(dev, B53_VLAN_PAGE, B53_VLAN_WRITE_65, entry);
  b53_write16(dev, B53_VLAN_PAGE, B53_VLAN_TABLE_ACCESS_65, vid |
       VTA_RW_STATE_WR | VTA_RW_OP_EN);
 } else {
  b53_write16(dev, B53_ARLIO_PAGE, dev->vta_regs[1], vid);
  b53_write32(dev, B53_ARLIO_PAGE, dev->vta_regs[2],
       (vlan->untag << VTE_UNTAG_S) | vlan->members);

  b53_do_vlan_op(dev, VTA_CMD_WRITE);
 }

 dev_dbg(dev->ds->dev, "VID: %d, members: 0x%04x, untag: 0x%04x\n",
  vid, vlan->members, vlan->untag);
}
