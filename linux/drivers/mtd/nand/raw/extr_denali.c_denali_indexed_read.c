
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {scalar_t__ host; } ;


 scalar_t__ DENALI_INDEXED_CTRL ;
 scalar_t__ DENALI_INDEXED_DATA ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static u32 denali_indexed_read(struct denali_controller *denali, u32 addr)
{
 iowrite32(addr, denali->host + DENALI_INDEXED_CTRL);
 return ioread32(denali->host + DENALI_INDEXED_DATA);
}
