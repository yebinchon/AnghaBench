
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GPMC_CONFIG7_CSVALID ;
 int GPMC_CS_CONFIG7 ;
 int gpmc_cs_read_reg (int,int ) ;

__attribute__((used)) static int gpmc_cs_mem_enabled(int cs)
{
 u32 l;

 l = gpmc_cs_read_reg(cs, GPMC_CS_CONFIG7);
 return l & GPMC_CONFIG7_CSVALID;
}
