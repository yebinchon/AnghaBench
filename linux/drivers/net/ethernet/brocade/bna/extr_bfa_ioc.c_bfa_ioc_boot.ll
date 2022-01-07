; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32 }
%struct.bfi_ioc_image_hdr = type { i32 }

@ioc_boots = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@BFI_FWBOOT_ENV_OS = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_BETTER = common dso_local global i64 0, align 8
@BFI_FWBOOT_TYPE_FLASH = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_MEMTEST = common dso_local global i32 0, align 4
@BFI_IOC_MEMTEST = common dso_local global i32 0, align 4
@BFI_IOC_INITING = common dso_local global i32 0, align 4
@IOCPF_E_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc*, i32, i32)* @bfa_ioc_boot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_boot(%struct.bfa_ioc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %11 = load i32, i32* @ioc_boots, align 4
  %12 = call i32 @bfa_ioc_stats(%struct.bfa_ioc* %10, i32 %11)
  %13 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %14 = call i64 @bfa_ioc_pll_init(%struct.bfa_ioc* %13)
  %15 = load i64, i64* @BFA_STATUS_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @BFA_STATUS_FAILED, align 4
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @BFI_FWBOOT_ENV_OS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BFI_FWBOOT_TYPE_NORMAL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %29 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %28)
  %30 = call i64 @bfa_cb_image_get_chunk(i32 %29, i32 0)
  %31 = inttoptr i64 %30 to %struct.bfi_ioc_image_hdr*
  store %struct.bfi_ioc_image_hdr* %31, %struct.bfi_ioc_image_hdr** %8, align 8
  %32 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %33 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %8, align 8
  %34 = call i64 @bfa_ioc_flash_fwver_cmp(%struct.bfa_ioc* %32, %struct.bfi_ioc_image_hdr* %33)
  %35 = load i64, i64* @BFI_IOC_IMG_VER_BETTER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @BFI_FWBOOT_TYPE_FLASH, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %27
  br label %40

40:                                               ; preds = %39, %23, %19
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @BFI_FWBOOT_TYPE_MEMTEST, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %46 = load i32, i32* @BFI_IOC_MEMTEST, align 4
  %47 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc* %45, i32 %46)
  %48 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %49 = load i32, i32* @BFI_IOC_MEMTEST, align 4
  %50 = call i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.bfa_ioc* %48, i32 %49)
  br label %58

51:                                               ; preds = %40
  %52 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %53 = load i32, i32* @BFI_IOC_INITING, align 4
  %54 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc* %52, i32 %53)
  %55 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %56 = load i32, i32* @BFI_IOC_INITING, align 4
  %57 = call i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.bfa_ioc* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %60 = call i32 @bfa_ioc_msgflush(%struct.bfa_ioc* %59)
  %61 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @bfa_ioc_download_fw(%struct.bfa_ioc* %61, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @BFA_STATUS_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %71 = call i32 @bfa_ioc_lpu_start(%struct.bfa_ioc* %70)
  br label %77

72:                                               ; preds = %58
  %73 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %74 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %73, i32 0, i32 0
  %75 = load i32, i32* @IOCPF_E_TIMEOUT, align 4
  %76 = call i32 @bfa_fsm_send_event(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @bfa_ioc_stats(%struct.bfa_ioc*, i32) #1

declare dso_local i64 @bfa_ioc_pll_init(%struct.bfa_ioc*) #1

declare dso_local i64 @bfa_cb_image_get_chunk(i32, i32) #1

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc*) #1

declare dso_local i64 @bfa_ioc_flash_fwver_cmp(%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_ioc_msgflush(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_download_fw(%struct.bfa_ioc*, i32, i32) #1

declare dso_local i32 @bfa_ioc_lpu_start(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
