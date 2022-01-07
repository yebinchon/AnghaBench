
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CUDBG_ZLIB_MEM_LVL ;
 int CUDBG_ZLIB_WIN_BITS ;
 int zlib_deflate_workspacesize (int ,int ) ;

__attribute__((used)) static inline int cudbg_get_workspace_size(void)
{
 return zlib_deflate_workspacesize(CUDBG_ZLIB_WIN_BITS,
       CUDBG_ZLIB_MEM_LVL);
}
