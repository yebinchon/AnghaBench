
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct board_info {scalar_t__ in_timeout; scalar_t__ in_suspend; } ;


 int mdelay (unsigned int) ;
 int msleep (unsigned int) ;

__attribute__((used)) static void dm9000_msleep(struct board_info *db, unsigned int ms)
{
 if (db->in_suspend || db->in_timeout)
  mdelay(ms);
 else
  msleep(ms);
}
