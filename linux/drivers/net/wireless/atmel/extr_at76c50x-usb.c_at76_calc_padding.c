
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AT76_TX_HDRLEN ;

__attribute__((used)) static inline int at76_calc_padding(int wlen)
{

 wlen += AT76_TX_HDRLEN;

 wlen = wlen % 64;

 if (wlen < 50)
  return 50 - wlen;

 if (wlen >= 61)
  return 64 + 50 - wlen;

 return 0;
}
