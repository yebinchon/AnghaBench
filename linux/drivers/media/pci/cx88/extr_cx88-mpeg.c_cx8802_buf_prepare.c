
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct sg_table {int sgl; } ;
struct cx88_riscmem {int dma; scalar_t__ cpu; int size; } ;
struct TYPE_2__ {int vb2_buf; } ;
struct cx88_buffer {TYPE_1__ vb; struct cx88_riscmem risc; } ;
struct cx8802_dev {int ts_packet_size; int ts_packet_count; int pci; } ;


 int EINVAL ;
 int cx88_risc_databuffer (int ,struct cx88_riscmem*,int ,int,int,int ) ;
 int memset (struct cx88_riscmem*,int ,int) ;
 int pci_free_consistent (int ,int ,scalar_t__,int ) ;
 struct sg_table* vb2_dma_sg_plane_desc (int *,int ) ;
 int vb2_plane_size (int *,int ) ;
 int vb2_set_plane_payload (int *,int ,int) ;

int cx8802_buf_prepare(struct vb2_queue *q, struct cx8802_dev *dev,
         struct cx88_buffer *buf)
{
 int size = dev->ts_packet_size * dev->ts_packet_count;
 struct sg_table *sgt = vb2_dma_sg_plane_desc(&buf->vb.vb2_buf, 0);
 struct cx88_riscmem *risc = &buf->risc;
 int rc;

 if (vb2_plane_size(&buf->vb.vb2_buf, 0) < size)
  return -EINVAL;
 vb2_set_plane_payload(&buf->vb.vb2_buf, 0, size);

 rc = cx88_risc_databuffer(dev->pci, risc, sgt->sgl,
      dev->ts_packet_size, dev->ts_packet_count, 0);
 if (rc) {
  if (risc->cpu)
   pci_free_consistent(dev->pci, risc->size,
         risc->cpu, risc->dma);
  memset(risc, 0, sizeof(*risc));
  return rc;
 }
 return 0;
}
