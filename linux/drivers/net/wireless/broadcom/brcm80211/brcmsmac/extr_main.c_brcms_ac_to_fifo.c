
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (size_t*) ;
 size_t TX_AC_BE_FIFO ;
 size_t* ac_to_fifo_mapping ;

__attribute__((used)) static u8 brcms_ac_to_fifo(u8 ac)
{
 if (ac >= ARRAY_SIZE(ac_to_fifo_mapping))
  return TX_AC_BE_FIFO;
 return ac_to_fifo_mapping[ac];
}
