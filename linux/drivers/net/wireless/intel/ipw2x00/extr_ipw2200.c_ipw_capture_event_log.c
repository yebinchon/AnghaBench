
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ipw_priv {int dummy; } ;
struct ipw_event {int dummy; } ;
typedef int base ;


 int IPW_EVENT_LOG ;
 int ipw_read32 (struct ipw_priv*,int ) ;
 int ipw_read_indirect (struct ipw_priv*,int,int *,int) ;

__attribute__((used)) static void ipw_capture_event_log(struct ipw_priv *priv,
      u32 log_len, struct ipw_event *log)
{
 u32 base;

 if (log_len) {
  base = ipw_read32(priv, IPW_EVENT_LOG);
  ipw_read_indirect(priv, base + sizeof(base) + sizeof(u32),
      (u8 *) log, sizeof(*log) * log_len);
 }
}
