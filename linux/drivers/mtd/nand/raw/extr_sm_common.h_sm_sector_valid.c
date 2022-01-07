
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_oob {int data_status; } ;


 int hweight16 (int ) ;

__attribute__((used)) static inline int sm_sector_valid(struct sm_oob *oob)
{
 return hweight16(oob->data_status) >= 5;
}
