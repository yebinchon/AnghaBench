
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_adc_request {int dummy; } ;
struct pcf50633_adc {int queue_head; int queue_tail; int queue_mutex; struct pcf50633_adc_request** queue; } ;
struct pcf50633 {int dev; } ;


 int EBUSY ;
 int PCF50633_MAX_ADC_FIFO_DEPTH ;
 struct pcf50633_adc* __to_adc (struct pcf50633*) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trigger_next_adc_job_if_any (struct pcf50633*) ;

__attribute__((used)) static int
adc_enqueue_request(struct pcf50633 *pcf, struct pcf50633_adc_request *req)
{
 struct pcf50633_adc *adc = __to_adc(pcf);
 int head, tail;

 mutex_lock(&adc->queue_mutex);

 head = adc->queue_head;
 tail = adc->queue_tail;

 if (adc->queue[tail]) {
  mutex_unlock(&adc->queue_mutex);
  dev_err(pcf->dev, "ADC queue is full, dropping request\n");
  return -EBUSY;
 }

 adc->queue[tail] = req;
 if (head == tail)
  trigger_next_adc_job_if_any(pcf);
 adc->queue_tail = (tail + 1) & (PCF50633_MAX_ADC_FIFO_DEPTH - 1);

 mutex_unlock(&adc->queue_mutex);

 return 0;
}
