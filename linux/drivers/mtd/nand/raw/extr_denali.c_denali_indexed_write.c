
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {scalar_t__ host; } ;


 scalar_t__ DENALI_INDEXED_CTRL ;
 scalar_t__ DENALI_INDEXED_DATA ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void denali_indexed_write(struct denali_controller *denali, u32 addr,
     u32 data)
{
 iowrite32(addr, denali->host + DENALI_INDEXED_CTRL);
 iowrite32(data, denali->host + DENALI_INDEXED_DATA);
}
