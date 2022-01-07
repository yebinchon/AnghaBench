
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXYNOS4_HUFF_TBL_HACCL ;
 int EXYNOS4_HUFF_TBL_HACCV ;
 int EXYNOS4_HUFF_TBL_HACLL ;
 int EXYNOS4_HUFF_TBL_HACLV ;
 int EXYNOS4_HUFF_TBL_HDCCL ;
 int EXYNOS4_HUFF_TBL_HDCCV ;
 int EXYNOS4_HUFF_TBL_HDCLL ;
 int EXYNOS4_HUFF_TBL_HDCLV ;

__attribute__((used)) static inline int __exynos4_huff_tbl(int class, int id, bool lenval)
{




 if (class) {
  if (id)
   return lenval ? EXYNOS4_HUFF_TBL_HACCL :
    EXYNOS4_HUFF_TBL_HACCV;
  return lenval ? EXYNOS4_HUFF_TBL_HACLL : EXYNOS4_HUFF_TBL_HACLV;

 }

 if (id)
  return lenval ? EXYNOS4_HUFF_TBL_HDCCL : EXYNOS4_HUFF_TBL_HDCCV;

 return lenval ? EXYNOS4_HUFF_TBL_HDCLL : EXYNOS4_HUFF_TBL_HDCLV;
}
