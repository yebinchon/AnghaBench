
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;


 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void mwl8k_release_fw(const struct firmware **fw)
{
 if (*fw == ((void*)0))
  return;
 release_firmware(*fw);
 *fw = ((void*)0);
}
