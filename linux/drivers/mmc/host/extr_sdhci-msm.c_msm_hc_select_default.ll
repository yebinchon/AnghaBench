; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_hc_select_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_hc_select_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32, %struct.sdhci_msm_offset* }
%struct.sdhci_msm_offset = type { i64, i64 }

@CORE_PWRSAVE_DLL = common dso_local global i32 0, align 4
@CORE_HC_MCLK_SEL_MASK = common dso_local global i32 0, align 4
@CORE_HC_MCLK_SEL_DFLT = common dso_local global i32 0, align 4
@CORE_HC_SELECT_IN_EN = common dso_local global i32 0, align 4
@CORE_HC_SELECT_IN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @msm_hc_select_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hc_select_default(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.sdhci_msm_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_msm_offset*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %7)
  store %struct.sdhci_pltfm_host* %8, %struct.sdhci_pltfm_host** %3, align 8
  %9 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %10 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %9)
  store %struct.sdhci_msm_host* %10, %struct.sdhci_msm_host** %4, align 8
  %11 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %12 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %11, i32 0, i32 1
  %13 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %12, align 8
  store %struct.sdhci_msm_offset* %13, %struct.sdhci_msm_offset** %6, align 8
  %14 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %15 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %1
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %6, align 8
  %23 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @CORE_PWRSAVE_DLL, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %6, align 8
  %36 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @writel_relaxed(i32 %31, i64 %38)
  br label %40

40:                                               ; preds = %18, %1
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %6, align 8
  %45 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = call i32 @readl_relaxed(i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @CORE_HC_MCLK_SEL_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @CORE_HC_MCLK_SEL_DFLT, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %58 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %6, align 8
  %61 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = call i32 @writel_relaxed(i32 %56, i64 %63)
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %66 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %6, align 8
  %69 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @readl_relaxed(i64 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @CORE_HC_SELECT_IN_EN, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @CORE_HC_SELECT_IN_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %6, align 8
  %86 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = call i32 @writel_relaxed(i32 %81, i64 %88)
  %90 = call i32 (...) @wmb()
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
