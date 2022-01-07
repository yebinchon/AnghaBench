
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pixelformat; unsigned int width; } ;
struct sh_vou_device {TYPE_1__ pix; } ;







 int VOUAIR ;
 int VOUSWR ;
 int sh_vou_reg_a_write (struct sh_vou_device*,int ,int) ;
 int sh_vou_reg_ab_write (struct sh_vou_device*,int ,unsigned int) ;

__attribute__((used)) static void sh_vou_stream_config(struct sh_vou_device *vou_dev)
{
 unsigned int row_coeff;



 u32 dataswap = 0;


 switch (vou_dev->pix.pixelformat) {
 default:
 case 132:
 case 131:
  row_coeff = 1;
  break;
 case 129:
  dataswap ^= 1;

 case 128:
  row_coeff = 2;
  break;
 case 130:
  row_coeff = 3;
  break;
 }

 sh_vou_reg_a_write(vou_dev, VOUSWR, dataswap);
 sh_vou_reg_ab_write(vou_dev, VOUAIR, vou_dev->pix.width * row_coeff);
}
