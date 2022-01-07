
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DDB_NAME ;
 scalar_t__ class_register (int *) ;
 int ddb_class ;
 int ddb_fops ;
 scalar_t__ ddb_major ;
 scalar_t__ register_chrdev (int ,int ,int *) ;

__attribute__((used)) static int ddb_class_create(void)
{
 ddb_major = register_chrdev(0, DDB_NAME, &ddb_fops);
 if (ddb_major < 0)
  return ddb_major;
 if (class_register(&ddb_class) < 0)
  return -1;
 return 0;
}
