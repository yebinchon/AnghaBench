
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_ops {int mode; } ;


 int EINVAL ;




__attribute__((used)) static int doc_guess_autoecc(struct mtd_oob_ops *ops)
{
 int autoecc;

 switch (ops->mode) {
 case 129:
 case 130:
  autoecc = 1;
  break;
 case 128:
  autoecc = 0;
  break;
 default:
  autoecc = -EINVAL;
 }
 return autoecc;
}
