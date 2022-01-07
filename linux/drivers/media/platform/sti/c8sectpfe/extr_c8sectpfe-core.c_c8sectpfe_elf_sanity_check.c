
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int size; scalar_t__ data; } ;
struct elf32_shdr {int dummy; } ;
struct elf32_hdr {char* e_ident; scalar_t__ e_shoff; scalar_t__ e_type; scalar_t__ e_phoff; } ;
struct c8sectpfei {int dev; } ;
typedef struct elf32_hdr Elf32_Ehdr ;


 int EINVAL ;
 size_t EI_CLASS ;
 size_t EI_DATA ;
 size_t EI_MAG0 ;
 size_t EI_MAG1 ;
 size_t EI_MAG2 ;
 size_t EI_MAG3 ;
 char ELFCLASS32 ;
 char ELFDATA2LSB ;
 int ELFMAG ;
 char ELFMAG0 ;
 char ELFMAG1 ;
 char ELFMAG2 ;
 char ELFMAG3 ;
 scalar_t__ ET_EXEC ;
 int FIRMWARE_MEMDMA ;
 int SELFMAG ;
 int dev_err (int ,char*,...) ;
 scalar_t__ memcmp (char*,int ,int ) ;

__attribute__((used)) static int
c8sectpfe_elf_sanity_check(struct c8sectpfei *fei, const struct firmware *fw)
{
 struct elf32_hdr *ehdr;
 char class;

 if (!fw) {
  dev_err(fei->dev, "failed to load %s\n", FIRMWARE_MEMDMA);
  return -EINVAL;
 }

 if (fw->size < sizeof(struct elf32_hdr)) {
  dev_err(fei->dev, "Image is too small\n");
  return -EINVAL;
 }

 ehdr = (struct elf32_hdr *)fw->data;


 class = ehdr->e_ident[EI_CLASS];
 if (class != ELFCLASS32) {
  dev_err(fei->dev, "Unsupported class: %d\n", class);
  return -EINVAL;
 }

 if (ehdr->e_ident[EI_DATA] != ELFDATA2LSB) {
  dev_err(fei->dev, "Unsupported firmware endianness\n");
  return -EINVAL;
 }

 if (fw->size < ehdr->e_shoff + sizeof(struct elf32_shdr)) {
  dev_err(fei->dev, "Image is too small\n");
  return -EINVAL;
 }

 if (memcmp(ehdr->e_ident, ELFMAG, SELFMAG)) {
  dev_err(fei->dev, "Image is corrupted (bad magic)\n");
  return -EINVAL;
 }


 ehdr = (Elf32_Ehdr *)fw->data;
 if (ehdr->e_ident[EI_MAG0] != ELFMAG0 ||
     ehdr->e_ident[EI_MAG1] != ELFMAG1 ||
     ehdr->e_ident[EI_MAG2] != ELFMAG2 ||
     ehdr->e_ident[EI_MAG3] != ELFMAG3) {
  dev_err(fei->dev, "Invalid ELF magic\n");
  return -EINVAL;
 }

 if (ehdr->e_type != ET_EXEC) {
  dev_err(fei->dev, "Unsupported ELF header type\n");
  return -EINVAL;
 }

 if (ehdr->e_phoff > fw->size) {
  dev_err(fei->dev, "Firmware size is too small\n");
  return -EINVAL;
 }

 return 0;
}
