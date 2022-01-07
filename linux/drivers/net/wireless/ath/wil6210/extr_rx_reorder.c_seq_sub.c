
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SEQ_MASK ;

__attribute__((used)) static inline u16 seq_sub(u16 sq1, u16 sq2)
{
 return (sq1 - sq2) & SEQ_MASK;
}
