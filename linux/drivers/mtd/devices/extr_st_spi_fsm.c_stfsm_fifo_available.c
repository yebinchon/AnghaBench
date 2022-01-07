
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stfsm {scalar_t__ base; } ;


 scalar_t__ SPI_FAST_SEQ_STA ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline uint32_t stfsm_fifo_available(struct stfsm *fsm)
{
 return (readl(fsm->base + SPI_FAST_SEQ_STA) >> 5) & 0x7f;
}
