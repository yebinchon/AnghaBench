
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct av7110 {int debi_virt; } ;


 int av7110_debiwrite (struct av7110*,int ,int,int ,int) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static inline void mwdebi(struct av7110 *av7110, u32 config, int addr,
     const u8 *val, int count)
{
 memcpy(av7110->debi_virt, val, count);
 av7110_debiwrite(av7110, config, addr, 0, count);
}
