
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct brcmf_pub {int dummy; } ;


 int brcmf_msgbuf_query_dcmd (struct brcmf_pub*,int,int ,void*,int ,int*) ;

__attribute__((used)) static int brcmf_msgbuf_set_dcmd(struct brcmf_pub *drvr, int ifidx,
     uint cmd, void *buf, uint len, int *fwerr)
{
 return brcmf_msgbuf_query_dcmd(drvr, ifidx, cmd, buf, len, fwerr);
}
