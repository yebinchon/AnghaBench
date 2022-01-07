; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_flash_fwver_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_flash_fwver_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32 }
%struct.bfi_ioc_image_hdr = type { i32 }

@BFI_FLASH_CHUNK_SZ_WORDS = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_INCOMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*)* @bfa_ioc_flash_fwver_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_flash_fwver_cmp(%struct.bfa_ioc* %0, %struct.bfi_ioc_image_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %6 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store %struct.bfi_ioc_image_hdr* %1, %struct.bfi_ioc_image_hdr** %5, align 8
  %11 = load i32, i32* @BFI_FLASH_CHUNK_SZ_WORDS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %16 = call i32 @bfa_nw_ioc_flash_img_get_chnk(%struct.bfa_ioc* %15, i32 0, i32* %14)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BFA_STATUS_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @BFI_IOC_IMG_VER_INCOMP, align 4
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %33

22:                                               ; preds = %2
  %23 = bitcast i32* %14 to %struct.bfi_ioc_image_hdr*
  store %struct.bfi_ioc_image_hdr* %23, %struct.bfi_ioc_image_hdr** %6, align 8
  %24 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %6, align 8
  %25 = call i64 @bfa_ioc_flash_fwver_valid(%struct.bfi_ioc_image_hdr* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %29 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %6, align 8
  %30 = call i32 @bfa_ioc_fw_ver_patch_cmp(%struct.bfi_ioc_image_hdr* %28, %struct.bfi_ioc_image_hdr* %29)
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @BFI_IOC_IMG_VER_INCOMP, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %33

33:                                               ; preds = %31, %27, %20
  %34 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %34)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_nw_ioc_flash_img_get_chnk(%struct.bfa_ioc*, i32, i32*) #2

declare dso_local i64 @bfa_ioc_flash_fwver_valid(%struct.bfi_ioc_image_hdr*) #2

declare dso_local i32 @bfa_ioc_fw_ver_patch_cmp(%struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
