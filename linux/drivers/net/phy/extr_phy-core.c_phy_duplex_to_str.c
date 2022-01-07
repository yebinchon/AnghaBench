
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DUPLEX_FULL ;
 unsigned int DUPLEX_HALF ;
 unsigned int DUPLEX_UNKNOWN ;

const char *phy_duplex_to_str(unsigned int duplex)
{
 if (duplex == DUPLEX_HALF)
  return "Half";
 if (duplex == DUPLEX_FULL)
  return "Full";
 if (duplex == DUPLEX_UNKNOWN)
  return "Unknown";
 return "Unsupported (update phy-core.c)";
}
