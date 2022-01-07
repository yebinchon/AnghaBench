
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_eq {int dummy; } ;


 int set_ctrl0 (struct hinic_eq*) ;
 int set_ctrl1 (struct hinic_eq*) ;

__attribute__((used)) static void set_eq_ctrls(struct hinic_eq *eq)
{
 set_ctrl0(eq);
 set_ctrl1(eq);
}
