
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fw; } ;
struct ar9170 {TYPE_1__ fw; } ;


 int memset (TYPE_1__*,int ,int) ;
 int release_firmware (scalar_t__) ;

__attribute__((used)) static void carl9170_release_firmware(struct ar9170 *ar)
{
 if (ar->fw.fw) {
  release_firmware(ar->fw.fw);
  memset(&ar->fw, 0, sizeof(ar->fw));
 }
}
