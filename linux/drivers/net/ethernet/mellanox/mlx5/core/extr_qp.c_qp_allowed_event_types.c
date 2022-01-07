
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BIT (int ) ;
 int MLX5_EVENT_TYPE_COMM_EST ;
 int MLX5_EVENT_TYPE_PATH_MIG ;
 int MLX5_EVENT_TYPE_PATH_MIG_FAILED ;
 int MLX5_EVENT_TYPE_SQ_DRAINED ;
 int MLX5_EVENT_TYPE_SRQ_LAST_WQE ;
 int MLX5_EVENT_TYPE_WQ_ACCESS_ERROR ;
 int MLX5_EVENT_TYPE_WQ_CATAS_ERROR ;
 int MLX5_EVENT_TYPE_WQ_INVAL_REQ_ERROR ;

__attribute__((used)) static u64 qp_allowed_event_types(void)
{
 u64 mask;

 mask = BIT(MLX5_EVENT_TYPE_PATH_MIG) |
        BIT(MLX5_EVENT_TYPE_COMM_EST) |
        BIT(MLX5_EVENT_TYPE_SQ_DRAINED) |
        BIT(MLX5_EVENT_TYPE_SRQ_LAST_WQE) |
        BIT(MLX5_EVENT_TYPE_WQ_CATAS_ERROR) |
        BIT(MLX5_EVENT_TYPE_PATH_MIG_FAILED) |
        BIT(MLX5_EVENT_TYPE_WQ_INVAL_REQ_ERROR) |
        BIT(MLX5_EVENT_TYPE_WQ_ACCESS_ERROR);

 return mask;
}
