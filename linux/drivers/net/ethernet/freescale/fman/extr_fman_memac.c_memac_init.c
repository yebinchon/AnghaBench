
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct memac_cfg {int max_frame_length; struct fixed_phy_status* fixed_link; scalar_t__ reset_on_init; } ;
struct TYPE_7__ {int major; int minor; } ;
struct fman_mac {scalar_t__ phy_if; struct memac_cfg* memac_drv_param; int mac_id; int fm; void* unicast_addr_hash; void* multicast_addr_hash; TYPE_3__* pcsphy; scalar_t__ basex_if; TYPE_4__* regs; TYPE_1__ fm_rev_info; int exceptions; int max_speed; int addr; } ;
struct fixed_phy_status {int dummy; } ;
typedef scalar_t__ enet_addr_t ;
struct TYPE_10__ {int command_config; } ;
struct TYPE_8__ {int addr; } ;
struct TYPE_9__ {TYPE_2__ mdio; } ;


 int CMD_CFG_CRC_FWD ;
 int EINVAL ;
 int ENOMEM ;
 int FMAN_INTR_TYPE_ERR ;
 int FMAN_INTR_TYPE_NORMAL ;
 int FMAN_MOD_MAC ;
 int HASH_TABLE_SIZE ;
 int MAKE_ENET_ADDR_FROM_UINT64 (int ,scalar_t__) ;
 scalar_t__ PHY_INTERFACE_MODE_QSGMII ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int add_addr_in_paddr (TYPE_4__*,int*,int ) ;
 void* alloc_hash_table (int ) ;
 int check_init_parameters (struct fman_mac*) ;
 int fman_register_intr (int ,int ,int ,int ,int ,struct fman_mac*) ;
 int fman_set_mac_max_frame (int ,int ,int ) ;
 int free_init_resources (struct fman_mac*) ;
 int init (TYPE_4__*,struct memac_cfg*,scalar_t__,int ,int,int ) ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;
 scalar_t__ is_init_done (struct memac_cfg*) ;
 int kfree (struct memac_cfg*) ;
 int memac_err_exception ;
 int memac_exception ;
 int pr_err (char*) ;
 int reset (TYPE_4__*) ;
 int setup_sgmii_internal_phy (struct fman_mac*,struct fixed_phy_status*) ;
 int setup_sgmii_internal_phy_base_x (struct fman_mac*) ;

int memac_init(struct fman_mac *memac)
{
 struct memac_cfg *memac_drv_param;
 u8 i;
 enet_addr_t eth_addr;
 bool slow_10g_if = 0;
 struct fixed_phy_status *fixed_link;
 int err;
 u32 reg32 = 0;

 if (is_init_done(memac->memac_drv_param))
  return -EINVAL;

 err = check_init_parameters(memac);
 if (err)
  return err;

 memac_drv_param = memac->memac_drv_param;

 if (memac->fm_rev_info.major == 6 && memac->fm_rev_info.minor == 4)
  slow_10g_if = 1;


 if (memac_drv_param->reset_on_init) {
  err = reset(memac->regs);
  if (err) {
   pr_err("mEMAC reset failed\n");
   return err;
  }
 }


 MAKE_ENET_ADDR_FROM_UINT64(memac->addr, eth_addr);
 add_addr_in_paddr(memac->regs, (u8 *)eth_addr, 0);

 fixed_link = memac_drv_param->fixed_link;

 init(memac->regs, memac->memac_drv_param, memac->phy_if,
      memac->max_speed, slow_10g_if, memac->exceptions);




 if ((memac->fm_rev_info.major == 6) &&
     ((memac->fm_rev_info.minor == 0) ||
     (memac->fm_rev_info.minor == 3))) {



  reg32 = ioread32be(&memac->regs->command_config);
  reg32 &= ~CMD_CFG_CRC_FWD;
  iowrite32be(reg32, &memac->regs->command_config);
 }

 if (memac->phy_if == PHY_INTERFACE_MODE_SGMII) {

  if (memac->basex_if)
   setup_sgmii_internal_phy_base_x(memac);
  else
   setup_sgmii_internal_phy(memac, fixed_link);
 } else if (memac->phy_if == PHY_INTERFACE_MODE_QSGMII) {

  for (i = 0; i < 4; i++) {
   u8 qsmgii_phy_addr, phy_addr;





   phy_addr = memac->pcsphy->mdio.addr;
   qsmgii_phy_addr = (u8)((phy_addr << 2) | i);
   memac->pcsphy->mdio.addr = qsmgii_phy_addr;
   if (memac->basex_if)
    setup_sgmii_internal_phy_base_x(memac);
   else
    setup_sgmii_internal_phy(memac, fixed_link);

   memac->pcsphy->mdio.addr = phy_addr;
  }
 }


 err = fman_set_mac_max_frame(memac->fm, memac->mac_id,
         memac_drv_param->max_frame_length);
 if (err) {
  pr_err("settings Mac max frame length is FAILED\n");
  return err;
 }

 memac->multicast_addr_hash = alloc_hash_table(HASH_TABLE_SIZE);
 if (!memac->multicast_addr_hash) {
  free_init_resources(memac);
  pr_err("allocation hash table is FAILED\n");
  return -ENOMEM;
 }

 memac->unicast_addr_hash = alloc_hash_table(HASH_TABLE_SIZE);
 if (!memac->unicast_addr_hash) {
  free_init_resources(memac);
  pr_err("allocation hash table is FAILED\n");
  return -ENOMEM;
 }

 fman_register_intr(memac->fm, FMAN_MOD_MAC, memac->mac_id,
      FMAN_INTR_TYPE_ERR, memac_err_exception, memac);

 fman_register_intr(memac->fm, FMAN_MOD_MAC, memac->mac_id,
      FMAN_INTR_TYPE_NORMAL, memac_exception, memac);

 kfree(memac_drv_param);
 memac->memac_drv_param = ((void*)0);

 return 0;
}
