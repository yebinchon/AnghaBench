
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct g2d_dev {int dummy; } ;


 int BITBLT_COMMAND_REG ;
 int w (int ,int ) ;

void g2d_set_cmd(struct g2d_dev *d, u32 c)
{
 w(c, BITBLT_COMMAND_REG);
}
