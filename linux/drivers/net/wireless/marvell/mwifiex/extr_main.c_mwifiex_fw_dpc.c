
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;


 int _mwifiex_fw_dpc (struct firmware const*,void*) ;

__attribute__((used)) static void mwifiex_fw_dpc(const struct firmware *firmware, void *context)
{
 _mwifiex_fw_dpc(firmware, context);
}
