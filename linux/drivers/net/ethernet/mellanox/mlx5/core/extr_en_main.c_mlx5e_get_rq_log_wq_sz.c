
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_GET (void*,void*,int ) ;
 int log_wq_sz ;
 void* wq ;

__attribute__((used)) static u8 mlx5e_get_rq_log_wq_sz(void *rqc)
{
 void *wq = MLX5_ADDR_OF(rqc, rqc, wq);

 return MLX5_GET(wq, wq, log_wq_sz);
}
