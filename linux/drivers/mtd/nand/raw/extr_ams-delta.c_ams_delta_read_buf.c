
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ams_delta_nand {int data_in; } ;


 int ams_delta_dir_input (struct ams_delta_nand*) ;
 int ams_delta_io_read (struct ams_delta_nand*) ;

__attribute__((used)) static void ams_delta_read_buf(struct ams_delta_nand *priv, u8 *buf, int len)
{
 int i;

 if (!priv->data_in)
  ams_delta_dir_input(priv);

 for (i = 0; i < len; i++)
  buf[i] = ams_delta_io_read(priv);
}
