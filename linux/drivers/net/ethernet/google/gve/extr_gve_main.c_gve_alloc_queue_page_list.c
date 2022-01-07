
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct gve_queue_page_list {size_t id; int num_entries; int * page_buses; int * pages; } ;
struct gve_priv {scalar_t__ num_registered_pages; scalar_t__ max_registered_pages; TYPE_1__* pdev; int dev; struct gve_queue_page_list* qpls; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drv ;
 int gve_alloc_page (int *,int *,int *,int ) ;
 int gve_qpl_dma_dir (struct gve_priv*,size_t) ;
 void* kvzalloc (int,int ) ;
 int netif_err (struct gve_priv*,int ,int ,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int gve_alloc_queue_page_list(struct gve_priv *priv, u32 id,
         int pages)
{
 struct gve_queue_page_list *qpl = &priv->qpls[id];
 int err;
 int i;

 if (pages + priv->num_registered_pages > priv->max_registered_pages) {
  netif_err(priv, drv, priv->dev,
     "Reached max number of registered pages %llu > %llu\n",
     pages + priv->num_registered_pages,
     priv->max_registered_pages);
  return -EINVAL;
 }

 qpl->id = id;
 qpl->num_entries = pages;
 qpl->pages = kvzalloc(pages * sizeof(*qpl->pages), GFP_KERNEL);

 if (!qpl->pages)
  return -ENOMEM;
 qpl->page_buses = kvzalloc(pages * sizeof(*qpl->page_buses),
       GFP_KERNEL);

 if (!qpl->page_buses)
  return -ENOMEM;

 for (i = 0; i < pages; i++) {
  err = gve_alloc_page(&priv->pdev->dev, &qpl->pages[i],
         &qpl->page_buses[i],
         gve_qpl_dma_dir(priv, id));

  if (err)
   return -ENOMEM;
 }
 priv->num_registered_pages += pages;

 return 0;
}
