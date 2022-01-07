
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cnic_id_tbl {int * table; } ;


 int kfree (int *) ;

__attribute__((used)) static void cnic_free_id_tbl(struct cnic_id_tbl *id_tbl)
{
 kfree(id_tbl->table);
 id_tbl->table = ((void*)0);
}
