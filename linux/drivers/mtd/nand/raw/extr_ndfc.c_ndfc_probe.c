
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ndfc_controller {size_t chip_select; scalar_t__ ndfcbase; struct platform_device* ofdev; int ndfc_control; } ;
typedef int __be32 ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int NDFC_BCFG0 ;
 scalar_t__ NDFC_CCR ;
 size_t NDFC_CCR_BS (size_t) ;
 size_t NDFC_MAX_CS ;
 size_t be32_to_cpu (int const) ;
 size_t be32_to_cpup (int const*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_set_drvdata (TYPE_1__*,struct ndfc_controller*) ;
 int iounmap (scalar_t__) ;
 int nand_controller_init (int *) ;
 int ndfc_chip_init (struct ndfc_controller*,int ) ;
 struct ndfc_controller* ndfc_ctrl ;
 int * of_get_property (int ,char*,int*) ;
 scalar_t__ of_iomap (int ,int ) ;
 int out_be32 (scalar_t__,size_t) ;

__attribute__((used)) static int ndfc_probe(struct platform_device *ofdev)
{
 struct ndfc_controller *ndfc;
 const __be32 *reg;
 u32 ccr;
 u32 cs;
 int err, len;


 reg = of_get_property(ofdev->dev.of_node, "reg", &len);
 if (reg == ((void*)0) || len != 12) {
  dev_err(&ofdev->dev, "unable read reg property (%d)\n", len);
  return -ENOENT;
 }

 cs = be32_to_cpu(reg[0]);
 if (cs >= NDFC_MAX_CS) {
  dev_err(&ofdev->dev, "invalid CS number (%d)\n", cs);
  return -EINVAL;
 }

 ndfc = &ndfc_ctrl[cs];
 ndfc->chip_select = cs;

 nand_controller_init(&ndfc->ndfc_control);
 ndfc->ofdev = ofdev;
 dev_set_drvdata(&ofdev->dev, ndfc);

 ndfc->ndfcbase = of_iomap(ofdev->dev.of_node, 0);
 if (!ndfc->ndfcbase) {
  dev_err(&ofdev->dev, "failed to get memory\n");
  return -EIO;
 }

 ccr = NDFC_CCR_BS(ndfc->chip_select);


 reg = of_get_property(ofdev->dev.of_node, "ccr", ((void*)0));
 if (reg)
  ccr |= be32_to_cpup(reg);

 out_be32(ndfc->ndfcbase + NDFC_CCR, ccr);


 reg = of_get_property(ofdev->dev.of_node, "bank-settings", ((void*)0));
 if (reg) {
  int offset = NDFC_BCFG0 + (ndfc->chip_select << 2);
  out_be32(ndfc->ndfcbase + offset, be32_to_cpup(reg));
 }

 err = ndfc_chip_init(ndfc, ofdev->dev.of_node);
 if (err) {
  iounmap(ndfc->ndfcbase);
  return err;
 }

 return 0;
}
