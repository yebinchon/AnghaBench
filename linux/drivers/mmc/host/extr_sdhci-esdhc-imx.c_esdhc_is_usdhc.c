
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pltfm_imx_data {TYPE_1__* socdata; } ;
struct TYPE_2__ {int flags; } ;


 int ESDHC_FLAG_USDHC ;

__attribute__((used)) static inline int esdhc_is_usdhc(struct pltfm_imx_data *data)
{
 return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
}
