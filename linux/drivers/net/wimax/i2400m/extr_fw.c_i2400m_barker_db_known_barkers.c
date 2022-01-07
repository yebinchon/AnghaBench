
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2400M_NBOOT_BARKER ;
 int I2400M_SBOOT_BARKER ;
 int I2400M_SBOOT_BARKER_6050 ;
 int i2400m_barker_db_add (int ) ;

__attribute__((used)) static
int i2400m_barker_db_known_barkers(void)
{
 int result;

 result = i2400m_barker_db_add(I2400M_NBOOT_BARKER);
 if (result < 0)
  goto error_add;
 result = i2400m_barker_db_add(I2400M_SBOOT_BARKER);
 if (result < 0)
  goto error_add;
 result = i2400m_barker_db_add(I2400M_SBOOT_BARKER_6050);
 if (result < 0)
  goto error_add;
error_add:
       return result;
}
