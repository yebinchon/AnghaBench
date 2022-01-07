
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int member_1; int member_0; } ;
typedef TYPE_3__ u32 ;
struct imx319 {TYPE_2__* hflip; TYPE_1__* vflip; int mutex; } ;
struct TYPE_6__ {size_t val; } ;
struct TYPE_5__ {size_t val; } ;






 int lockdep_assert_held (int *) ;

__attribute__((used)) static u32 imx319_get_format_code(struct imx319 *imx319)
{




 u32 code;
 static const u32 codes[2][2] = {
  { 128, 129, },
  { 130, 131, },
 };

 lockdep_assert_held(&imx319->mutex);
 code = codes[imx319->vflip->val][imx319->hflip->val];

 return code;
}
