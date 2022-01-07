
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int features; } ;
struct qede_reload_args {TYPE_2__ u; } ;
struct qede_dev {TYPE_1__* ndev; } ;
struct TYPE_3__ {int features; } ;



__attribute__((used)) static void qede_set_features_reload(struct qede_dev *edev,
         struct qede_reload_args *args)
{
 edev->ndev->features = args->u.features;
}
