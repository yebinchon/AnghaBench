
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_drif_sdr {int dummy; } ;
struct rcar_drif {scalar_t__ num; struct rcar_drif_sdr* sdr; } ;
struct platform_device {int dummy; } ;


 struct rcar_drif* platform_get_drvdata (struct platform_device*) ;
 int rcar_drif_sdr_remove (struct rcar_drif_sdr*) ;

__attribute__((used)) static int rcar_drif_remove(struct platform_device *pdev)
{
 struct rcar_drif *ch = platform_get_drvdata(pdev);
 struct rcar_drif_sdr *sdr = ch->sdr;


 if (ch->num)
  return 0;


 rcar_drif_sdr_remove(sdr);

 return 0;
}
