
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int qec_ether_init (struct platform_device*) ;

__attribute__((used)) static int qec_sbus_probe(struct platform_device *op)
{
 return qec_ether_init(op);
}
