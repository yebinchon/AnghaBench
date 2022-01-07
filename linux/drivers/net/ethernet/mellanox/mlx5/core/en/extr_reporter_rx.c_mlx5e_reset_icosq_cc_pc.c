
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_icosq {scalar_t__ cc; scalar_t__ pc; int sqn; } ;


 int WARN_ONCE (int,char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void mlx5e_reset_icosq_cc_pc(struct mlx5e_icosq *icosq)
{
 WARN_ONCE(icosq->cc != icosq->pc, "ICOSQ 0x%x: cc (0x%x) != pc (0x%x)\n",
    icosq->sqn, icosq->cc, icosq->pc);
 icosq->cc = 0;
 icosq->pc = 0;
}
