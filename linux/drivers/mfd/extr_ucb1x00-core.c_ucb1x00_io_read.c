
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {int dummy; } ;


 int UCB_IO_DATA ;
 unsigned int ucb1x00_reg_read (struct ucb1x00*,int ) ;

unsigned int ucb1x00_io_read(struct ucb1x00 *ucb)
{
 return ucb1x00_reg_read(ucb, UCB_IO_DATA);
}
