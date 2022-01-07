
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int BUFPOOL_DESC_SIZE ;
 int WORK_DESC_SIZE ;
 int xgene_enet_is_bufpool (int) ;

__attribute__((used)) static inline u16 xgene_enet_get_numslots(u16 id, u32 size)
{
 bool is_bufpool = xgene_enet_is_bufpool(id);

 return (is_bufpool) ? size / BUFPOOL_DESC_SIZE :
        size / WORK_DESC_SIZE;
}
