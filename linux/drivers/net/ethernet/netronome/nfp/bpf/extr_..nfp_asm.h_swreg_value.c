
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int swreg ;


 int FIELD_GET (int ,int ) ;
 int NN_REG_VAL ;
 int swreg_raw (int ) ;

__attribute__((used)) static inline u16 swreg_value(swreg reg)
{
 return FIELD_GET(NN_REG_VAL, swreg_raw(reg));
}
