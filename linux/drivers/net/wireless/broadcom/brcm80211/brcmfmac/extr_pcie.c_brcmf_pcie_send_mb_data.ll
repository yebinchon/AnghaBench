; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_send_mb_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_send_mb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, i32, %struct.brcmf_pcie_shared_info }
%struct.brcmf_pcie_shared_info = type { i64 }
%struct.brcmf_core = type { i32 }

@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MB transaction is already pending 0x%04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BRCMF_PCIE_REG_SBMBX = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pciedev_info*, i64)* @brcmf_pcie_send_mb_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_send_mb_data(%struct.brcmf_pciedev_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_pciedev_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.brcmf_pcie_shared_info*, align 8
  %7 = alloca %struct.brcmf_core*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %11, i32 0, i32 2
  store %struct.brcmf_pcie_shared_info* %12, %struct.brcmf_pcie_shared_info** %6, align 8
  %13 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %6, align 8
  %14 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info* %16, i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @PCIE, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @brcmf_dbg(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %21, %2
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = call i32 @msleep(i32 10)
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp sgt i64 %33, 100
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %29
  %39 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info* %39, i64 %40)
  store i64 %41, i64* %9, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info* %43, i64 %44, i64 %45)
  %47 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %48 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BRCMF_PCIE_REG_SBMBX, align 4
  %51 = call i32 @pci_write_config_dword(i32 %49, i32 %50, i32 1)
  %52 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %53 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BCMA_CORE_PCIE2, align 4
  %56 = call %struct.brcmf_core* @brcmf_chip_get_core(i32 %54, i32 %55)
  store %struct.brcmf_core* %56, %struct.brcmf_core** %7, align 8
  %57 = load %struct.brcmf_core*, %struct.brcmf_core** %7, align 8
  %58 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %59, 13
  br i1 %60, label %61, label %67

61:                                               ; preds = %42
  %62 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %63 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BRCMF_PCIE_REG_SBMBX, align 4
  %66 = call i32 @pci_write_config_dword(i32 %64, i32 %65, i32 1)
  br label %67

67:                                               ; preds = %61, %42
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info*, i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @brcmf_pcie_write_tcm32(%struct.brcmf_pciedev_info*, i64, i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local %struct.brcmf_core* @brcmf_chip_get_core(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
