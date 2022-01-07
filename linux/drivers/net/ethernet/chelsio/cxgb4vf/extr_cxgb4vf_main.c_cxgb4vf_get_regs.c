
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ PL_VF_REVISION_A ;
 scalar_t__ PL_VF_WHOAMI_A ;
 scalar_t__ T4VF_CIM_BASE_ADDR ;
 scalar_t__ T4VF_MBDATA_BASE_ADDR ;
 scalar_t__ T4VF_MBDATA_FIRST ;
 scalar_t__ T4VF_MBDATA_LAST ;
 scalar_t__ T4VF_MOD_MAP_CIM_FIRST ;
 scalar_t__ T4VF_MOD_MAP_CIM_LAST ;
 scalar_t__ T4VF_MOD_MAP_MPS_FIRST ;
 scalar_t__ T4VF_MOD_MAP_MPS_LAST ;
 scalar_t__ T4VF_MOD_MAP_PL_FIRST ;
 scalar_t__ T4VF_MOD_MAP_SGE_FIRST ;
 scalar_t__ T4VF_MOD_MAP_SGE_LAST ;
 scalar_t__ T4VF_MPS_BASE_ADDR ;
 scalar_t__ T4VF_PL_BASE_ADDR ;
 int T4VF_REGMAP_SIZE ;
 scalar_t__ T4VF_SGE_BASE_ADDR ;
 scalar_t__ is_t4 (int ) ;
 int memset (void*,int ,int ) ;
 int mk_adap_vers (struct adapter*) ;
 struct adapter* netdev2adap (struct net_device*) ;
 int reg_block_dump (struct adapter*,void*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void cxgb4vf_get_regs(struct net_device *dev,
        struct ethtool_regs *regs,
        void *regbuf)
{
 struct adapter *adapter = netdev2adap(dev);

 regs->version = mk_adap_vers(adapter);




 memset(regbuf, 0, T4VF_REGMAP_SIZE);

 reg_block_dump(adapter, regbuf,
         T4VF_SGE_BASE_ADDR + T4VF_MOD_MAP_SGE_FIRST,
         T4VF_SGE_BASE_ADDR + T4VF_MOD_MAP_SGE_LAST);
 reg_block_dump(adapter, regbuf,
         T4VF_MPS_BASE_ADDR + T4VF_MOD_MAP_MPS_FIRST,
         T4VF_MPS_BASE_ADDR + T4VF_MOD_MAP_MPS_LAST);



 reg_block_dump(adapter, regbuf,
         T4VF_PL_BASE_ADDR + T4VF_MOD_MAP_PL_FIRST,
         T4VF_PL_BASE_ADDR + (is_t4(adapter->params.chip)
         ? PL_VF_WHOAMI_A : PL_VF_REVISION_A));
 reg_block_dump(adapter, regbuf,
         T4VF_CIM_BASE_ADDR + T4VF_MOD_MAP_CIM_FIRST,
         T4VF_CIM_BASE_ADDR + T4VF_MOD_MAP_CIM_LAST);

 reg_block_dump(adapter, regbuf,
         T4VF_MBDATA_BASE_ADDR + T4VF_MBDATA_FIRST,
         T4VF_MBDATA_BASE_ADDR + T4VF_MBDATA_LAST);
}
