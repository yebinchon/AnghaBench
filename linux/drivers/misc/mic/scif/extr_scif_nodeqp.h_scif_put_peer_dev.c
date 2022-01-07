
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int put_device (struct device*) ;

__attribute__((used)) static inline void scif_put_peer_dev(struct device *dev)
{
 put_device(dev);
}
