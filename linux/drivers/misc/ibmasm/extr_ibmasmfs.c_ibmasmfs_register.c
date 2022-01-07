
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ibmasmfs_type ;
 int register_filesystem (int *) ;

int ibmasmfs_register(void)
{
 return register_filesystem(&ibmasmfs_type);
}
