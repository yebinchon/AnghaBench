
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; int member_1; } ;
typedef TYPE_1__ u8 ;
struct gspca_dev {int dummy; } ;
typedef TYPE_1__ s32 ;


 int jlj_write2 (struct gspca_dev*,TYPE_1__*) ;

__attribute__((used)) static void setred(struct gspca_dev *gspca_dev, s32 val)
{
 u8 setred_commands[][2] = {
  {0x94, 0x02},
  {0xe6, 0x00}
 };

 setred_commands[1][1] = val;

 jlj_write2(gspca_dev, setred_commands[0]);
 jlj_write2(gspca_dev, setred_commands[1]);
}
