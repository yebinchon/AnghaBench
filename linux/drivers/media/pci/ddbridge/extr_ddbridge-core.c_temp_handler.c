
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_link {int temp_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tempmon_setfan (struct ddb_link*) ;

__attribute__((used)) static void temp_handler(void *data)
{
 struct ddb_link *link = (struct ddb_link *)data;

 spin_lock(&link->temp_lock);
 tempmon_setfan(link);
 spin_unlock(&link->temp_lock);
}
