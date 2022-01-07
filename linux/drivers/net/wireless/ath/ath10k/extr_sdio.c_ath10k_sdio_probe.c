
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdio_func {int cur_blksize; int max_blksize; int device; int vendor; int num; int dev; } ;
struct sdio_device_id {int device; int vendor; } ;
struct ath10k_sdio_irq_proc_regs {int dummy; } ;
struct ath10k_sdio_irq_enable_regs {int dummy; } ;
struct TYPE_3__ {int mtx; void* irq_en_reg; void* irq_proc_reg; } ;
struct ath10k_sdio {int is_disabled; int workqueue; int * bus_req; int wr_async_work; int wr_asyncq; int bus_req_freeq; TYPE_1__ irq_data; int wr_async_lock; int lock; struct ath10k* ar; struct sdio_func* func; void* bmi_buf; } ;
struct ath10k_bus_params {int hl_msdu_ids; scalar_t__ chip_id; int dev_type; } ;
struct TYPE_4__ {int device; int vendor; } ;
struct ath10k {TYPE_2__ id; int dev_id; int dev; } ;
typedef enum ath10k_hw_rev { ____Placeholder_ath10k_hw_rev } ath10k_hw_rev ;


 int ATH10K_BUS_SDIO ;
 int ATH10K_DBG_BOOT ;
 int ATH10K_DEV_TYPE_HL ;
 int ATH10K_HW_QCA6174 ;
 int ATH10K_SDIO_BUS_REQUEST_MAX_NUM ;
 int BMI_MAX_CMDBUF_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int FIELD_GET (int ,int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int QCA9377_1_0_DEVICE_ID ;

 int QCA_MANUFACTURER_ID_BASE ;

 struct ath10k* ath10k_core_create (int,int *,int ,int,int *) ;
 int ath10k_core_destroy (struct ath10k*) ;
 int ath10k_core_register (struct ath10k*,struct ath10k_bus_params*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int ,int ) ;
 int ath10k_err (struct ath10k*,char*,int,...) ;
 int ath10k_sdio_free_bus_req (struct ath10k*,int *) ;
 int ath10k_sdio_hif_ops ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_sdio_set_mbox_info (struct ath10k*) ;
 int ath10k_sdio_write_async_work ;
 int ath10k_warn (struct ath10k*,char*) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*) ;
 void* devm_kzalloc (int ,int,int ) ;
 int mutex_init (int *) ;
 int sdio_set_drvdata (struct sdio_func*,struct ath10k_sdio*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ath10k_sdio_probe(struct sdio_func *func,
        const struct sdio_device_id *id)
{
 struct ath10k_sdio *ar_sdio;
 struct ath10k *ar;
 enum ath10k_hw_rev hw_rev;
 u32 dev_id_base;
 struct ath10k_bus_params bus_params = {};
 int ret, i;







 hw_rev = ATH10K_HW_QCA6174;

 ar = ath10k_core_create(sizeof(*ar_sdio), &func->dev, ATH10K_BUS_SDIO,
    hw_rev, &ath10k_sdio_hif_ops);
 if (!ar) {
  dev_err(&func->dev, "failed to allocate core\n");
  return -ENOMEM;
 }

 ath10k_dbg(ar, ATH10K_DBG_BOOT,
     "sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\n",
     func->num, func->vendor, func->device,
     func->max_blksize, func->cur_blksize);

 ar_sdio = ath10k_sdio_priv(ar);

 ar_sdio->irq_data.irq_proc_reg =
  devm_kzalloc(ar->dev, sizeof(struct ath10k_sdio_irq_proc_regs),
        GFP_KERNEL);
 if (!ar_sdio->irq_data.irq_proc_reg) {
  ret = -ENOMEM;
  goto err_core_destroy;
 }

 ar_sdio->irq_data.irq_en_reg =
  devm_kzalloc(ar->dev, sizeof(struct ath10k_sdio_irq_enable_regs),
        GFP_KERNEL);
 if (!ar_sdio->irq_data.irq_en_reg) {
  ret = -ENOMEM;
  goto err_core_destroy;
 }

 ar_sdio->bmi_buf = devm_kzalloc(ar->dev, BMI_MAX_CMDBUF_SIZE, GFP_KERNEL);
 if (!ar_sdio->bmi_buf) {
  ret = -ENOMEM;
  goto err_core_destroy;
 }

 ar_sdio->func = func;
 sdio_set_drvdata(func, ar_sdio);

 ar_sdio->is_disabled = 1;
 ar_sdio->ar = ar;

 spin_lock_init(&ar_sdio->lock);
 spin_lock_init(&ar_sdio->wr_async_lock);
 mutex_init(&ar_sdio->irq_data.mtx);

 INIT_LIST_HEAD(&ar_sdio->bus_req_freeq);
 INIT_LIST_HEAD(&ar_sdio->wr_asyncq);

 INIT_WORK(&ar_sdio->wr_async_work, ath10k_sdio_write_async_work);
 ar_sdio->workqueue = create_singlethread_workqueue("ath10k_sdio_wq");
 if (!ar_sdio->workqueue) {
  ret = -ENOMEM;
  goto err_core_destroy;
 }

 for (i = 0; i < ATH10K_SDIO_BUS_REQUEST_MAX_NUM; i++)
  ath10k_sdio_free_bus_req(ar, &ar_sdio->bus_req[i]);

 dev_id_base = FIELD_GET(QCA_MANUFACTURER_ID_BASE, id->device);
 switch (dev_id_base) {
 case 129:
 case 128:
  ar->dev_id = QCA9377_1_0_DEVICE_ID;
  break;
 default:
  ret = -ENODEV;
  ath10k_err(ar, "unsupported device id %u (0x%x)\n",
      dev_id_base, id->device);
  goto err_free_wq;
 }

 ar->id.vendor = id->vendor;
 ar->id.device = id->device;

 ath10k_sdio_set_mbox_info(ar);

 bus_params.dev_type = ATH10K_DEV_TYPE_HL;

 bus_params.chip_id = 0;
 bus_params.hl_msdu_ids = 1;

 ret = ath10k_core_register(ar, &bus_params);
 if (ret) {
  ath10k_err(ar, "failed to register driver core: %d\n", ret);
  goto err_free_wq;
 }


 ath10k_warn(ar, "WARNING: ath10k SDIO support is work-in-progress, problems may arise!\n");

 return 0;

err_free_wq:
 destroy_workqueue(ar_sdio->workqueue);
err_core_destroy:
 ath10k_core_destroy(ar);

 return ret;
}
