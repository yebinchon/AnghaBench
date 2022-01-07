
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx355 {int dummy; } ;


 int IMX355_MODE_STANDBY ;
 int IMX355_REG_MODE_SELECT ;
 int imx355_write_reg (struct imx355*,int ,int,int ) ;

__attribute__((used)) static int imx355_stop_streaming(struct imx355 *imx355)
{
 return imx355_write_reg(imx355, IMX355_REG_MODE_SELECT,
    1, IMX355_MODE_STANDBY);
}
