
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int bin_fw; } ;


 int vfree (int ) ;

__attribute__((used)) static void put_firmware(struct av7110* av7110)
{
 vfree(av7110->bin_fw);
}
