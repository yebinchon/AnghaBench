
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct z8530_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ priv; } ;


 TYPE_1__* dev_to_hdlc (struct net_device*) ;

__attribute__((used)) static inline struct z8530_dev* dev_to_sv(struct net_device *dev)
{
 return (struct z8530_dev *)dev_to_hdlc(dev)->priv;
}
