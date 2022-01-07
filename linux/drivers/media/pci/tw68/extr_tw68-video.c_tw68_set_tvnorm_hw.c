
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw68_dev {TYPE_1__* tvnorm; } ;
struct TYPE_2__ {int format; } ;


 int TW68_SDT ;
 int tw_andorb (int ,int,int ) ;

void tw68_set_tvnorm_hw(struct tw68_dev *dev)
{
 tw_andorb(TW68_SDT, 0x07, dev->tvnorm->format);
}
