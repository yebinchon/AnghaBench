
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TX_QUEUE_ENTRIES ;

__attribute__((used)) static int ftmac100_next_tx_pointer(int pointer)
{
 return (pointer + 1) & (TX_QUEUE_ENTRIES - 1);
}
