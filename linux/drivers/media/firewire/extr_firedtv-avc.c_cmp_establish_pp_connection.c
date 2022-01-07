
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct firedtv {int device; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ CMP_OUTPUT_PLUG_CONTROL_REG_0 ;
 int EBUSY ;
 int cmp_lock (struct firedtv*,scalar_t__,scalar_t__*) ;
 int cmp_read (struct firedtv*,scalar_t__,scalar_t__*) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int get_opcr_channel (scalar_t__) ;
 int get_opcr_online (scalar_t__) ;
 scalar_t__ get_opcr_p2p_connections (scalar_t__) ;
 int set_opcr_channel (scalar_t__*,int) ;
 int set_opcr_data_rate (scalar_t__*,int) ;
 int set_opcr_overhead_id (scalar_t__*,int ) ;
 int set_opcr_p2p_connections (scalar_t__*,scalar_t__) ;

int cmp_establish_pp_connection(struct firedtv *fdtv, int plug, int channel)
{
 __be32 old_opcr, opcr[2];
 u64 opcr_address = CMP_OUTPUT_PLUG_CONTROL_REG_0 + (plug << 2);
 int attempts = 0;
 int ret;

 ret = cmp_read(fdtv, opcr_address, opcr);
 if (ret < 0)
  return ret;

repeat:
 if (!get_opcr_online(*opcr)) {
  dev_err(fdtv->device, "CMP: output offline\n");
  return -EBUSY;
 }

 old_opcr = *opcr;

 if (get_opcr_p2p_connections(*opcr)) {
  if (get_opcr_channel(*opcr) != channel) {
   dev_err(fdtv->device, "CMP: cannot change channel\n");
   return -EBUSY;
  }
  dev_info(fdtv->device, "CMP: overlaying connection\n");


 } else {
  set_opcr_channel(opcr, channel);
  set_opcr_data_rate(opcr, 2);


  set_opcr_overhead_id(opcr, 0);


 }

 set_opcr_p2p_connections(opcr, get_opcr_p2p_connections(*opcr) + 1);

 opcr[1] = *opcr;
 opcr[0] = old_opcr;

 ret = cmp_lock(fdtv, opcr_address, opcr);
 if (ret < 0)
  return ret;

 if (old_opcr != *opcr) {





  if (++attempts < 6)
   goto repeat;
  return -EBUSY;
 }

 return 0;
}
