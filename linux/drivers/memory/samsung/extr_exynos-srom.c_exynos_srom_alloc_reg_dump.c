
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_srom_reg_dump {unsigned long offset; } ;


 int GFP_KERNEL ;
 struct exynos_srom_reg_dump* kcalloc (unsigned long,int,int ) ;

__attribute__((used)) static struct exynos_srom_reg_dump *exynos_srom_alloc_reg_dump(
  const unsigned long *rdump,
  unsigned long nr_rdump)
{
 struct exynos_srom_reg_dump *rd;
 unsigned int i;

 rd = kcalloc(nr_rdump, sizeof(*rd), GFP_KERNEL);
 if (!rd)
  return ((void*)0);

 for (i = 0; i < nr_rdump; ++i)
  rd[i].offset = rdump[i];

 return rd;
}
