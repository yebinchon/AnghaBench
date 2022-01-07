
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gtp_dev {int sk1u; int sk0; } ;


 int gtp_encap_disable_sock (int ) ;

__attribute__((used)) static void gtp_encap_disable(struct gtp_dev *gtp)
{
 gtp_encap_disable_sock(gtp->sk0);
 gtp_encap_disable_sock(gtp->sk1u);
}
