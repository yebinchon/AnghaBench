
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static inline char *iwl_dbgfs_is_match(char *name, char *buf)
{
 int len = strlen(name);

 return !strncmp(name, buf, len) ? buf + len : ((void*)0);
}
