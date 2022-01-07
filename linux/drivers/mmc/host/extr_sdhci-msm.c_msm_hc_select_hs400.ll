; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_hc_select_hs400.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_hc_select_hs400.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32, i32, i32, i64, %struct.sdhci_msm_offset* }
%struct.sdhci_msm_offset = type { i64, i64 }

@CORE_HC_MCLK_SEL_MASK = common dso_local global i32 0, align 4
@CORE_HC_MCLK_SEL_HS400 = common dso_local global i32 0, align 4
@CORE_HC_SELECT_IN_HS400 = common dso_local global i32 0, align 4
@CORE_HC_SELECT_IN_EN = common dso_local global i32 0, align 4
@CORE_DLL_LOCK = common dso_local global i32 0, align 4
@CORE_DDR_DLL_LOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%s: Unable to get DLL_LOCK/DDR_DLL_LOCK, dll_status: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @msm_hc_select_hs400 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hc_select_hs400(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.sdhci_msm_host*, align 8
  %5 = alloca %struct.mmc_ios, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdhci_msm_offset*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %3, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %13 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_msm_host* %13, %struct.sdhci_msm_host** %4, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast %struct.mmc_ios* %5 to i8*
  %19 = bitcast %struct.mmc_ios* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %21 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %20, i32 0, i32 4
  %22 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %21, align 8
  store %struct.sdhci_msm_offset* %22, %struct.sdhci_msm_offset** %9, align 8
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %24 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %9, align 8
  %27 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i32 @readl_relaxed(i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @CORE_HC_MCLK_SEL_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @CORE_HC_MCLK_SEL_HS400, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %9, align 8
  %43 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @writel_relaxed(i32 %38, i64 %45)
  %47 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %48 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %51, %1
  %56 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %57 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %55
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %9, align 8
  %65 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i32 @readl_relaxed(i64 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @CORE_HC_SELECT_IN_HS400, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @CORE_HC_SELECT_IN_EN, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %77 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %9, align 8
  %80 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = call i32 @writel_relaxed(i32 %75, i64 %82)
  br label %84

84:                                               ; preds = %60, %55, %51
  %85 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %86 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %84
  %90 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %91 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %89
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %96 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %9, align 8
  %99 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @CORE_DLL_LOCK, align 4
  %105 = load i32, i32* @CORE_DDR_DLL_LOCK, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = call i32 @readl_relaxed_poll_timeout(i64 %101, i32 %102, i32 %107, i32 10, i32 1000)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @ETIMEDOUT, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %94
  %114 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %115 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = call i32 @mmc_hostname(%struct.TYPE_2__* %116)
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %94
  br label %121

121:                                              ; preds = %120, %89, %84
  %122 = call i32 (...) @wmb()
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_2__*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
