
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int dummy; } ;


 int MTK_ETH_PATH_GMAC1_SGMII ;
 int MTK_ETH_PATH_GMAC2_SGMII ;
 int mtk_eth_mux_setup (struct mtk_eth*,int) ;

int mtk_gmac_sgmii_path_setup(struct mtk_eth *eth, int mac_id)
{
 int err, path;

 path = (mac_id == 0) ? MTK_ETH_PATH_GMAC1_SGMII :
    MTK_ETH_PATH_GMAC2_SGMII;


 err = mtk_eth_mux_setup(eth, path);
 if (err)
  return err;

 return 0;
}
