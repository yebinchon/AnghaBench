
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_scancode_filter {unsigned long long data; unsigned long long mask; } ;
struct rc_dev {unsigned long long enabled_protocols; unsigned long long wakeup_protocol; struct img_ir_priv* priv; } ;
struct img_ir_priv_hw {TYPE_1__* decoder; } ;
struct img_ir_priv {int lock; int dev; struct img_ir_priv_hw hw; } ;
struct img_ir_filter {scalar_t__ mask; scalar_t__ data; int maxlen; scalar_t__ minlen; } ;
typedef enum rc_filter_type { ____Placeholder_rc_filter_type } rc_filter_type ;
struct TYPE_2__ {int (* filter ) (struct rc_scancode_filter*,struct img_ir_filter*,unsigned long long) ;} ;


 int EINVAL ;


 int _img_ir_set_filter (struct img_ir_priv*,struct img_ir_filter*) ;
 int _img_ir_set_wake_filter (struct img_ir_priv*,struct img_ir_filter*) ;
 int dev_dbg (int ,char*,char*,unsigned long long,unsigned long long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct rc_scancode_filter*,struct img_ir_filter*,unsigned long long) ;
 int stub2 (struct rc_scancode_filter*,struct img_ir_filter*,unsigned long long) ;

__attribute__((used)) static int img_ir_set_filter(struct rc_dev *dev, enum rc_filter_type type,
        struct rc_scancode_filter *sc_filter)
{
 struct img_ir_priv *priv = dev->priv;
 struct img_ir_priv_hw *hw = &priv->hw;
 struct img_ir_filter filter, *filter_ptr = &filter;
 int ret = 0;

 dev_dbg(priv->dev, "IR scancode %sfilter=%08x & %08x\n",
  type == 128 ? "wake " : "",
  sc_filter->data,
  sc_filter->mask);

 spin_lock_irq(&priv->lock);


 if (!sc_filter->mask) {
  filter_ptr = ((void*)0);
  goto set_unlock;
 }


 if (!hw->decoder || !hw->decoder->filter) {
  ret = -EINVAL;
  goto unlock;
 }


 filter.minlen = 0;
 filter.maxlen = ~0;
 if (type == 129) {

  ret = hw->decoder->filter(sc_filter, &filter,
       dev->enabled_protocols);
 } else {

  ret = hw->decoder->filter(sc_filter, &filter,
       1ULL << dev->wakeup_protocol);
 }
 if (ret)
  goto unlock;
 dev_dbg(priv->dev, "IR raw %sfilter=%016llx & %016llx\n",
  type == 128 ? "wake " : "",
  (unsigned long long)filter.data,
  (unsigned long long)filter.mask);

set_unlock:

 switch (type) {
 case 129:
  _img_ir_set_filter(priv, filter_ptr);
  break;
 case 128:
  _img_ir_set_wake_filter(priv, filter_ptr);
  break;
 default:
  ret = -EINVAL;
 }

unlock:
 spin_unlock_irq(&priv->lock);
 return ret;
}
