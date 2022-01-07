
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pegasus_t ;
typedef int __u8 ;
typedef int __u16 ;


 int PHY_READ ;
 int __mii_op (int *,int ,int ,int *,int ) ;

__attribute__((used)) static int read_mii_word(pegasus_t *pegasus, __u8 phy, __u8 indx, __u16 *regd)
{
 return __mii_op(pegasus, phy, indx, regd, PHY_READ);
}
