
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct igbvf_adapter {scalar_t__ link_duplex; int link_speed; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ FULL_DUPLEX ;
 int dev_info (int *,char*,int ,char*) ;

__attribute__((used)) static void igbvf_print_link_info(struct igbvf_adapter *adapter)
{
 dev_info(&adapter->pdev->dev, "Link is Up %d Mbps %s Duplex\n",
   adapter->link_speed,
   adapter->link_duplex == FULL_DUPLEX ? "Full" : "Half");
}
