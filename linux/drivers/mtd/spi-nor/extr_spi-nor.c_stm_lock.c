
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int u8 ;
struct mtd_info {scalar_t__ size; } ;
struct spi_nor {int flags; struct mtd_info mtd; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int SNOR_F_HAS_SR_TB ;
 int SR_BP0 ;
 int SR_BP1 ;
 int SR_BP2 ;
 int SR_SRWD ;
 int SR_TB ;
 int ffs (int) ;
 int ilog2 (scalar_t__) ;
 int read_sr (struct spi_nor*) ;
 scalar_t__ stm_is_locked_sr (struct spi_nor*,scalar_t__,scalar_t__,int) ;
 int write_sr_and_check (struct spi_nor*,int,int) ;

__attribute__((used)) static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
{
 struct mtd_info *mtd = &nor->mtd;
 int status_old, status_new;
 u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
 u8 shift = ffs(mask) - 1, pow, val;
 loff_t lock_len;
 bool can_be_top = 1, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
 bool use_top;

 status_old = read_sr(nor);
 if (status_old < 0)
  return status_old;


 if (stm_is_locked_sr(nor, ofs, len, status_old))
  return 0;


 if (!stm_is_locked_sr(nor, 0, ofs, status_old))
  can_be_bottom = 0;


 if (!stm_is_locked_sr(nor, ofs + len, mtd->size - (ofs + len),
    status_old))
  can_be_top = 0;

 if (!can_be_bottom && !can_be_top)
  return -EINVAL;


 use_top = can_be_top;


 if (use_top)
  lock_len = mtd->size - ofs;
 else
  lock_len = ofs + len;
 pow = ilog2(mtd->size) - ilog2(lock_len);
 val = mask - (pow << shift);
 if (val & ~mask)
  return -EINVAL;

 if (!(val & mask))
  return -EINVAL;

 status_new = (status_old & ~mask & ~SR_TB) | val;


 status_new |= SR_SRWD;

 if (!use_top)
  status_new |= SR_TB;


 if (status_new == status_old)
  return 0;


 if ((status_new & mask) < (status_old & mask))
  return -EINVAL;

 return write_sr_and_check(nor, status_new, mask);
}
