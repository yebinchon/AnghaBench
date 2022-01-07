
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pltfm_imx_data {int * socdata; } ;


 int usdhc_imx6q_data ;

__attribute__((used)) static inline int is_imx6q_usdhc(struct pltfm_imx_data *data)
{
 return data->socdata == &usdhc_imx6q_data;
}
