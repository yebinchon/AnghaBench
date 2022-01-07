
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int state; } ;


 int EBUSY ;
 int __I40E_CONFIG_BUSY ;
 scalar_t__ test_and_set_bit (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int i40e_enter_busy_conf(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;
 int timeout = 50;

 while (test_and_set_bit(__I40E_CONFIG_BUSY, pf->state)) {
  timeout--;
  if (!timeout)
   return -EBUSY;
  usleep_range(1000, 2000);
 }

 return 0;
}
