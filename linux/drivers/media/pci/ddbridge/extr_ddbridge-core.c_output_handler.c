
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_output {struct ddb_dma* dma; } ;
struct ddb_dma {int work; } ;


 int ddb_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void output_handler(void *data)
{
 struct ddb_output *output = (struct ddb_output *)data;
 struct ddb_dma *dma = output->dma;

 queue_work(ddb_wq, &dma->work);
}
