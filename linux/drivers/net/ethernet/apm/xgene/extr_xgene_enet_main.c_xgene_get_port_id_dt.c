
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int port_id; } ;
struct device {int of_node; } ;


 int BIT (int ) ;
 int of_property_read_u32 (int ,char*,int*) ;

__attribute__((used)) static void xgene_get_port_id_dt(struct device *dev, struct xgene_enet_pdata *pdata)
{
 u32 id = 0;

 of_property_read_u32(dev->of_node, "port-id", &id);

 pdata->port_id = id & BIT(0);

 return;
}
