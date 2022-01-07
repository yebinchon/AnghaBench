
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; int default_reset_request; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 struct hclge_dev* from_timer (int ,struct timer_list*,int ) ;
 int hclge_reset_event (TYPE_1__*,int *) ;
 struct hclge_dev* hdev ;
 int reset_timer ;

__attribute__((used)) static void hclge_reset_timer(struct timer_list *t)
{
 struct hclge_dev *hdev = from_timer(hdev, t, reset_timer);




 if (!hdev->default_reset_request)
  return;

 dev_info(&hdev->pdev->dev,
   "triggering reset in reset timer\n");
 hclge_reset_event(hdev->pdev, ((void*)0));
}
