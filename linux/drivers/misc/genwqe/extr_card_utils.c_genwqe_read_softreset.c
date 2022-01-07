
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct genwqe_dev {int softreset; } ;


 int ENODEV ;
 int IO_SLU_BITSTREAM ;
 int __genwqe_readq (struct genwqe_dev*,int ) ;
 int genwqe_is_privileged (struct genwqe_dev*) ;

int genwqe_read_softreset(struct genwqe_dev *cd)
{
 u64 bitstream;

 if (!genwqe_is_privileged(cd))
  return -ENODEV;

 bitstream = __genwqe_readq(cd, IO_SLU_BITSTREAM) & 0x1;
 cd->softreset = (bitstream == 0) ? 0x8ull : 0xcull;
 return 0;
}
