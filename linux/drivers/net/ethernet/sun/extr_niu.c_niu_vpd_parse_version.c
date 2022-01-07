
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_vpd {char* version; scalar_t__ fcode_major; scalar_t__ fcode_minor; } ;
struct niu {int flags; int dev; struct niu_vpd vpd; } ;


 int KERN_DEBUG ;
 int NIU_FLAGS_VPD_VALID ;
 scalar_t__ NIU_VPD_MIN_MAJOR ;
 scalar_t__ NIU_VPD_MIN_MINOR ;
 int netif_printk (struct niu*,int ,int ,int ,char*,scalar_t__,scalar_t__) ;
 int probe ;
 int sscanf (char const*,char*,scalar_t__*,scalar_t__*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void niu_vpd_parse_version(struct niu *np)
{
 struct niu_vpd *vpd = &np->vpd;
 int len = strlen(vpd->version) + 1;
 const char *s = vpd->version;
 int i;

 for (i = 0; i < len - 5; i++) {
  if (!strncmp(s + i, "FCode ", 6))
   break;
 }
 if (i >= len - 5)
  return;

 s += i + 5;
 sscanf(s, "%d.%d", &vpd->fcode_major, &vpd->fcode_minor);

 netif_printk(np, probe, KERN_DEBUG, np->dev,
       "VPD_SCAN: FCODE major(%d) minor(%d)\n",
       vpd->fcode_major, vpd->fcode_minor);
 if (vpd->fcode_major > NIU_VPD_MIN_MAJOR ||
     (vpd->fcode_major == NIU_VPD_MIN_MAJOR &&
      vpd->fcode_minor >= NIU_VPD_MIN_MINOR))
  np->flags |= NIU_FLAGS_VPD_VALID;
}
