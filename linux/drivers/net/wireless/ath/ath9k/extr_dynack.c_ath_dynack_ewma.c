
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EWMA_DIV ;
 int EWMA_LEVEL ;

__attribute__((used)) static inline int ath_dynack_ewma(int old, int new)
{
 if (old > 0)
  return (new * (EWMA_DIV - EWMA_LEVEL) +
   old * EWMA_LEVEL) / EWMA_DIV;
 else
  return new;
}
