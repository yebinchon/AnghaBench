
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
struct cmd {int val; int reg; } ;


 int reg_w (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static void reg_w_buf(struct gspca_dev *gspca_dev,
   const struct cmd *p, int l)
{
 do {
  reg_w(gspca_dev, p->reg, p->val);
  p++;
 } while (--l > 0);
}
