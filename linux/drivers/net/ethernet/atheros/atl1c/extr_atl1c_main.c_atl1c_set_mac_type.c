
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_hw {int device_id; int nic_type; } ;
 int athr_l1c ;
 int athr_l1d ;
 int athr_l1d_2 ;
 int athr_l2c ;
 int athr_l2c_b ;
 int athr_l2c_b2 ;

__attribute__((used)) static void atl1c_set_mac_type(struct atl1c_hw *hw)
{
 switch (hw->device_id) {
 case 128:
  hw->nic_type = athr_l2c;
  break;
 case 129:
  hw->nic_type = athr_l1c;
  break;
 case 131:
  hw->nic_type = athr_l2c_b;
  break;
 case 130:
  hw->nic_type = athr_l2c_b2;
  break;
 case 133:
  hw->nic_type = athr_l1d;
  break;
 case 132:
  hw->nic_type = athr_l1d_2;
  break;
 default:
  break;
 }
}
