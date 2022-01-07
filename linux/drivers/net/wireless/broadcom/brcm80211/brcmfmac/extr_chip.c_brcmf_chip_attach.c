
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_chip {int dummy; } ;
struct brcmf_chip_priv {struct brcmf_chip pub; void* ctx; struct brcmf_buscore_ops const* ops; scalar_t__ num_cores; int cores; } ;
struct brcmf_buscore_ops {int (* prepare ) (void*) ;int activate; int write32; int read32; } ;


 int EINVAL ;
 int ENOMEM ;
 struct brcmf_chip* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int brcmf_chip_detach (struct brcmf_chip*) ;
 int brcmf_chip_recognition (struct brcmf_chip_priv*) ;
 int brcmf_chip_setup (struct brcmf_chip_priv*) ;
 struct brcmf_chip_priv* kzalloc (int,int ) ;
 int stub1 (void*) ;

struct brcmf_chip *brcmf_chip_attach(void *ctx,
         const struct brcmf_buscore_ops *ops)
{
 struct brcmf_chip_priv *chip;
 int err = 0;

 if (WARN_ON(!ops->read32))
  err = -EINVAL;
 if (WARN_ON(!ops->write32))
  err = -EINVAL;
 if (WARN_ON(!ops->prepare))
  err = -EINVAL;
 if (WARN_ON(!ops->activate))
  err = -EINVAL;
 if (err < 0)
  return ERR_PTR(-EINVAL);

 chip = kzalloc(sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&chip->cores);
 chip->num_cores = 0;
 chip->ops = ops;
 chip->ctx = ctx;

 err = ops->prepare(ctx);
 if (err < 0)
  goto fail;

 err = brcmf_chip_recognition(chip);
 if (err < 0)
  goto fail;

 err = brcmf_chip_setup(chip);
 if (err < 0)
  goto fail;

 return &chip->pub;

fail:
 brcmf_chip_detach(&chip->pub);
 return ERR_PTR(err);
}
