
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct realtek_smi {int dummy; } ;


 int realtek_smi_read_bits (struct realtek_smi*,int,int*) ;
 int realtek_smi_write_bits (struct realtek_smi*,int,int) ;

__attribute__((used)) static int realtek_smi_read_byte0(struct realtek_smi *smi, u8 *data)
{
 u32 t;


 realtek_smi_read_bits(smi, 8, &t);
 *data = (t & 0xff);


 realtek_smi_write_bits(smi, 0x00, 1);

 return 0;
}
