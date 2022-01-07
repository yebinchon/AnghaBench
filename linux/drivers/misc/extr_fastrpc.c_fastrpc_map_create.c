
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int u64 ;
struct fastrpc_user {int lock; int maps; struct fastrpc_session_ctx* sctx; } ;
struct fastrpc_session_ctx {scalar_t__ sid; int dev; } ;
struct fastrpc_map {int fd; int phys; int size; int len; TYPE_1__* buf; TYPE_1__* attach; int node; int refcount; TYPE_1__* table; int va; struct fastrpc_user* fl; } ;
struct TYPE_11__ {int sgl; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_err (int ,char*) ;
 TYPE_1__* dma_buf_attach (TYPE_1__*,int ) ;
 int dma_buf_detach (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* dma_buf_get (int) ;
 TYPE_1__* dma_buf_map_attachment (TYPE_1__*,int ) ;
 int dma_buf_put (TYPE_1__*) ;
 int fastrpc_map_find (struct fastrpc_user*,int,struct fastrpc_map**) ;
 int kfree (struct fastrpc_map*) ;
 int kref_init (int *) ;
 struct fastrpc_map* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sg_dma_address (int ) ;
 int sg_virt (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fastrpc_map_create(struct fastrpc_user *fl, int fd,
         u64 len, struct fastrpc_map **ppmap)
{
 struct fastrpc_session_ctx *sess = fl->sctx;
 struct fastrpc_map *map = ((void*)0);
 int err = 0;

 if (!fastrpc_map_find(fl, fd, ppmap))
  return 0;

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (!map)
  return -ENOMEM;

 INIT_LIST_HEAD(&map->node);
 map->fl = fl;
 map->fd = fd;
 map->buf = dma_buf_get(fd);
 if (IS_ERR(map->buf)) {
  err = PTR_ERR(map->buf);
  goto get_err;
 }

 map->attach = dma_buf_attach(map->buf, sess->dev);
 if (IS_ERR(map->attach)) {
  dev_err(sess->dev, "Failed to attach dmabuf\n");
  err = PTR_ERR(map->attach);
  goto attach_err;
 }

 map->table = dma_buf_map_attachment(map->attach, DMA_BIDIRECTIONAL);
 if (IS_ERR(map->table)) {
  err = PTR_ERR(map->table);
  goto map_err;
 }

 map->phys = sg_dma_address(map->table->sgl);
 map->phys += ((u64)fl->sctx->sid << 32);
 map->size = len;
 map->va = sg_virt(map->table->sgl);
 map->len = len;
 kref_init(&map->refcount);

 spin_lock(&fl->lock);
 list_add_tail(&map->node, &fl->maps);
 spin_unlock(&fl->lock);
 *ppmap = map;

 return 0;

map_err:
 dma_buf_detach(map->buf, map->attach);
attach_err:
 dma_buf_put(map->buf);
get_err:
 kfree(map);

 return err;
}
