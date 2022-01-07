
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct genwqe_reg {int dummy; } ;
struct genwqe_dev {TYPE_1__* ffdc; } ;
struct TYPE_2__ {unsigned int entries; int regs; } ;






 unsigned int GENWQE_DBG_UNITS ;
 unsigned int GENWQE_FFDC_REGS ;
 int GFP_KERNEL ;
 unsigned int genwqe_ffdc_buff_size (struct genwqe_dev*,int) ;
 int kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static int genwqe_ffdc_buffs_alloc(struct genwqe_dev *cd)
{
 unsigned int type, e = 0;

 for (type = 0; type < GENWQE_DBG_UNITS; type++) {
  switch (type) {
  case 130:
   e = genwqe_ffdc_buff_size(cd, 0);
   break;
  case 129:
   e = genwqe_ffdc_buff_size(cd, 1);
   break;
  case 128:
   e = genwqe_ffdc_buff_size(cd, 2);
   break;
  case 131:
   e = GENWQE_FFDC_REGS;
   break;
  }


  cd->ffdc[type].entries = e;
  cd->ffdc[type].regs =
   kmalloc_array(e, sizeof(struct genwqe_reg),
          GFP_KERNEL);




 }
 return 0;
}
