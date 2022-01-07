
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftmac100_txdes {int txdes1; } ;


 int FTMAC100_TXDES1_TXBUF_SIZE (unsigned int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void ftmac100_txdes_set_buffer_size(struct ftmac100_txdes *txdes,
        unsigned int len)
{
 txdes->txdes1 |= cpu_to_le32(FTMAC100_TXDES1_TXBUF_SIZE(len));
}
