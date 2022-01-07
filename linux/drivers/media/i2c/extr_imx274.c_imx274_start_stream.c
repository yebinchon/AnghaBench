
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stimx274 {int dummy; } ;


 int imx274_start_2 ;
 int imx274_start_3 ;
 int imx274_write_table (struct stimx274*,int ) ;
 int msleep_range (int) ;

__attribute__((used)) static int imx274_start_stream(struct stimx274 *priv)
{
 int err = 0;






 msleep_range(11);
 err = imx274_write_table(priv, imx274_start_2);
 if (err)
  return err;






 msleep_range(8);
 err = imx274_write_table(priv, imx274_start_3);
 if (err)
  return err;

 return 0;
}
