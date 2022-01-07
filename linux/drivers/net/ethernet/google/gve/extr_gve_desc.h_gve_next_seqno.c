
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 gve_next_seqno(u8 seq)
{
 return (seq + 1) == 8 ? 1 : seq + 1;
}
