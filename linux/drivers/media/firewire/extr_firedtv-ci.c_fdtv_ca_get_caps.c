
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ca_caps {int slot_num; int descr_num; int descr_type; int slot_type; } ;


 int CA_CI ;
 int CA_ECD ;

__attribute__((used)) static int fdtv_ca_get_caps(void *arg)
{
 struct ca_caps *cap = arg;

 cap->slot_num = 1;
 cap->slot_type = CA_CI;
 cap->descr_num = 1;
 cap->descr_type = CA_ECD;
 return 0;
}
