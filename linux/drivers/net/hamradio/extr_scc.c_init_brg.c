
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_channel {int* wreg; int ctrl; } ;


 int BRSRC ;
 int OutReg (int ,size_t,int) ;
 size_t R14 ;
 int SNRZI ;
 int SSBR ;
 int wr (struct scc_channel*,size_t,int ) ;

__attribute__((used)) static inline void init_brg(struct scc_channel *scc)
{
 wr(scc, R14, BRSRC);
 OutReg(scc->ctrl, R14, SSBR|scc->wreg[R14]);
 OutReg(scc->ctrl, R14, SNRZI|scc->wreg[R14]);
}
