
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx319 {int dummy; } ;


 int IMX319_MODE_STANDBY ;
 int IMX319_REG_MODE_SELECT ;
 int imx319_write_reg (struct imx319*,int ,int,int ) ;

__attribute__((used)) static int imx319_stop_streaming(struct imx319 *imx319)
{
 return imx319_write_reg(imx319, IMX319_REG_MODE_SELECT,
    1, IMX319_MODE_STANDBY);
}
