
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct denali_controller {scalar_t__ host; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static u32 denali_direct_read(struct denali_controller *denali, u32 addr)
{
 return ioread32(denali->host + addr);
}
