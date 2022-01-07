
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_port {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ dev_get_drvdata (int ) ;
 int get_device (struct device*) ;

struct fman_port *fman_port_bind(struct device *dev)
{
 return (struct fman_port *)(dev_get_drvdata(get_device(dev)));
}
