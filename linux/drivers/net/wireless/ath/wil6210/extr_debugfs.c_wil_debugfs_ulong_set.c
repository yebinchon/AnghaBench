
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u64 ;



__attribute__((used)) static int wil_debugfs_ulong_set(void *data, u64 val)
{
 *(ulong *)data = val;
 return 0;
}
