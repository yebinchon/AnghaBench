
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_mbus_framefmt {scalar_t__ colorspace; scalar_t__ code; } ;
struct s5k6aa {int dummy; } ;
struct TYPE_3__ {scalar_t__ colorspace; scalar_t__ code; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* s5k6aa_formats ;

__attribute__((used)) static int s5k6aa_get_pixfmt_index(struct s5k6aa *s5k6aa,
       struct v4l2_mbus_framefmt *mf)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(s5k6aa_formats); i++)
  if (mf->colorspace == s5k6aa_formats[i].colorspace &&
      mf->code == s5k6aa_formats[i].code)
   return i;
 return 0;
}
