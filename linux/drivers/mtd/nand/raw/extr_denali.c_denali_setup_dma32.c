
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct denali_controller {int (* host_write ) (struct denali_controller*,int,int) ;} ;
typedef int dma_addr_t ;


 int BIT (int) ;
 int DENALI_BANK (struct denali_controller*) ;
 int DENALI_MAP10 ;
 int stub1 (struct denali_controller*,int,int) ;
 int stub2 (struct denali_controller*,int,int) ;
 int stub3 (struct denali_controller*,int,int) ;
 int stub4 (struct denali_controller*,int,int) ;

__attribute__((used)) static void denali_setup_dma32(struct denali_controller *denali,
          dma_addr_t dma_addr, int page, bool write)
{
 u32 mode;
 const int page_count = 1;

 mode = DENALI_MAP10 | DENALI_BANK(denali);




 denali->host_write(denali, mode | page,
      0x2000 | (write ? BIT(8) : 0) | page_count);


 denali->host_write(denali, mode | ((dma_addr >> 16) << 8), 0x2200);


 denali->host_write(denali, mode | ((dma_addr & 0xffff) << 8), 0x2300);


 denali->host_write(denali, mode | 0x14000, 0x2400);
}
