
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mtd_partition {int size; char* name; } ;
struct intel_spi {int nregions; int writeable; scalar_t__ base; } ;


 scalar_t__ FREG (int) ;
 int FREG_BASE_MASK ;
 int FREG_LIMIT_MASK ;
 int FREG_LIMIT_SHIFT ;
 scalar_t__ intel_spi_is_protected (struct intel_spi*,int,int) ;
 int memset (struct mtd_partition*,int ,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void intel_spi_fill_partition(struct intel_spi *ispi,
         struct mtd_partition *part)
{
 u64 end;
 int i;

 memset(part, 0, sizeof(*part));


 part->size = 4096;
 part->name = "BIOS";





 for (i = 1; i < ispi->nregions; i++) {
  u32 region, base, limit;

  region = readl(ispi->base + FREG(i));
  base = region & FREG_BASE_MASK;
  limit = (region & FREG_LIMIT_MASK) >> FREG_LIMIT_SHIFT;

  if (base >= limit || limit == 0)
   continue;





  if (intel_spi_is_protected(ispi, base, limit))
   ispi->writeable = 0;

  end = (limit << 12) + 4096;
  if (end > part->size)
   part->size = end;
 }
}
