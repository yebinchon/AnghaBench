
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ dev_get_drvdata (int ) ;
 int get_device (struct device*) ;

struct fman *fman_bind(struct device *fm_dev)
{
 return (struct fman *)(dev_get_drvdata(get_device(fm_dev)));
}
