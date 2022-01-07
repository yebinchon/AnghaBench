
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
struct cmd {int val; int idx; int req; } ;


 int reg_w_riv (struct gspca_dev*,int ,int ,int ) ;

__attribute__((used)) static void write_vector(struct gspca_dev *gspca_dev,
   const struct cmd *data, int ncmds)
{
 while (--ncmds >= 0) {
  reg_w_riv(gspca_dev, data->req, data->idx, data->val);
  data++;
 }
}
