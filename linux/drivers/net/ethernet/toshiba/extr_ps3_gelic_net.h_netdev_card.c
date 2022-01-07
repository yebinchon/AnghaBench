
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gelic_port {struct gelic_card* card; } ;
struct gelic_card {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline struct gelic_card *netdev_card(struct net_device *d)
{
 return ((struct gelic_port *)netdev_priv(d))->card;
}
