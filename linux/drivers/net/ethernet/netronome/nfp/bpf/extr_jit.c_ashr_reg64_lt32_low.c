
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_prog {int dummy; } ;


 void shr_reg64_lt32_low (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void ashr_reg64_lt32_low(struct nfp_prog *nfp_prog, u8 dst, u8 src)
{



 return shr_reg64_lt32_low(nfp_prog, dst, src);
}
