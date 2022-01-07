
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int dummy; } ;
struct mmc_command {int* resp; int error; } ;


 int EILSEQ ;
 int WBSD_IDX_RESP12 ;
 int WBSD_IDX_RESP13 ;
 int WBSD_IDX_RESP14 ;
 int WBSD_IDX_RESP15 ;
 int WBSD_IDX_RESP16 ;
 int WBSD_IDX_RSPLEN ;
 int WBSD_RSP_SHORT ;
 int wbsd_read_index (struct wbsd_host*,int ) ;

__attribute__((used)) static inline void wbsd_get_short_reply(struct wbsd_host *host,
     struct mmc_command *cmd)
{



 if (wbsd_read_index(host, WBSD_IDX_RSPLEN) != WBSD_RSP_SHORT) {
  cmd->error = -EILSEQ;
  return;
 }

 cmd->resp[0] = wbsd_read_index(host, WBSD_IDX_RESP12) << 24;
 cmd->resp[0] |= wbsd_read_index(host, WBSD_IDX_RESP13) << 16;
 cmd->resp[0] |= wbsd_read_index(host, WBSD_IDX_RESP14) << 8;
 cmd->resp[0] |= wbsd_read_index(host, WBSD_IDX_RESP15) << 0;
 cmd->resp[1] = wbsd_read_index(host, WBSD_IDX_RESP16) << 24;
}
