; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_readl_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_readl_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_esdhc = type { i64, i32 }

@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_ADMA1 = common dso_local global i32 0, align 4
@VENDOR_V_22 = common dso_local global i64 0, align 8
@SDHCI_CAN_DO_ADMA2 = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_DATA_LVL_MASK = common dso_local global i32 0, align 4
@SDHCI_CMD_LVL = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES_1 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_SDR50 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_SDR104 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_DDR50 = common dso_local global i32 0, align 4
@SDHCI_DATA_INHIBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32, i32)* @esdhc_readl_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_readl_fixup(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdhci_pltfm_host*, align 8
  %9 = alloca %struct.sdhci_esdhc*, align 8
  %10 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %8, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %14 = call %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.sdhci_esdhc* %14, %struct.sdhci_esdhc** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SDHCI_CAN_DO_ADMA1, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %9, align 8
  %25 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VENDOR_V_22, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SDHCI_CAN_DO_ADMA2, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %87

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %18, %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 1048575
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 4
  %44 = load i32, i32* @SDHCI_DATA_LVL_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 1
  %50 = load i32, i32* @SDHCI_CMD_LVL, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %87

55:                                               ; preds = %35
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SDHCI_CAPABILITIES_1, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @SDHCI_SUPPORT_SDR50, align 4
  %62 = load i32, i32* @SDHCI_SUPPORT_SDR104, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SDHCI_SUPPORT_DDR50, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %60, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %87

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %9, align 8
  %75 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SDHCI_DATA_INHIBIT, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %87

84:                                               ; preds = %73, %69
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %78, %59, %39, %29
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
