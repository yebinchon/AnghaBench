
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct av7110 {int dummy; } ;


 int av7110_debiwrite (struct av7110*,int ,int,int ,unsigned int) ;

__attribute__((used)) static inline void iwdebi(struct av7110 *av7110, u32 config, int addr, u32 val, unsigned int count)
{
 av7110_debiwrite(av7110, config, addr, val, count);
}
