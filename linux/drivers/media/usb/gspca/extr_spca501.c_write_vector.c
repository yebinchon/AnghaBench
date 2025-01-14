
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef scalar_t__ __u16 ;


 int gspca_err (struct gspca_dev*,char*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ;
 int reg_write (struct gspca_dev*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static int write_vector(struct gspca_dev *gspca_dev, const __u16 data[][3])
{
 int ret, i = 0;

 while (data[i][0] != 0 || data[i][1] != 0 || data[i][2] != 0) {
  ret = reg_write(gspca_dev, data[i][0], data[i][2],
        data[i][1]);
  if (ret < 0) {
   gspca_err(gspca_dev, "Reg write failed for 0x%02x,0x%02x,0x%02x\n",
      data[i][0], data[i][1], data[i][2]);
   return ret;
  }
  i++;
 }
 return 0;
}
