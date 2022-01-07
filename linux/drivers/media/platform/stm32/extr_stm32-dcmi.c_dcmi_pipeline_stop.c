
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dcmi {int dummy; } ;


 int dcmi_pipeline_s_stream (struct stm32_dcmi*,int ) ;

__attribute__((used)) static void dcmi_pipeline_stop(struct stm32_dcmi *dcmi)
{
 dcmi_pipeline_s_stream(dcmi, 0);
}
