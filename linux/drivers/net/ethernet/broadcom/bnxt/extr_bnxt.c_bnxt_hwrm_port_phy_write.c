
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hwrm_port_phy_mdio_write_input {int phy_addr; int cl45_mdio; void* reg_data; void* reg_addr; int dev_addr; void* port_id; int member_0; } ;
struct TYPE_2__ {int port_id; } ;
struct bnxt {int hwrm_spec_code; TYPE_1__ pf; } ;
typedef int req ;


 int EOPNOTSUPP ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_PHY_MDIO_WRITE ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_phy_mdio_write_input*,int ,int,int) ;
 void* cpu_to_le16 (int) ;
 int hwrm_send_message (struct bnxt*,struct hwrm_port_phy_mdio_write_input*,int,int ) ;
 int mdio_phy_id_devad (int) ;
 scalar_t__ mdio_phy_id_is_c45 (int) ;
 int mdio_phy_id_prtad (int) ;

__attribute__((used)) static int bnxt_hwrm_port_phy_write(struct bnxt *bp, u16 phy_addr, u16 reg,
        u16 val)
{
 struct hwrm_port_phy_mdio_write_input req = {0};

 if (bp->hwrm_spec_code < 0x10a00)
  return -EOPNOTSUPP;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_PHY_MDIO_WRITE, -1, -1);
 req.port_id = cpu_to_le16(bp->pf.port_id);
 req.phy_addr = phy_addr;
 req.reg_addr = cpu_to_le16(reg & 0x1f);
 if (mdio_phy_id_is_c45(phy_addr)) {
  req.cl45_mdio = 1;
  req.phy_addr = mdio_phy_id_prtad(phy_addr);
  req.dev_addr = mdio_phy_id_devad(phy_addr);
  req.reg_addr = cpu_to_le16(reg);
 }
 req.reg_data = cpu_to_le16(val);

 return hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}
