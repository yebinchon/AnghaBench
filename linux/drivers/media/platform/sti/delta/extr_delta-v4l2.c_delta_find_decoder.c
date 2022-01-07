
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct delta_dev {unsigned int nb_of_decoders; struct delta_dec** decoders; } ;
struct delta_dec {scalar_t__ pixelformat; scalar_t__ streamformat; } ;
struct delta_ctx {struct delta_dev* dev; } ;



__attribute__((used)) static const struct delta_dec *delta_find_decoder(struct delta_ctx *ctx,
        u32 streamformat,
        u32 pixelformat)
{
 struct delta_dev *delta = ctx->dev;
 const struct delta_dec *dec;
 unsigned int i;

 for (i = 0; i < delta->nb_of_decoders; i++) {
  dec = delta->decoders[i];
  if ((dec->pixelformat == pixelformat) &&
      (dec->streamformat == streamformat))
   return dec;
 }

 return ((void*)0);
}
