
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcan_ufd_ovr_msg {int channel; } ;



__attribute__((used)) static inline int pufd_omsg_get_channel(struct pcan_ufd_ovr_msg *om)
{
 return om->channel & 0xf;
}
