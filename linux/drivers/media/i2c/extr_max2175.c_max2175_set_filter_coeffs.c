
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct max2175 {int dummy; } ;


 int max2175_write (struct max2175*,int,int const) ;
 int max2175_write_bit (struct max2175*,int,int,int ) ;
 int max2175_write_bits (struct max2175*,int,int,int,int) ;
 int mxm_dbg (struct max2175*,char*,int,int) ;

__attribute__((used)) static void max2175_set_filter_coeffs(struct max2175 *ctx, u8 m_sel,
          u8 bank, const u16 *coeffs)
{
 unsigned int i;
 u8 coeff_addr, upper_address = 24;

 mxm_dbg(ctx, "set_filter_coeffs: m_sel %d bank %d\n", m_sel, bank);
 max2175_write_bits(ctx, 114, 5, 4, m_sel);

 if (m_sel == 2)
  upper_address = 12;

 for (i = 0; i < upper_address; i++) {
  coeff_addr = i + bank * 24;
  max2175_write(ctx, 115, coeffs[i] >> 8);
  max2175_write(ctx, 116, coeffs[i]);
  max2175_write(ctx, 117, coeff_addr | 1 << 7);
 }
 max2175_write_bit(ctx, 117, 7, 0);
}
