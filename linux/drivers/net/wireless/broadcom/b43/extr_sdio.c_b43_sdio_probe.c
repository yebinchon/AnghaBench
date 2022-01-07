
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdio_func_tuple {int code; int* data; int size; struct sdio_func_tuple* next; } ;
struct sdio_func {int dev; struct sdio_func_tuple* tuples; } ;
struct sdio_device_id {int dummy; } ;
struct b43_sdio {int ssb; } ;


 int B43_SDIO_BLOCK_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int b43_sdio_get_quirks (int,int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,int) ;
 int kfree (struct b43_sdio*) ;
 struct b43_sdio* kzalloc (int,int ) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 int sdio_enable_func (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int sdio_set_block_size (struct sdio_func*,int ) ;
 int sdio_set_drvdata (struct sdio_func*,struct b43_sdio*) ;
 int ssb_bus_sdiobus_register (int *,struct sdio_func*,int ) ;

__attribute__((used)) static int b43_sdio_probe(struct sdio_func *func,
        const struct sdio_device_id *id)
{
 struct b43_sdio *sdio;
 struct sdio_func_tuple *tuple;
 u16 vendor = 0, device = 0;
 int error;


 tuple = func->tuples;
 while (tuple) {
  switch (tuple->code) {
  case 0x80:
   switch (tuple->data[0]) {
   case 128:
    if (tuple->size != 5)
     break;
    vendor = tuple->data[1] | (tuple->data[2]<<8);
    device = tuple->data[3] | (tuple->data[4]<<8);
    dev_info(&func->dev, "Chip ID %04x:%04x\n",
      vendor, device);
    break;
   default:
    break;
   }
   break;
  default:
   break;
  }
  tuple = tuple->next;
 }
 if (!vendor || !device) {
  error = -ENODEV;
  goto out;
 }

 sdio_claim_host(func);
 error = sdio_set_block_size(func, B43_SDIO_BLOCK_SIZE);
 if (error) {
  dev_err(&func->dev, "failed to set block size to %u bytes,"
   " error %d\n", B43_SDIO_BLOCK_SIZE, error);
  goto err_release_host;
 }
 error = sdio_enable_func(func);
 if (error) {
  dev_err(&func->dev, "failed to enable func, error %d\n", error);
  goto err_release_host;
 }
 sdio_release_host(func);

 sdio = kzalloc(sizeof(*sdio), GFP_KERNEL);
 if (!sdio) {
  error = -ENOMEM;
  dev_err(&func->dev, "failed to allocate ssb bus\n");
  goto err_disable_func;
 }
 error = ssb_bus_sdiobus_register(&sdio->ssb, func,
      b43_sdio_get_quirks(vendor, device));
 if (error) {
  dev_err(&func->dev, "failed to register ssb sdio bus,"
   " error %d\n", error);
  goto err_free_ssb;
 }
 sdio_set_drvdata(func, sdio);

 return 0;

err_free_ssb:
 kfree(sdio);
err_disable_func:
 sdio_claim_host(func);
 sdio_disable_func(func);
err_release_host:
 sdio_release_host(func);
out:
 return error;
}
