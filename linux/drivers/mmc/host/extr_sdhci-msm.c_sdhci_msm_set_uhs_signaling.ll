; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_set_uhs_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_set_uhs_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, %struct.mmc_host*, i64 }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32, %struct.sdhci_msm_offset* }
%struct.sdhci_msm_offset = type { i64 }

@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_MASK = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR12 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR25 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR50 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_DDR50 = common dso_local global i32 0, align 4
@CORE_FREQ_100MHZ = common dso_local global i64 0, align 8
@CORE_DLL_RST = common dso_local global i32 0, align 4
@CORE_DLL_PDN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: clock=%u uhs=%u ctrl_2=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @sdhci_msm_set_uhs_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_msm_set_uhs_signaling(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.sdhci_msm_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdhci_msm_offset*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %5, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %14)
  store %struct.sdhci_pltfm_host* %15, %struct.sdhci_pltfm_host** %6, align 8
  %16 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %17 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %16)
  store %struct.sdhci_msm_host* %17, %struct.sdhci_msm_host** %7, align 8
  %18 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %7, align 8
  %19 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %18, i32 0, i32 1
  %20 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %19, align 8
  store %struct.sdhci_msm_offset* %20, %struct.sdhci_msm_offset** %10, align 8
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %22 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %23 = call i32 @sdhci_readw(%struct.sdhci_host* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @SDHCI_CTRL_UHS_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %49 [
    i32 130, label %29
    i32 129, label %33
    i32 128, label %37
    i32 133, label %41
    i32 134, label %41
    i32 131, label %41
    i32 132, label %45
    i32 135, label %45
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @SDHCI_CTRL_UHS_SDR12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %49

33:                                               ; preds = %2
  %34 = load i32, i32* @SDHCI_CTRL_UHS_SDR25, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %49

37:                                               ; preds = %2
  %38 = load i32, i32* @SDHCI_CTRL_UHS_SDR50, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %49

41:                                               ; preds = %2, %2, %2
  %42 = load i32, i32* @SDHCI_CTRL_UHS_SDR104, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %49

45:                                               ; preds = %2, %2
  %46 = load i32, i32* @SDHCI_CTRL_UHS_DDR50, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %2, %45, %41, %37, %33, %29
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %51 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CORE_FREQ_100MHZ, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %112

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 133
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 134
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 131
  br i1 %63, label %64, label %69

64:                                               ; preds = %61, %58, %55
  %65 = load i32, i32* @SDHCI_CTRL_UHS_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %71 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %10, align 8
  %74 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = call i32 @readl_relaxed(i64 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @CORE_DLL_RST, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %10, align 8
  %86 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = call i32 @writel_relaxed(i32 %81, i64 %88)
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %91 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %10, align 8
  %94 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i32 @readl_relaxed(i64 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @CORE_DLL_PDN, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %103 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %10, align 8
  %106 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = call i32 @writel_relaxed(i32 %101, i64 %108)
  %110 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %7, align 8
  %111 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %69, %49
  %113 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %114 = call i32 @mmc_dev(%struct.mmc_host* %113)
  %115 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %116 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %115, i32 0, i32 1
  %117 = load %struct.mmc_host*, %struct.mmc_host** %116, align 8
  %118 = call i32 @mmc_hostname(%struct.mmc_host* %117)
  %119 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %120 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @dev_dbg(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %118, i64 %121, i32 %122, i32 %123)
  %125 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %128 = call i32 @sdhci_writew(%struct.sdhci_host* %125, i32 %126, i32 %127)
  %129 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %130 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 133
  br i1 %133, label %134, label %139

134:                                              ; preds = %112
  %135 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %136 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %137 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %136, i32 0, i32 0
  %138 = call i32 @sdhci_msm_hs400(%struct.sdhci_host* %135, %struct.TYPE_2__* %137)
  br label %139

139:                                              ; preds = %134, %112
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_msm_hs400(%struct.sdhci_host*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
