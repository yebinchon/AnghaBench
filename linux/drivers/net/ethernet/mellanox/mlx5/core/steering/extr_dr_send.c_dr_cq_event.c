
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_cq {int cqn; } ;
typedef enum mlx5_event { ____Placeholder_mlx5_event } mlx5_event ;


 int pr_info (char*,int,int ) ;

__attribute__((used)) static void dr_cq_event(struct mlx5_core_cq *mcq,
   enum mlx5_event event)
{
 pr_info("CQ event %u on CQ #%u\n", event, mcq->cqn);
}
