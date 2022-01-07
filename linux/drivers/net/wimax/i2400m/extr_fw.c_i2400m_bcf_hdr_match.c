
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i2400m_bcf_hdr {int module_id; } ;
struct i2400m {TYPE_1__* barker; } ;
struct TYPE_2__ {int * data; } ;


 scalar_t__ I2400M_SBOOT_BARKER ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static
unsigned i2400m_bcf_hdr_match(struct i2400m *i2400m,
         const struct i2400m_bcf_hdr *bcf_hdr)
{
 u32 barker = le32_to_cpu(i2400m->barker->data[0])
  & 0x7fffffff;
 u32 module_id = le32_to_cpu(bcf_hdr->module_id)
  & 0x7fffffff;


 if (barker == I2400M_SBOOT_BARKER && module_id == 0)
  return 1;
 if (module_id == barker)
  return 1;
 return 0;
}
