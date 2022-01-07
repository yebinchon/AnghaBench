
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct realtek_smi {int dummy; } ;


 int realtek_smi_write_bits (struct realtek_smi*,int ,int) ;

__attribute__((used)) static int realtek_smi_write_byte_noack(struct realtek_smi *smi, u8 data)
{
 realtek_smi_write_bits(smi, data, 8);
 return 0;
}
