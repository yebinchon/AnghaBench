
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * i2400m_barker_db ;
 scalar_t__ i2400m_barker_db_size ;
 scalar_t__ i2400m_barker_db_used ;
 int kfree (int *) ;

void i2400m_barker_db_exit(void)
{
 kfree(i2400m_barker_db);
 i2400m_barker_db = ((void*)0);
 i2400m_barker_db_size = 0;
 i2400m_barker_db_used = 0;
}
