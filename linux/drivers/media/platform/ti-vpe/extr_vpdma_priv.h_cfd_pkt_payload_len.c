
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CFD_CLASS_SHFT ;
 int CFD_DEST_SHFT ;
 int CFD_DIRECT_SHFT ;
 int CFD_PKT_TYPE ;
 int CFD_PKT_TYPE_SHFT ;

__attribute__((used)) static inline u32 cfd_pkt_payload_len(bool direct, int cls, int dest,
  int payload_len)
{
 return (CFD_PKT_TYPE << CFD_PKT_TYPE_SHFT) |
  (direct << CFD_DIRECT_SHFT) |
  (cls << CFD_CLASS_SHFT) |
  (dest << CFD_DEST_SHFT) |
  payload_len;
}
