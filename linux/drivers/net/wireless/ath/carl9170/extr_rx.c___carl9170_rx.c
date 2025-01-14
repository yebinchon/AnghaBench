
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ar9170 {int dummy; } ;


 int carl9170_rx_untie_cmds (struct ar9170*,int*,unsigned int) ;
 int carl9170_rx_untie_data (struct ar9170*,int*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __carl9170_rx(struct ar9170 *ar, u8 *buf, unsigned int len)
{
 unsigned int i = 0;


 while (len > 2 && i < 12 && buf[0] == 0xff && buf[1] == 0xff) {
  i += 2;
  len -= 2;
  buf += 2;
 }

 if (unlikely(len < 4))
  return;


 if (i == 12)
  carl9170_rx_untie_cmds(ar, buf, len);
 else
  carl9170_rx_untie_data(ar, buf, len);
}
