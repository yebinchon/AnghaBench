
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int dummy; } ;
struct phtw_value {int data; int code; } ;


 int rcsi2_phtw_write_array (struct rcar_csi2*,struct phtw_value const*) ;

__attribute__((used)) static int rcsi2_confirm_start_v3m_e3(struct rcar_csi2 *priv)
{
 static const struct phtw_value step1[] = {
  { .data = 0xee, .code = 0x34 },
  { .data = 0xee, .code = 0x44 },
  { .data = 0xee, .code = 0x54 },
  { .data = 0xee, .code = 0x84 },
  { .data = 0xee, .code = 0x94 },
  { },
 };

 return rcsi2_phtw_write_array(priv, step1);
}
