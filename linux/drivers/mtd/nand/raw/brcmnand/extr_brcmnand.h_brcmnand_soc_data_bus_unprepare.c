
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_soc {int (* prepare_data_bus ) (struct brcmnand_soc*,int,int) ;} ;


 int stub1 (struct brcmnand_soc*,int,int) ;

__attribute__((used)) static inline void brcmnand_soc_data_bus_unprepare(struct brcmnand_soc *soc,
         bool is_param)
{
 if (soc && soc->prepare_data_bus)
  soc->prepare_data_bus(soc, 0, is_param);
}
