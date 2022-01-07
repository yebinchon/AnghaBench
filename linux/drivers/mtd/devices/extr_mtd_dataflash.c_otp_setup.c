
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;



__attribute__((used)) static char *otp_setup(struct mtd_info *device, char revision)
{
 return " (OTP)";
}
