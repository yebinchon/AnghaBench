
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_txqsq {scalar_t__ cc; scalar_t__ pc; scalar_t__ dma_fifo_cc; int sqn; } ;


 int WARN_ONCE (int,char*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void mlx5e_reset_txqsq_cc_pc(struct mlx5e_txqsq *sq)
{
 WARN_ONCE(sq->cc != sq->pc,
    "SQ 0x%x: cc (0x%x) != pc (0x%x)\n",
    sq->sqn, sq->cc, sq->pc);
 sq->cc = 0;
 sq->dma_fifo_cc = 0;
 sq->pc = 0;
}
