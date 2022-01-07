
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hi3798cv200_priv {int sample_clk; } ;
struct dw_mci_slot {int mmc; struct dw_mci* host; } ;
struct dw_mci {int dev; struct hi3798cv200_priv* priv; } ;


 int ALL_INT_CLR ;
 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int RINTSTS ;
 int clk_set_phase (int ,int const) ;
 int dev_dbg (int ,char*,int,int,int const) ;
 int dev_err (int ,char*) ;
 int mci_writel (struct dw_mci*,int ,int ) ;
 int mmc_send_tuning (int ,int ,int *) ;

__attribute__((used)) static int dw_mci_hi3798cv200_execute_tuning(struct dw_mci_slot *slot,
          u32 opcode)
{
 static const int degrees[] = { 0, 45, 90, 135, 180, 225, 270, 315 };
 struct dw_mci *host = slot->host;
 struct hi3798cv200_priv *priv = host->priv;
 int raise_point = -1, fall_point = -1;
 int err, prev_err = -1;
 int found = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(degrees); i++) {
  clk_set_phase(priv->sample_clk, degrees[i]);
  mci_writel(host, RINTSTS, ALL_INT_CLR);

  err = mmc_send_tuning(slot->mmc, opcode, ((void*)0));
  if (!err)
   found = 1;

  if (i > 0) {
   if (err && !prev_err)
    fall_point = i - 1;
   if (!err && prev_err)
    raise_point = i;
  }

  if (raise_point != -1 && fall_point != -1)
   goto tuning_out;

  prev_err = err;
  err = 0;
 }

tuning_out:
 if (found) {
  if (raise_point == -1)
   raise_point = 0;
  if (fall_point == -1)
   fall_point = ARRAY_SIZE(degrees) - 1;
  if (fall_point < raise_point) {
   if ((raise_point + fall_point) >
       (ARRAY_SIZE(degrees) - 1))
    i = fall_point / 2;
   else
    i = (raise_point + ARRAY_SIZE(degrees) - 1) / 2;
  } else {
   i = (raise_point + fall_point) / 2;
  }

  clk_set_phase(priv->sample_clk, degrees[i]);
  dev_dbg(host->dev, "Tuning clk_sample[%d, %d], set[%d]\n",
   raise_point, fall_point, degrees[i]);
 } else {
  dev_err(host->dev, "No valid clk_sample shift! use default\n");
  err = -EINVAL;
 }

 mci_writel(host, RINTSTS, ALL_INT_CLR);
 return err;
}
