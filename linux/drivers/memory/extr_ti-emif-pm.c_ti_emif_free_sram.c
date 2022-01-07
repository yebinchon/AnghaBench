
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_emif_data {int ti_emif_sram_data_virt; int sram_pool_data; int ti_emif_sram_virt; int sram_pool_code; } ;
struct emif_regs_amx3 {int dummy; } ;


 int gen_pool_free (int ,int ,int) ;
 int ti_emif_sram_sz ;

__attribute__((used)) static void ti_emif_free_sram(struct ti_emif_data *emif_data)
{
 gen_pool_free(emif_data->sram_pool_code, emif_data->ti_emif_sram_virt,
        ti_emif_sram_sz);
 gen_pool_free(emif_data->sram_pool_data,
        emif_data->ti_emif_sram_data_virt,
        sizeof(struct emif_regs_amx3));
}
