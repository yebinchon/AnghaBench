
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
 int lower_32_bits (int ) ;
 int stub1 (struct denali_controller*,int,int) ;
 int stub2 (struct denali_controller*,int,int) ;
 int stub3 (struct denali_controller*,int,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void denali_setup_dma64(struct denali_controller *denali,
          dma_addr_t dma_addr, int page, bool write)
{
 u32 mode;
 const int page_count = 1;

 mode = DENALI_MAP10 | DENALI_BANK(denali) | page;







 denali->host_write(denali, mode,
      0x01002000 | (64 << 16) |
      (write ? BIT(8) : 0) | page_count);


 denali->host_write(denali, mode, lower_32_bits(dma_addr));


 denali->host_write(denali, mode, upper_32_bits(dma_addr));
}
