
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* frequency_list_bg ;

int
channel_of_freq(int f)
{
 int c = 0;

 if ((f >= 2412) && (f <= 2484)) {
  while ((c < 14) && (f != frequency_list_bg[c]))
   c++;
  return (c >= 14) ? 0 : ++c;
 } else if ((f >= (int) 5000) && (f <= (int) 6000)) {
  return ( (f - 5000) / 5 );
 } else
  return 0;
}
