
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_platform_data {int (* init_func ) (struct lp8788*) ;} ;
struct lp8788 {struct lp8788_platform_data* pdata; } ;


 int stub1 (struct lp8788*) ;

__attribute__((used)) static int lp8788_platform_init(struct lp8788 *lp)
{
 struct lp8788_platform_data *pdata = lp->pdata;

 return (pdata && pdata->init_func) ? pdata->init_func(lp) : 0;
}
