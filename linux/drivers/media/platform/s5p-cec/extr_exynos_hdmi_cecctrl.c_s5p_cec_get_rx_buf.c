
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct s5p_cec_dev {int dev; scalar_t__ reg; } ;


 scalar_t__ S5P_CEC_RX_BUFF0 ;
 int dev_dbg (int ,char*,size_t,char*) ;
 int readb (scalar_t__) ;
 int sprintf (char*,char*,int) ;

void s5p_cec_get_rx_buf(struct s5p_cec_dev *cec, u32 size, u8 *buffer)
{
 u32 i = 0;
 char debug[40];

 while (i < size) {
  buffer[i] = readb(cec->reg + S5P_CEC_RX_BUFF0 + (i * 4));
  sprintf(debug + i * 2, "%02x ", buffer[i]);
  i++;
 }
 dev_dbg(cec->dev, "cec-rx: cec size(%d): %s", size, debug);
}
