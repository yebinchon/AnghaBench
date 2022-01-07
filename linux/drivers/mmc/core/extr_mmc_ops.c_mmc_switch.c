
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mmc_card {int dummy; } ;


 int __mmc_switch (struct mmc_card*,int ,int ,int ,unsigned int,int ,int,int,int) ;

int mmc_switch(struct mmc_card *card, u8 set, u8 index, u8 value,
  unsigned int timeout_ms)
{
 return __mmc_switch(card, set, index, value, timeout_ms, 0,
   1, 1, 0);
}
