
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int * htc_ops; } ;


 int ath6kl_htc_pipe_ops ;

void ath6kl_htc_pipe_attach(struct ath6kl *ar)
{
 ar->htc_ops = &ath6kl_htc_pipe_ops;
}
