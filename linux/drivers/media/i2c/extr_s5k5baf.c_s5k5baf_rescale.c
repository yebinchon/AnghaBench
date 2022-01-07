
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int left; int width; int top; int height; } ;



__attribute__((used)) static void s5k5baf_rescale(struct v4l2_rect *r, const struct v4l2_rect *v,
       const struct v4l2_rect *n,
       const struct v4l2_rect *d)
{
 r->left = v->left * n->width / d->width;
 r->top = v->top * n->height / d->height;
 r->width = v->width * n->width / d->width;
 r->height = v->height * n->height / d->height;
}
