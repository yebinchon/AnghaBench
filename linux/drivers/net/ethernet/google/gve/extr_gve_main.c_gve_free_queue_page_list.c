
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_queue_page_list {int num_entries; int * pages; int * page_buses; } ;
struct gve_priv {int num_registered_pages; TYPE_1__* pdev; struct gve_queue_page_list* qpls; } ;
struct TYPE_2__ {int dev; } ;


 int gve_free_page (int *,int ,int ,int ) ;
 int gve_qpl_dma_dir (struct gve_priv*,int) ;
 int kvfree (int *) ;

__attribute__((used)) static void gve_free_queue_page_list(struct gve_priv *priv,
         int id)
{
 struct gve_queue_page_list *qpl = &priv->qpls[id];
 int i;

 if (!qpl->pages)
  return;
 if (!qpl->page_buses)
  goto free_pages;

 for (i = 0; i < qpl->num_entries; i++)
  gve_free_page(&priv->pdev->dev, qpl->pages[i],
         qpl->page_buses[i], gve_qpl_dma_dir(priv, id));

 kvfree(qpl->page_buses);
free_pages:
 kvfree(qpl->pages);
 priv->num_registered_pages -= qpl->num_entries;
}
