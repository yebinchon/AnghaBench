
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_pub {int dummy; } ;
struct brcmf_pno_info {int dummy; } ;
struct brcmf_pno_config_le {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_gscan_config {int count_of_channel_buckets; int * bucket; int flags; int buffer_threshold; int retry_threshold; int version; } ;
struct brcmf_gscan_bucket_config {int count_of_channel_buckets; int * bucket; int flags; int buffer_threshold; int retry_threshold; int version; } ;


 int BRCMF_GSCAN_CFG_ALL_BUCKETS_IN_1ST_SCAN ;
 int BRCMF_GSCAN_CFG_VERSION ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GSCAN_BATCH_NO_THR_SET ;
 int GSCAN_RETRY_THRESHOLD ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,struct brcmf_gscan_config*,size_t) ;
 int brcmf_fil_iovar_int_set (struct brcmf_if*,char*,int) ;
 int brcmf_pno_channel_config (struct brcmf_if*,struct brcmf_pno_config_le*) ;
 int brcmf_pno_clean (struct brcmf_if*) ;
 int brcmf_pno_config (struct brcmf_if*,int ,int ,int ) ;
 int brcmf_pno_config_networks (struct brcmf_if*,struct brcmf_pno_info*) ;
 int brcmf_pno_prep_fwconfig (struct brcmf_pno_info*,struct brcmf_pno_config_le*,struct brcmf_gscan_config**,int *) ;
 int brcmf_pno_set_random (struct brcmf_if*,struct brcmf_pno_info*) ;
 int cpu_to_le16 (int ) ;
 struct brcmf_pno_info* ifp_to_pno (struct brcmf_if*) ;
 int kfree (struct brcmf_gscan_config*) ;
 struct brcmf_gscan_config* kzalloc (size_t,int ) ;
 int memcpy (int *,struct brcmf_gscan_config*,int) ;

__attribute__((used)) static int brcmf_pno_config_sched_scans(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_pno_info *pi;
 struct brcmf_gscan_config *gscan_cfg;
 struct brcmf_gscan_bucket_config *buckets;
 struct brcmf_pno_config_le pno_cfg;
 size_t gsz;
 u32 scan_freq;
 int err, n_buckets;

 pi = ifp_to_pno(ifp);
 n_buckets = brcmf_pno_prep_fwconfig(pi, &pno_cfg, &buckets,
         &scan_freq);
 if (n_buckets < 0)
  return n_buckets;

 gsz = sizeof(*gscan_cfg) + (n_buckets - 1) * sizeof(*buckets);
 gscan_cfg = kzalloc(gsz, GFP_KERNEL);
 if (!gscan_cfg) {
  err = -ENOMEM;
  goto free_buckets;
 }


 err = brcmf_pno_clean(ifp);
 if (err < 0) {
  bphy_err(drvr, "failed error=%d\n", err);
  goto free_gscan;
 }


 err = brcmf_pno_config(ifp, scan_freq, 0, 0);
 if (err < 0)
  goto free_gscan;

 err = brcmf_pno_channel_config(ifp, &pno_cfg);
 if (err < 0)
  goto clean;

 gscan_cfg->version = cpu_to_le16(BRCMF_GSCAN_CFG_VERSION);
 gscan_cfg->retry_threshold = GSCAN_RETRY_THRESHOLD;
 gscan_cfg->buffer_threshold = GSCAN_BATCH_NO_THR_SET;
 gscan_cfg->flags = BRCMF_GSCAN_CFG_ALL_BUCKETS_IN_1ST_SCAN;

 gscan_cfg->count_of_channel_buckets = n_buckets;
 memcpy(&gscan_cfg->bucket[0], buckets,
        n_buckets * sizeof(*buckets));

 err = brcmf_fil_iovar_data_set(ifp, "pfn_gscan_cfg", gscan_cfg, gsz);

 if (err < 0)
  goto clean;


 err = brcmf_pno_set_random(ifp, pi);
 if (err < 0)
  goto clean;

 err = brcmf_pno_config_networks(ifp, pi);
 if (err < 0)
  goto clean;


 err = brcmf_fil_iovar_int_set(ifp, "pfn", 1);

clean:
 if (err < 0)
  brcmf_pno_clean(ifp);
free_gscan:
 kfree(gscan_cfg);
free_buckets:
 kfree(buckets);
 return err;
}
