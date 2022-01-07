
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wss ;
typedef int u8 ;
typedef int u16 ;
struct v4l2_sliced_vbi_data {int* data; } ;


 int wss_insert (int *,unsigned int const,int) ;

__attribute__((used)) static void vivid_vbi_gen_wss_raw(const struct v4l2_sliced_vbi_data *data,
  u8 *buf, unsigned sampling_rate)
{
 const unsigned rate = 5000000;
 u8 wss[29 + 24 + 24 + 24 + 18 + 18] = { 0 };
 const unsigned zero = 0x07;
 const unsigned one = 0x38;
 unsigned bit = 0;
 u16 wss_data;
 int i;

 wss_insert(wss + bit, 0x1f1c71c7, 29); bit += 29;
 wss_insert(wss + bit, 0x1e3c1f, 24); bit += 24;

 wss_data = (data->data[1] << 8) | data->data[0];
 for (i = 0; i <= 13; i++, bit += 6)
  wss_insert(wss + bit, (wss_data & (1 << i)) ? one : zero, 6);

 for (i = 0, bit = 0; bit < sizeof(wss); bit++) {
  unsigned n = ((bit + 1) * sampling_rate) / rate;

  while (i < n)
   buf[i++] = wss[bit];
 }
}
