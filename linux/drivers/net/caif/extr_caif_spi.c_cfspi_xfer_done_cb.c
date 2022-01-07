
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfspi_ifc {scalar_t__ priv; } ;
struct cfspi {int comp; } ;


 int complete (int *) ;

__attribute__((used)) static void cfspi_xfer_done_cb(struct cfspi_ifc *ifc)
{
 struct cfspi *cfspi = (struct cfspi *)ifc->priv;


 complete(&cfspi->comp);
}
