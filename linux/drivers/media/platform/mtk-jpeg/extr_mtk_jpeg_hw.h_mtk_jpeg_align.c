
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 mtk_jpeg_align(u32 val, u32 align)
{
 return (val + align - 1) & ~(align - 1);
}
