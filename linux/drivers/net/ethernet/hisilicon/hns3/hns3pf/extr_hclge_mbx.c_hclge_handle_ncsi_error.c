
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hnae3_ae_dev {TYPE_1__* ops; } ;
struct hclge_dev {TYPE_2__* pdev; struct hnae3_ae_dev* ae_dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* reset_event ) (TYPE_2__*,int *) ;int (* set_default_reset_request ) (struct hnae3_ae_dev*,int ) ;} ;


 int HNAE3_GLOBAL_RESET ;
 int dev_warn (int *,char*) ;
 int stub1 (struct hnae3_ae_dev*,int ) ;
 int stub2 (TYPE_2__*,int *) ;

__attribute__((used)) static void hclge_handle_ncsi_error(struct hclge_dev *hdev)
{
 struct hnae3_ae_dev *ae_dev = hdev->ae_dev;

 ae_dev->ops->set_default_reset_request(ae_dev, HNAE3_GLOBAL_RESET);
 dev_warn(&hdev->pdev->dev, "requesting reset due to NCSI error\n");
 ae_dev->ops->reset_event(hdev->pdev, ((void*)0));
}
