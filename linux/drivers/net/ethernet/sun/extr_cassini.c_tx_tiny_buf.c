
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {void** tx_tiny_bufs; } ;


 int const TX_TINY_BUF_LEN ;

__attribute__((used)) static inline void *tx_tiny_buf(struct cas *cp, const int ring,
    const int entry)
{
 return cp->tx_tiny_bufs[ring] + TX_TINY_BUF_LEN*entry;
}
