
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int map_records_cnt; struct nfp_bpf_neutral_map** map_records; } ;
struct nfp_bpf_neutral_map {int count; int l; int map_id; struct bpf_map* ptr; } ;
struct nfp_app_bpf {int maps_neutral; } ;
struct bpf_map {int id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct bpf_map*) ;
 int PTR_ERR (struct bpf_map*) ;
 struct bpf_map* bpf_map_inc (struct bpf_map*,int) ;
 int bpf_map_put (struct bpf_map*) ;
 int kfree (struct nfp_bpf_neutral_map*) ;
 struct nfp_bpf_neutral_map* kmalloc (int,int ) ;
 int nfp_bpf_maps_neutral_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 struct nfp_bpf_neutral_map* rhashtable_lookup_fast (int *,int *,int ) ;

__attribute__((used)) static int
nfp_map_ptr_record(struct nfp_app_bpf *bpf, struct nfp_prog *nfp_prog,
     struct bpf_map *map)
{
 struct nfp_bpf_neutral_map *record;
 int err;


 record = rhashtable_lookup_fast(&bpf->maps_neutral, &map->id,
     nfp_bpf_maps_neutral_params);
 if (record) {
  nfp_prog->map_records[nfp_prog->map_records_cnt++] = record;
  record->count++;
  return 0;
 }




 map = bpf_map_inc(map, 0);
 if (IS_ERR(map))
  return PTR_ERR(map);

 record = kmalloc(sizeof(*record), GFP_KERNEL);
 if (!record) {
  err = -ENOMEM;
  goto err_map_put;
 }

 record->ptr = map;
 record->map_id = map->id;
 record->count = 1;

 err = rhashtable_insert_fast(&bpf->maps_neutral, &record->l,
         nfp_bpf_maps_neutral_params);
 if (err)
  goto err_free_rec;

 nfp_prog->map_records[nfp_prog->map_records_cnt++] = record;

 return 0;

err_free_rec:
 kfree(record);
err_map_put:
 bpf_map_put(map);
 return err;
}
