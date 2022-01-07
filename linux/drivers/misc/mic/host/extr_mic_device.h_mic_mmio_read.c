
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mic_mw {scalar_t__ va; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 mic_mmio_read(struct mic_mw *mw, u32 offset)
{
 return ioread32(mw->va + offset);
}
