
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __exynos4_huff_tbl (int,int,int) ;

__attribute__((used)) static inline int exynos4_huff_tbl_len(int class, int id)
{
 return __exynos4_huff_tbl(class, id, 1);
}
