
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_bootrom_header {int command; } ;
typedef enum i2400m_brh_opcode { ____Placeholder_i2400m_brh_opcode } i2400m_brh_opcode ;


 int I2400M_BRH_OPCODE_MASK ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline
void i2400m_brh_set_opcode(struct i2400m_bootrom_header *hdr,
      enum i2400m_brh_opcode opcode)
{
 hdr->command = cpu_to_le32(
  (le32_to_cpu(hdr->command) & ~I2400M_BRH_OPCODE_MASK)
  | (opcode & I2400M_BRH_OPCODE_MASK));
}
