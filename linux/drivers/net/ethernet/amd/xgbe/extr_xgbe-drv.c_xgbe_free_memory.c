
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_desc_if {int (* free_ring_resources ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {struct xgbe_desc_if desc_if; } ;


 int stub1 (struct xgbe_prv_data*) ;
 int xgbe_free_channels (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_free_memory(struct xgbe_prv_data *pdata)
{
 struct xgbe_desc_if *desc_if = &pdata->desc_if;


 desc_if->free_ring_resources(pdata);


 xgbe_free_channels(pdata);
}
