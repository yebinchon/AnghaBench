
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_axi {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct plat_stmmacenet_data {int has_gmac4; int tso_en; int pmt; TYPE_2__* dma_cfg; TYPE_3__* axi; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int axi_wr_osr_lmt; int axi_rd_osr_lmt; int* axi_blen; int axi_lpi_en; } ;
struct TYPE_5__ {int aal; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_3__* kzalloc (int,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static int dwc_eth_dwmac_config_dt(struct platform_device *pdev,
       struct plat_stmmacenet_data *plat_dat)
{
 struct device_node *np = pdev->dev.of_node;
 u32 burst_map = 0;
 u32 bit_index = 0;
 u32 a_index = 0;

 if (!plat_dat->axi) {
  plat_dat->axi = kzalloc(sizeof(struct stmmac_axi), GFP_KERNEL);

  if (!plat_dat->axi)
   return -ENOMEM;
 }

 plat_dat->axi->axi_lpi_en = of_property_read_bool(np, "snps,en-lpi");
 if (of_property_read_u32(np, "snps,write-requests",
     &plat_dat->axi->axi_wr_osr_lmt)) {




  plat_dat->axi->axi_wr_osr_lmt = 1;
 } else {




  plat_dat->axi->axi_wr_osr_lmt--;
 }

 if (of_property_read_u32(np, "snps,read-requests",
     &plat_dat->axi->axi_rd_osr_lmt)) {




  plat_dat->axi->axi_rd_osr_lmt = 1;
 } else {




  plat_dat->axi->axi_rd_osr_lmt--;
 }
 of_property_read_u32(np, "snps,burst-map", &burst_map);


 for (bit_index = 0; bit_index < 7; bit_index++) {
  if (burst_map & (1 << bit_index)) {
   switch (bit_index) {
   case 0:
   plat_dat->axi->axi_blen[a_index] = 4; break;
   case 1:
   plat_dat->axi->axi_blen[a_index] = 8; break;
   case 2:
   plat_dat->axi->axi_blen[a_index] = 16; break;
   case 3:
   plat_dat->axi->axi_blen[a_index] = 32; break;
   case 4:
   plat_dat->axi->axi_blen[a_index] = 64; break;
   case 5:
   plat_dat->axi->axi_blen[a_index] = 128; break;
   case 6:
   plat_dat->axi->axi_blen[a_index] = 256; break;
   default:
   break;
   }
   a_index++;
  }
 }


 plat_dat->has_gmac4 = 1;
 plat_dat->dma_cfg->aal = 1;
 plat_dat->tso_en = 1;
 plat_dat->pmt = 1;

 return 0;
}
