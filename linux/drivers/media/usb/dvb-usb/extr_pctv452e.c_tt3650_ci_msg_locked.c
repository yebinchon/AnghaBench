
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pctv452e_state {int ca_mutex; } ;
struct dvb_usb_device {scalar_t__ priv; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tt3650_ci_msg (struct dvb_usb_device*,int ,int *,unsigned int,unsigned int) ;

__attribute__((used)) static int tt3650_ci_msg_locked(struct dvb_ca_en50221 *ca,
    u8 cmd, u8 *data, unsigned int write_len,
    unsigned int read_len)
{
 struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
 struct pctv452e_state *state = (struct pctv452e_state *)d->priv;
 int ret;

 mutex_lock(&state->ca_mutex);
 ret = tt3650_ci_msg(d, cmd, data, write_len, read_len);
 mutex_unlock(&state->ca_mutex);

 return ret;
}
