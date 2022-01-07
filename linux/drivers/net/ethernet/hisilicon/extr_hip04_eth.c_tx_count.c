
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TX_DESC_NUM ;

__attribute__((used)) static inline unsigned int tx_count(unsigned int head, unsigned int tail)
{
 return (head - tail) % TX_DESC_NUM;
}
