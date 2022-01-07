
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ams_delta_nand {scalar_t__ data_in; } ;


 int ams_delta_dir_output (struct ams_delta_nand*,int const) ;
 int ams_delta_io_write (struct ams_delta_nand*,int const) ;

__attribute__((used)) static void ams_delta_write_buf(struct ams_delta_nand *priv, const u8 *buf,
    int len)
{
 int i = 0;

 if (len > 0 && priv->data_in)
  ams_delta_dir_output(priv, buf[i++]);

 while (i < len)
  ams_delta_io_write(priv, buf[i++]);
}
