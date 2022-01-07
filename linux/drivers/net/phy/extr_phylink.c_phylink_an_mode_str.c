
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;




__attribute__((used)) static const char *phylink_an_mode_str(unsigned int mode)
{
 static const char *modestr[] = {
  [128] = "phy",
  [130] = "fixed",
  [129] = "inband",
 };

 return mode < ARRAY_SIZE(modestr) ? modestr[mode] : "unknown";
}
