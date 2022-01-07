
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static unsigned int get_msg_chksum(const u32 msg[], unsigned int max)
{
 unsigned int sum = 0;
 unsigned int i;


 for (i = 0; i < max; i++)
  sum += msg[i];

 return sum;
}
