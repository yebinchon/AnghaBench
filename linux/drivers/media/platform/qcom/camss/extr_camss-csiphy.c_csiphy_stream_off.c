
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csiphy_device {int cfg; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* lanes_disable ) (struct csiphy_device*,int *) ;} ;


 int stub1 (struct csiphy_device*,int *) ;

__attribute__((used)) static void csiphy_stream_off(struct csiphy_device *csiphy)
{
 csiphy->ops->lanes_disable(csiphy, &csiphy->cfg);
}
