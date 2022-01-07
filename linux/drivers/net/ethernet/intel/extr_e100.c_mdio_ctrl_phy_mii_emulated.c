
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct nic {int netdev; } ;


 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMSR_10FULL ;
 int BMSR_ANEGCAPABLE ;
 int BMSR_LSTATUS ;
 int KERN_DEBUG ;



 int hw ;
 scalar_t__ mdi_read ;
 int netif_printk (struct nic*,int ,int ,int ,char*,char*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static u16 mdio_ctrl_phy_mii_emulated(struct nic *nic,
          u32 addr,
          u32 dir,
          u32 reg,
          u16 data)
{




 if (dir == mdi_read) {
  switch (reg) {
  case 129:

   return BMCR_ANENABLE |
    BMCR_FULLDPLX;
  case 128:
   return BMSR_LSTATUS |
    BMSR_ANEGCAPABLE |
    BMSR_10FULL;
  case 130:

   return ADVERTISE_10HALF |
    ADVERTISE_10FULL;
  default:
   netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
         "%s:addr=%d, reg=%d, data=0x%04X: unimplemented emulation!\n",
         dir == mdi_read ? "READ" : "WRITE",
         addr, reg, data);
   return 0xFFFF;
  }
 } else {
  switch (reg) {
  default:
   netif_printk(nic, hw, KERN_DEBUG, nic->netdev,
         "%s:addr=%d, reg=%d, data=0x%04X: unimplemented emulation!\n",
         dir == mdi_read ? "READ" : "WRITE",
         addr, reg, data);
   return 0xFFFF;
  }
 }
}
