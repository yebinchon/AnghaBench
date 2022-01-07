
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct nfp_cpp {struct device dev; } ;



struct device *nfp_cpp_device(struct nfp_cpp *cpp)
{
 return &cpp->dev;
}
