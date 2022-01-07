
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PCIE_DESC_RX_CSUM_OK_SHIFT ;
 int __PCIE_DESC_RX_CSUM_ALL ;
 int __PCIE_DESC_RX_CSUM_ALL_OK ;

__attribute__((used)) static int nfp_net_rx_csum_has_errors(u16 flags)
{
 u16 csum_all_checked, csum_all_ok;

 csum_all_checked = flags & __PCIE_DESC_RX_CSUM_ALL;
 csum_all_ok = flags & __PCIE_DESC_RX_CSUM_ALL_OK;

 return csum_all_checked != (csum_all_ok << PCIE_DESC_RX_CSUM_OK_SHIFT);
}
