
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_device {int dummy; } ;


 int PWARN (char*) ;
 scalar_t__ tea5764_i2c_write (struct tea5764_device*) ;
 int tea5764_set_freq (struct tea5764_device*,int) ;

__attribute__((used)) static void tea5764_tune(struct tea5764_device *radio, int freq)
{
 tea5764_set_freq(radio, freq);
 if (tea5764_i2c_write(radio))
  PWARN("Could not set frequency!");
}
