
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int version; int flag; } ;
struct TYPE_3__ {int fw_vers; } ;
struct adapter {TYPE_2__ eth_dump; TYPE_1__ params; } ;


 int CXGB4_ETH_DUMP_NONE ;

void cxgb4_init_ethtool_dump(struct adapter *adapter)
{
 adapter->eth_dump.flag = CXGB4_ETH_DUMP_NONE;
 adapter->eth_dump.version = adapter->params.fw_vers;
 adapter->eth_dump.len = 0;
}
