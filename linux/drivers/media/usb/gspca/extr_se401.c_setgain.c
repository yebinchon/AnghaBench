
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;


 int HV7131_REG_ABCG ;
 int HV7131_REG_AGCG ;
 int HV7131_REG_ARCG ;
 int se401_set_feature (struct gspca_dev*,int ,scalar_t__) ;

__attribute__((used)) static void setgain(struct gspca_dev *gspca_dev, s32 val)
{
 u16 gain = 63 - val;


 se401_set_feature(gspca_dev, HV7131_REG_ARCG, gain);

 se401_set_feature(gspca_dev, HV7131_REG_AGCG, gain);

 se401_set_feature(gspca_dev, HV7131_REG_ABCG, gain);
}
