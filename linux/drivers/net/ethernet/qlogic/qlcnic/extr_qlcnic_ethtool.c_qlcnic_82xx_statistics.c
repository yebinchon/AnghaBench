
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int drv_tx_rings; } ;


 int ARRAY_SIZE (int ) ;
 int QLCNIC_TX_STATS_LEN ;
 int qlcnic_83xx_mac_stats_strings ;
 int qlcnic_gstrings_stats ;

__attribute__((used)) static inline int qlcnic_82xx_statistics(struct qlcnic_adapter *adapter)
{
 return ARRAY_SIZE(qlcnic_gstrings_stats) +
        ARRAY_SIZE(qlcnic_83xx_mac_stats_strings) +
        QLCNIC_TX_STATS_LEN * adapter->drv_tx_rings;
}
