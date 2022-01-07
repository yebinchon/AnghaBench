
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ppp_channel {struct channel* ppp; } ;
struct TYPE_2__ {int index; } ;
struct channel {TYPE_1__ file; } ;



int ppp_channel_index(struct ppp_channel *chan)
{
 struct channel *pch = chan->ppp;

 if (pch)
  return pch->file.index;
 return -1;
}
