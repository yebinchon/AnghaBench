
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MVPP2_MAX_TCONT ;
 int MVPP2_MAX_TXQ ;

__attribute__((used)) static inline int mvpp2_txq_phys(int port, int txq)
{
 return (MVPP2_MAX_TCONT + port) * MVPP2_MAX_TXQ + txq;
}
