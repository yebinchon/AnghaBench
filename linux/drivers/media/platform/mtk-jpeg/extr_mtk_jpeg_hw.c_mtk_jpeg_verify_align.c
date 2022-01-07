
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pr_err (char*,int,int) ;

__attribute__((used)) static inline int mtk_jpeg_verify_align(u32 val, int align, u32 reg)
{
 if (val & (align - 1)) {
  pr_err("mtk-jpeg: write reg %x without %d align\n", reg, align);
  return -1;
 }

 return 0;
}
