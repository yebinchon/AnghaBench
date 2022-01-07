
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usleep_range (unsigned long,unsigned long) ;

__attribute__((used)) static void send_space(unsigned long len)
{
 usleep_range(len, len + 25);
}
