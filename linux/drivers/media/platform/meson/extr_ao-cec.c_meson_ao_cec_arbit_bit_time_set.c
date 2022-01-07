
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_ao_cec_device {int dummy; } ;





 int CEC_TXTIME_17MS_BIT10_8 ;
 int CEC_TXTIME_17MS_BIT7_0 ;
 int CEC_TXTIME_2BIT_BIT10_8 ;
 int CEC_TXTIME_2BIT_BIT7_0 ;
 int CEC_TXTIME_4BIT_BIT10_8 ;
 int CEC_TXTIME_4BIT_BIT7_0 ;
 int meson_ao_cec_write (struct meson_ao_cec_device*,int ,unsigned int,int*) ;

__attribute__((used)) static int meson_ao_cec_arbit_bit_time_set(struct meson_ao_cec_device *ao_cec,
        unsigned int bit_set,
        unsigned int time_set)
{
 int ret = 0;

 switch (bit_set) {
 case 128:
  meson_ao_cec_write(ao_cec, CEC_TXTIME_4BIT_BIT7_0,
       time_set & 0xff, &ret);
  meson_ao_cec_write(ao_cec, CEC_TXTIME_4BIT_BIT10_8,
       (time_set >> 8) & 0x7, &ret);
  break;

 case 130:
  meson_ao_cec_write(ao_cec, CEC_TXTIME_2BIT_BIT7_0,
       time_set & 0xff, &ret);
  meson_ao_cec_write(ao_cec, CEC_TXTIME_2BIT_BIT10_8,
       (time_set >> 8) & 0x7, &ret);
  break;

 case 129:
  meson_ao_cec_write(ao_cec, CEC_TXTIME_17MS_BIT7_0,
       time_set & 0xff, &ret);
  meson_ao_cec_write(ao_cec, CEC_TXTIME_17MS_BIT10_8,
       (time_set >> 8) & 0x7, &ret);
  break;
 }

 return ret;
}
