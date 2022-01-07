
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned int u16 ;
struct TYPE_3__ {void* rval; void* raddr; void* paddr_mmd; } ;
struct TYPE_4__ {TYPE_1__ mdio; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LDST_ADDRSPC_MDIO ;
 int FW_LDST_CMD ;
 int FW_LDST_CMD_ADDRSPACE_V (int ) ;
 unsigned int FW_LDST_CMD_MMD_V (unsigned int) ;
 unsigned int FW_LDST_CMD_PADDR_V (unsigned int) ;
 int FW_LEN16 (struct fw_ldst_cmd) ;
 void* cpu_to_be16 (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_ldst_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_ldst_cmd*,int,int *) ;

int t4_mdio_wr(struct adapter *adap, unsigned int mbox, unsigned int phy_addr,
        unsigned int mmd, unsigned int reg, u16 val)
{
 u32 ldst_addrspace;
 struct fw_ldst_cmd c;

 memset(&c, 0, sizeof(c));
 ldst_addrspace = FW_LDST_CMD_ADDRSPACE_V(FW_LDST_ADDRSPC_MDIO);
 c.op_to_addrspace = cpu_to_be32(FW_CMD_OP_V(FW_LDST_CMD) |
     FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
     ldst_addrspace);
 c.cycles_to_len16 = cpu_to_be32(FW_LEN16(c));
 c.u.mdio.paddr_mmd = cpu_to_be16(FW_LDST_CMD_PADDR_V(phy_addr) |
      FW_LDST_CMD_MMD_V(mmd));
 c.u.mdio.raddr = cpu_to_be16(reg);
 c.u.mdio.rval = cpu_to_be16(val);

 return t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
}
