
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_calls {int dummy; } ;


 struct cxl_calls* cxl_calls ;

__attribute__((used)) static inline struct cxl_calls *cxl_calls_get(void)
{
 return cxl_calls;
}
