
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsd_db {int * lens; int * dict; } ;


 int kfree (struct bsd_db*) ;
 int vfree (int *) ;

__attribute__((used)) static void bsd_free (void *state)
{
 struct bsd_db *db = state;

 if (!db)
  return;




 vfree(db->dict);
 db->dict = ((void*)0);



 vfree(db->lens);
 db->lens = ((void*)0);



 kfree(db);
}
