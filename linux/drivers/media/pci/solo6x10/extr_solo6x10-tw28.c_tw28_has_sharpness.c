
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct solo_dev {int dummy; } ;


 int is_tw286x (struct solo_dev*,int) ;

bool tw28_has_sharpness(struct solo_dev *solo_dev, u8 ch)
{
 return is_tw286x(solo_dev, ch / 4);
}
