
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u8 ;
struct spi_nor {int dummy; } ;
typedef scalar_t__ loff_t ;


 int stm_get_locked_range (struct spi_nor*,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int stm_check_lock_status_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
        u8 sr, bool locked)
{
 loff_t lock_offs;
 uint64_t lock_len;

 if (!len)
  return 1;

 stm_get_locked_range(nor, sr, &lock_offs, &lock_len);

 if (locked)

  return (ofs + len <= lock_offs + lock_len) && (ofs >= lock_offs);
 else

  return (ofs >= lock_offs + lock_len) || (ofs + len <= lock_offs);
}
