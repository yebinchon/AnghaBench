
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kcqe {int dummy; } ;
struct cnic_dev {int dummy; } ;


 int cnic_cm_process_kcqe (struct cnic_dev*,struct kcqe*) ;

__attribute__((used)) static void cnic_cm_indicate_kcqe(void *data, struct kcqe *kcqe[], u32 num)
{
 struct cnic_dev *dev = data;
 int i;

 for (i = 0; i < num; i++)
  cnic_cm_process_kcqe(dev, kcqe[i]);
}
