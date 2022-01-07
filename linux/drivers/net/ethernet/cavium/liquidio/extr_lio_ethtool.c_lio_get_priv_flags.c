
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct lio {TYPE_1__* oct_dev; } ;
struct TYPE_2__ {int priv_flags; } ;


 struct lio* GET_LIO (struct net_device*) ;

__attribute__((used)) static u32 lio_get_priv_flags(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);

 return lio->oct_dev->priv_flags;
}
