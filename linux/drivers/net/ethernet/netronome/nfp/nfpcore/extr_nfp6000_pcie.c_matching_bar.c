
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nfp_bar {scalar_t__ base; int bitsize; int barcfg; } ;


 int NFP_CPP_ACTION_RW ;
 int NFP_PCIE_BAR_PCIE2CPP_Action_BaseAddress_of (int ) ;



 int NFP_PCIE_BAR_PCIE2CPP_LengthSelect_of (int ) ;



 int NFP_PCIE_BAR_PCIE2CPP_MapType_of (int ) ;
 int NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress_of (int ) ;
 int NFP_PCIE_BAR_PCIE2CPP_Token_BaseAddress_of (int ) ;

__attribute__((used)) static int matching_bar(struct nfp_bar *bar, u32 tgt, u32 act, u32 tok,
   u64 offset, size_t size, int width)
{
 int bartgt, baract, bartok;
 int barwidth;
 u32 maptype;

 maptype = NFP_PCIE_BAR_PCIE2CPP_MapType_of(bar->barcfg);
 bartgt = NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress_of(bar->barcfg);
 bartok = NFP_PCIE_BAR_PCIE2CPP_Token_BaseAddress_of(bar->barcfg);
 baract = NFP_PCIE_BAR_PCIE2CPP_Action_BaseAddress_of(bar->barcfg);

 barwidth = NFP_PCIE_BAR_PCIE2CPP_LengthSelect_of(bar->barcfg);
 switch (barwidth) {
 case 132:
  barwidth = 4;
  break;
 case 131:
  barwidth = 8;
  break;
 case 133:
  barwidth = 0;
  break;
 default:
  barwidth = -1;
  break;
 }

 switch (maptype) {
 case 128:
  bartok = -1;

 case 130:
  baract = NFP_CPP_ACTION_RW;
  if (act == 0)
   act = NFP_CPP_ACTION_RW;

 case 129:
  break;
 default:

  return 0;
 }


 if (barwidth != width)
  return 0;

 if ((bartgt < 0 || bartgt == tgt) &&
     (bartok < 0 || bartok == tok) &&
     (baract == act) &&
     bar->base <= offset &&
     (bar->base + (1 << bar->bitsize)) >= (offset + size))
  return 1;


 return 0;
}
