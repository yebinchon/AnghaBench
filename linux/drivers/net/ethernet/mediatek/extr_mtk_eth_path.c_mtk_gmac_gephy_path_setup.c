
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int dummy; } ;


 int EINVAL ;
 int MTK_ETH_PATH_GMAC2_GEPHY ;
 int mtk_eth_mux_setup (struct mtk_eth*,int) ;

int mtk_gmac_gephy_path_setup(struct mtk_eth *eth, int mac_id)
{
 int err, path = 0;

 if (mac_id == 1)
  path = MTK_ETH_PATH_GMAC2_GEPHY;

 if (!path)
  return -EINVAL;


 err = mtk_eth_mux_setup(eth, path);
 if (err)
  return err;

 return 0;
}
