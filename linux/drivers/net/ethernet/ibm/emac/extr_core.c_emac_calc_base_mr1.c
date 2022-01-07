
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emac_instance {int dummy; } ;


 int EMAC_FTR_EMAC4 ;
 int __emac4_calc_base_mr1 (struct emac_instance*,int,int) ;
 int __emac_calc_base_mr1 (struct emac_instance*,int,int) ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;

__attribute__((used)) static u32 emac_calc_base_mr1(struct emac_instance *dev, int tx_size, int rx_size)
{
 return emac_has_feature(dev, EMAC_FTR_EMAC4) ?
  __emac4_calc_base_mr1(dev, tx_size, rx_size) :
  __emac_calc_base_mr1(dev, tx_size, rx_size);
}
