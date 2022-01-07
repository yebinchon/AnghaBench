
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stfsm {scalar_t__ base; } ;


 scalar_t__ SPI_FAST_SEQ_STA ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int stfsm_is_idle(struct stfsm *fsm)
{
 return readl(fsm->base + SPI_FAST_SEQ_STA) & 0x10;
}
