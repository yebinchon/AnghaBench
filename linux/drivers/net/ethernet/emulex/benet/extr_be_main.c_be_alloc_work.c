
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_cmd_work {struct be_adapter* adapter; int work; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int dev_err (int *,char*) ;
 struct be_cmd_work* kzalloc (int,int ) ;

__attribute__((used)) static struct be_cmd_work *be_alloc_work(struct be_adapter *adapter,
      void (*func)(struct work_struct *))
{
 struct be_cmd_work *work;

 work = kzalloc(sizeof(*work), GFP_ATOMIC);
 if (!work) {
  dev_err(&adapter->pdev->dev,
   "be_work memory allocation failed\n");
  return ((void*)0);
 }

 INIT_WORK(&work->work, func);
 work->adapter = adapter;
 return work;
}
