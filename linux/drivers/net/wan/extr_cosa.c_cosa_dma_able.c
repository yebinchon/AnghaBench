
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_data {int name; } ;


 unsigned long MAX_DMA_ADDRESS ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int cosa_dma_able(struct channel_data *chan, char *buf, int len)
{
 static int count;
 unsigned long b = (unsigned long)buf;
 if (b+len >= MAX_DMA_ADDRESS)
  return 0;
 if ((b^ (b+len)) & 0x10000) {
  if (count++ < 5)
   pr_info("%s: packet spanning a 64k boundary\n",
    chan->name);
  return 0;
 }
 return 1;
}
