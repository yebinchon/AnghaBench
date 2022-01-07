
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDB_NAME ;
 int class_unregister (int *) ;
 int ddb_class ;
 int ddb_major ;
 int unregister_chrdev (int ,int ) ;

__attribute__((used)) static void ddb_class_destroy(void)
{
 class_unregister(&ddb_class);
 unregister_chrdev(ddb_major, DDB_NAME);
}
