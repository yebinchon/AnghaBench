
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bs {int dummy; } ;


 int bs_write_ue (struct bs*,int) ;

__attribute__((used)) static void bs_write_se(struct bs *s, int val)
{
 bs_write_ue(s, val <= 0 ? -val * 2 : val * 2 - 1);
}
