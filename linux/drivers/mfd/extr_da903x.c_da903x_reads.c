
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device {int dummy; } ;


 int __da903x_reads (int ,int,int,int *) ;
 int to_i2c_client (struct device*) ;

int da903x_reads(struct device *dev, int reg, int len, uint8_t *val)
{
 return __da903x_reads(to_i2c_client(dev), reg, len, val);
}
