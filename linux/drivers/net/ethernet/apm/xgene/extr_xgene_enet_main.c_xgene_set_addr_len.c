
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;
typedef int __le64 ;


 int BUFDATALEN ;
 int DATAADDR ;
 int SET_VAL (int ,int) ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static void xgene_set_addr_len(__le64 *desc, u32 idx, dma_addr_t addr, u32 len)
{
 desc[idx ^ 1] = cpu_to_le64(SET_VAL(DATAADDR, addr) |
        SET_VAL(BUFDATALEN, len));
}
