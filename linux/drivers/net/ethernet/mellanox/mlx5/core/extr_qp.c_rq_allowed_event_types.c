
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BIT (int ) ;
 int MLX5_EVENT_TYPE_SRQ_LAST_WQE ;
 int MLX5_EVENT_TYPE_WQ_CATAS_ERROR ;

__attribute__((used)) static u64 rq_allowed_event_types(void)
{
 u64 mask;

 mask = BIT(MLX5_EVENT_TYPE_SRQ_LAST_WQE) |
        BIT(MLX5_EVENT_TYPE_WQ_CATAS_ERROR);

 return mask;
}
