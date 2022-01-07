
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct radar_detector_specs {int dummy; } ;
struct pri_detector {int dummy; } ;
struct dfs_pattern_detector {int num_radar_types; int common; int channel_detectors; struct radar_detector_specs* radar_spec; } ;
struct channel_detector {int head; struct pri_detector** detectors; int freq; } ;


 int DFS ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int ath_dbg (int ,int ,char*,int ) ;
 int channel_detector_exit (struct dfs_pattern_detector*,struct channel_detector*) ;
 struct channel_detector* kmalloc (int,int ) ;
 struct pri_detector** kzalloc (size_t,int ) ;
 int list_add (int *,int *) ;
 struct pri_detector* pri_detector_init (struct radar_detector_specs const*) ;

__attribute__((used)) static struct channel_detector *
channel_detector_create(struct dfs_pattern_detector *dpd, u16 freq)
{
 u32 sz, i;
 struct channel_detector *cd;

 cd = kmalloc(sizeof(*cd), GFP_ATOMIC);
 if (cd == ((void*)0))
  goto fail;

 INIT_LIST_HEAD(&cd->head);
 cd->freq = freq;
 sz = sizeof(cd->detectors) * dpd->num_radar_types;
 cd->detectors = kzalloc(sz, GFP_ATOMIC);
 if (cd->detectors == ((void*)0))
  goto fail;

 for (i = 0; i < dpd->num_radar_types; i++) {
  const struct radar_detector_specs *rs = &dpd->radar_spec[i];
  struct pri_detector *de = pri_detector_init(rs);
  if (de == ((void*)0))
   goto fail;
  cd->detectors[i] = de;
 }
 list_add(&cd->head, &dpd->channel_detectors);
 return cd;

fail:
 ath_dbg(dpd->common, DFS,
  "failed to allocate channel_detector for freq=%d\n", freq);
 channel_detector_exit(dpd, cd);
 return ((void*)0);
}
