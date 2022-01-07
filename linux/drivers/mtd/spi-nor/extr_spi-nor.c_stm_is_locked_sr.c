
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u8 ;
struct spi_nor {int dummy; } ;
typedef int loff_t ;


 int stm_check_lock_status_sr (struct spi_nor*,int ,int ,int ,int) ;

__attribute__((used)) static int stm_is_locked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
       u8 sr)
{
 return stm_check_lock_status_sr(nor, ofs, len, sr, 1);
}
