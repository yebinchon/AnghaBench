
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_bar {int barcfg; } ;


 int NFP_PCIE_BAR_PCIE2CPP_MapType_of (int ) ;

__attribute__((used)) static u32 nfp_bar_maptype(struct nfp_bar *bar)
{
 return NFP_PCIE_BAR_PCIE2CPP_MapType_of(bar->barcfg);
}
