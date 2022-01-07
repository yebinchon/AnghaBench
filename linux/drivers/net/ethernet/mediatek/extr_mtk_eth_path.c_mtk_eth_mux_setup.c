
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mtk_eth {int dev; TYPE_1__* soc; } ;
struct TYPE_5__ {int cap_bit; int (* set_path ) (struct mtk_eth*,int) ;int name; } ;
struct TYPE_4__ {int caps; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 scalar_t__ MTK_HAS_CAPS (int ,int) ;
 int MTK_MUX ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int ) ;
 TYPE_2__* mtk_eth_muxc ;
 int mtk_eth_path_name (int) ;
 int stub1 (struct mtk_eth*,int) ;

__attribute__((used)) static int mtk_eth_mux_setup(struct mtk_eth *eth, int path)
{
 int i, err = 0;

 if (!MTK_HAS_CAPS(eth->soc->caps, path)) {
  dev_err(eth->dev, "path %s isn't support on the SoC\n",
   mtk_eth_path_name(path));
  return -EINVAL;
 }

 if (!MTK_HAS_CAPS(eth->soc->caps, MTK_MUX))
  return 0;


 for (i = 0; i < ARRAY_SIZE(mtk_eth_muxc); i++) {
  if (MTK_HAS_CAPS(eth->soc->caps, mtk_eth_muxc[i].cap_bit)) {
   err = mtk_eth_muxc[i].set_path(eth, path);
   if (err)
    goto out;
  } else {
   dev_dbg(eth->dev, "mux %s isn't present on the SoC\n",
    mtk_eth_muxc[i].name);
  }
 }

out:
 return err;
}
