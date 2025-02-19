
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct nfp_cpp_area {int dummy; } ;
struct nfp6000_pcie {int dev; TYPE_3__* bar; } ;
struct TYPE_10__ {int flags; scalar_t__ start; scalar_t__ end; int name; } ;
struct TYPE_9__ {int bar; } ;
struct nfp6000_area_priv {int offset; int bar_offset; TYPE_3__* bar; int * iomem; scalar_t__ size; scalar_t__ phys; TYPE_2__ resource; int token; int target; TYPE_1__ width; int action; } ;
struct TYPE_11__ {int mask; int index; int * iomem; } ;


 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR_OR_NULL (int *) ;
 scalar_t__ NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL ;
 int NFP_PCIE_P2C_GENERAL_SIZE (TYPE_3__*) ;
 scalar_t__ NFP_PCIE_P2C_GENERAL_TARGET_OFFSET (TYPE_3__*,int ) ;
 scalar_t__ NFP_PCIE_P2C_GENERAL_TOKEN_OFFSET (TYPE_3__*,int ) ;
 int PTR_ERR (int *) ;
 int dev_err (int ,char*,int,int ) ;
 int * ioremap_nocache (scalar_t__,scalar_t__) ;
 int nfp_alloc_bar (struct nfp6000_pcie*,int ,int ,int ,int,scalar_t__,int ,int) ;
 scalar_t__ nfp_bar_maptype (TYPE_3__*) ;
 int nfp_bar_put (struct nfp6000_pcie*,TYPE_3__*) ;
 scalar_t__ nfp_bar_resource_start (TYPE_3__*) ;
 int nfp_cpp_area_cpp (struct nfp_cpp_area*) ;
 int nfp_cpp_area_name (struct nfp_cpp_area*) ;
 struct nfp6000_area_priv* nfp_cpp_area_priv (struct nfp_cpp_area*) ;
 struct nfp6000_pcie* nfp_cpp_priv (int ) ;
 int priv_area_get (struct nfp_cpp_area*) ;

__attribute__((used)) static int nfp6000_area_acquire(struct nfp_cpp_area *area)
{
 struct nfp6000_pcie *nfp = nfp_cpp_priv(nfp_cpp_area_cpp(area));
 struct nfp6000_area_priv *priv = nfp_cpp_area_priv(area);
 int barnum, err;

 if (priv->bar) {

  priv_area_get(area);
  return 0;
 }

 barnum = nfp_alloc_bar(nfp, priv->target, priv->action, priv->token,
          priv->offset, priv->size, priv->width.bar, 1);

 if (barnum < 0) {
  err = barnum;
  goto err_alloc_bar;
 }
 priv->bar = &nfp->bar[barnum];


 if (nfp_bar_maptype(priv->bar) ==
     NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL) {
  priv->bar_offset = priv->offset &
   (NFP_PCIE_P2C_GENERAL_SIZE(priv->bar) - 1);
  priv->bar_offset += NFP_PCIE_P2C_GENERAL_TARGET_OFFSET(
   priv->bar, priv->target);
  priv->bar_offset += NFP_PCIE_P2C_GENERAL_TOKEN_OFFSET(
   priv->bar, priv->token);
 } else {
  priv->bar_offset = priv->offset & priv->bar->mask;
 }






 priv->phys = nfp_bar_resource_start(priv->bar) + priv->bar_offset;
 priv->resource.name = nfp_cpp_area_name(area);
 priv->resource.start = priv->phys;
 priv->resource.end = priv->resource.start + priv->size - 1;
 priv->resource.flags = IORESOURCE_MEM;


 if (priv->bar->iomem)
  priv->iomem = priv->bar->iomem + priv->bar_offset;
 else

  priv->iomem = ioremap_nocache(priv->phys, priv->size);

 if (IS_ERR_OR_NULL(priv->iomem)) {
  dev_err(nfp->dev, "Can't ioremap() a %d byte region of BAR %d\n",
   (int)priv->size, priv->bar->index);
  err = !priv->iomem ? -ENOMEM : PTR_ERR(priv->iomem);
  priv->iomem = ((void*)0);
  goto err_iomem_remap;
 }

 priv_area_get(area);
 return 0;

err_iomem_remap:
 nfp_bar_put(nfp, priv->bar);
 priv->bar = ((void*)0);
err_alloc_bar:
 return err;
}
