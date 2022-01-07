; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_fwver_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_fwver_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32 }
%struct.bfi_ioc_image_hdr = type { i32 }

@BFI_IOC_IMG_VER_INCOMP = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_OLD = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_BETTER = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_SAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_nw_ioc_fwver_cmp(%struct.bfa_ioc* %0, %struct.bfi_ioc_image_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_ioc*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %6 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %4, align 8
  store %struct.bfi_ioc_image_hdr* %1, %struct.bfi_ioc_image_hdr** %5, align 8
  %9 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %10 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %9)
  %11 = call i64 @bfa_cb_image_get_chunk(i32 %10, i32 0)
  %12 = inttoptr i64 %11 to %struct.bfi_ioc_image_hdr*
  store %struct.bfi_ioc_image_hdr* %12, %struct.bfi_ioc_image_hdr** %6, align 8
  %13 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %6, align 8
  %14 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %15 = call i32 @bfa_ioc_fw_ver_patch_cmp(%struct.bfi_ioc_image_hdr* %13, %struct.bfi_ioc_image_hdr* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @BFI_IOC_IMG_VER_INCOMP, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %43

24:                                               ; preds = %19
  %25 = load %struct.bfa_ioc*, %struct.bfa_ioc** %4, align 8
  %26 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %27 = call i32 @bfa_ioc_flash_fwver_cmp(%struct.bfa_ioc* %25, %struct.bfi_ioc_image_hdr* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %43

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BFI_IOC_IMG_VER_SAME, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BFI_IOC_IMG_VER_SAME, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %36, %31, %23
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @bfa_cb_image_get_chunk(i32, i32) #1

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_fw_ver_patch_cmp(%struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr*) #1

declare dso_local i32 @bfa_ioc_flash_fwver_cmp(%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
