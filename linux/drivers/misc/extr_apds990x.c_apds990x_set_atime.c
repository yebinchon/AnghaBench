
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct apds990x_chip {int atime; int a_max_result; } ;


 int APDS990X_ATIME ;
 int APDS990X_TIME_TO_ADC ;
 int TIMESTEP ;
 int TIME_STEP_SCALER ;
 int apds990x_write_byte (struct apds990x_chip*,int ,int) ;

__attribute__((used)) static inline int apds990x_set_atime(struct apds990x_chip *chip, u32 time_ms)
{
 u8 reg_value;

 chip->atime = time_ms;

 reg_value = 256 - ((time_ms * TIME_STEP_SCALER) / TIMESTEP);

 chip->a_max_result = (u16)(256 - reg_value) * APDS990X_TIME_TO_ADC;
 return apds990x_write_byte(chip, APDS990X_ATIME, reg_value);
}
