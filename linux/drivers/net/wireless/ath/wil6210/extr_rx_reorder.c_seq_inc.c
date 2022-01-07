
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SEQ_MASK ;

__attribute__((used)) static inline u16 seq_inc(u16 sq)
{
 return (sq + 1) & SEQ_MASK;
}
