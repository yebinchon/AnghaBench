; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32, i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_esdhc = type { i32, i32, i64, i64 }

@SDHCI_HS400_TUNING = common dso_local global i32 0, align 4
@ESDHC_SDTIMNGCTL = common dso_local global i32 0, align 4
@ESDHC_FLW_CTL_BG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ESDHC_TBPTR = common dso_local global i32 0, align 4
@ESDHC_TBCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @esdhc_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_execute_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.sdhci_esdhc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %12)
  store %struct.sdhci_host* %13, %struct.sdhci_host** %5, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %15 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %14)
  store %struct.sdhci_pltfm_host* %15, %struct.sdhci_pltfm_host** %6, align 8
  %16 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %17 = call %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %16)
  store %struct.sdhci_esdhc* %17, %struct.sdhci_esdhc** %7, align 8
  %18 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %19 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 3
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @esdhc_of_set_clock(%struct.sdhci_host* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %33 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %38 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SDHCI_HS400_TUNING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @esdhc_of_set_clock(%struct.sdhci_host* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %36, %31
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %51 = call i32 @esdhc_tuning_block_enable(%struct.sdhci_host* %50, i32 1)
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %53 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SDHCI_HS400_TUNING, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %8, align 4
  %57 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @sdhci_execute_tuning(%struct.mmc_host* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %49
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %64 = load i32, i32* @ESDHC_SDTIMNGCTL, align 4
  %65 = call i32 @sdhci_readl(%struct.sdhci_host* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @ESDHC_FLW_CTL_BG, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @ESDHC_SDTIMNGCTL, align 4
  %72 = call i32 @sdhci_writel(%struct.sdhci_host* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %49
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %75 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %118

80:                                               ; preds = %73
  %81 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %82 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %80
  %86 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %87 = load i32, i32* @ESDHC_TBPTR, align 4
  %88 = call i32 @sdhci_readl(%struct.sdhci_host* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, -32640
  %91 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %92 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 3, %93
  %95 = or i32 %90, %94
  %96 = load %struct.sdhci_esdhc*, %struct.sdhci_esdhc** %7, align 8
  %97 = getelementptr inbounds %struct.sdhci_esdhc, %struct.sdhci_esdhc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 5, %98
  %100 = shl i32 %99, 8
  %101 = or i32 %95, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @ESDHC_TBPTR, align 4
  %105 = call i32 @sdhci_writel(%struct.sdhci_host* %102, i32 %103, i32 %104)
  %106 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %107 = load i32, i32* @ESDHC_TBCTL, align 4
  %108 = call i32 @sdhci_readl(%struct.sdhci_host* %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, 3
  store i32 %110, i32* %10, align 4
  %111 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @ESDHC_TBCTL, align 4
  %114 = call i32 @sdhci_writel(%struct.sdhci_host* %111, i32 %112, i32 %113)
  %115 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @sdhci_execute_tuning(%struct.mmc_host* %115, i32 %116)
  br label %118

118:                                              ; preds = %85, %80, %73
  %119 = load i32, i32* %11, align 4
  ret i32 %119
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_esdhc* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @esdhc_of_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @esdhc_tuning_block_enable(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_execute_tuning(%struct.mmc_host*, i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
