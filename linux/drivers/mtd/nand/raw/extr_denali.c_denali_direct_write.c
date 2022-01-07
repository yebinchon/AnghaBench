
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct denali_controller {scalar_t__ host; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void denali_direct_write(struct denali_controller *denali, u32 addr,
    u32 data)
{
 iowrite32(data, denali->host + addr);
}
