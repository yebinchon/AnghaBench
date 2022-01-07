
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_veu_dev {scalar_t__ m2m_ctx; int m2m_dev; } ;


 int PTR_ERR_OR_ZERO (scalar_t__) ;
 int sh_veu_queue_init ;
 scalar_t__ v4l2_m2m_ctx_init (int ,struct sh_veu_dev*,int ) ;

__attribute__((used)) static int sh_veu_context_init(struct sh_veu_dev *veu)
{
 if (veu->m2m_ctx)
  return 0;

 veu->m2m_ctx = v4l2_m2m_ctx_init(veu->m2m_dev, veu,
      sh_veu_queue_init);

 return PTR_ERR_OR_ZERO(veu->m2m_ctx);
}
