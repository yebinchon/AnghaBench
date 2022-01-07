
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_spi_card {scalar_t__ prev_xfer_time; } ;


 int jiffies ;
 int ndelay (int) ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static void spu_transaction_init(struct if_spi_card *card)
{
 if (!time_after(jiffies, card->prev_xfer_time + 1)) {




  ndelay(400);
 }
}
