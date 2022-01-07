
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPMC_STATUS ;
 int GPMC_STATUS_EMPTYWRITEBUFFERSTATUS ;
 int gpmc_read_reg (int ) ;

__attribute__((used)) static bool gpmc_nand_writebuffer_empty(void)
{
 if (gpmc_read_reg(GPMC_STATUS) & GPMC_STATUS_EMPTYWRITEBUFFERSTATUS)
  return 1;

 return 0;
}
