
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mic_mw {scalar_t__ va; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
mic_mmio_write(struct mic_mw *mw, u32 val, u32 offset)
{
 iowrite32(val, mw->va + offset);
}
