
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int dummy; } ;


 int DEBINOSWAP ;
 int IRQ_RX ;
 int iwdebi (struct av7110*,int ,int ,int ,int) ;

__attribute__((used)) static inline void ARM_ClearMailBox(struct av7110 *av7110)
{
 iwdebi(av7110, DEBINOSWAP, IRQ_RX, 0, 2);
}
