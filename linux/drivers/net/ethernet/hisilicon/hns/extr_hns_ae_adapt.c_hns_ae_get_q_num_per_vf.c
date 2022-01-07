
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsaf_device {TYPE_1__** rcb_common; } ;
struct TYPE_2__ {int max_q_per_vf; } ;



__attribute__((used)) static int hns_ae_get_q_num_per_vf(
 struct dsaf_device *dsaf_dev, int port)
{
 return dsaf_dev->rcb_common[0]->max_q_per_vf;
}
