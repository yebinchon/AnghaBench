
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct netdev_bpf {struct bpf_prog* prog; } ;
struct TYPE_3__ {int prog; } ;
struct cpsw_priv {TYPE_1__ xdpi; int xdp_prog; } ;
struct bpf_prog {int dummy; } ;


 int EBUSY ;
 int WRITE_ONCE (int ,struct bpf_prog*) ;
 int xdp_attachment_flags_ok (TYPE_1__*,struct netdev_bpf*) ;
 int xdp_attachment_setup (TYPE_1__*,struct netdev_bpf*) ;

__attribute__((used)) static int cpsw_xdp_prog_setup(struct cpsw_priv *priv, struct netdev_bpf *bpf)
{
 struct bpf_prog *prog = bpf->prog;

 if (!priv->xdpi.prog && !prog)
  return 0;

 if (!xdp_attachment_flags_ok(&priv->xdpi, bpf))
  return -EBUSY;

 WRITE_ONCE(priv->xdp_prog, prog);

 xdp_attachment_setup(&priv->xdpi, bpf);

 return 0;
}
