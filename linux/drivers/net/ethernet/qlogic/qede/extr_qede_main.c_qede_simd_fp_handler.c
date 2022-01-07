
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_fastpath {int napi; } ;


 int napi_schedule_irqoff (int *) ;

__attribute__((used)) static void qede_simd_fp_handler(void *cookie)
{
 struct qede_fastpath *fp = (struct qede_fastpath *)cookie;

 napi_schedule_irqoff(&fp->napi);
}
