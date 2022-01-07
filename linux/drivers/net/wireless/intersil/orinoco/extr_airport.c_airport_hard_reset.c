
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {struct airport* card; } ;
struct airport {int irq; int mdev; } ;


 int PMAC_FTR_AIRPORT_ENABLE ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int macio_get_of_node (int ) ;
 int pmac_call_feature (int ,int ,int ,int) ;
 int ssleep (int) ;

__attribute__((used)) static int airport_hard_reset(struct orinoco_private *priv)
{
 return 0;
}
