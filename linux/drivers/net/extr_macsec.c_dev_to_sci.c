
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
typedef int sci_t ;
typedef int __be16 ;


 int make_sci (int ,int ) ;

__attribute__((used)) static sci_t dev_to_sci(struct net_device *dev, __be16 port)
{
 return make_sci(dev->dev_addr, port);
}
