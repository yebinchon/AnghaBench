
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (int,int ) ;
 int MAL_MAX_TX_SIZE ;

__attribute__((used)) static inline int mal_tx_chunks(int len)
{
 return DIV_ROUND_UP(len, MAL_MAX_TX_SIZE);
}
