; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_set_clock_rate_for_bus_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_set_clock_rate_for_bus_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.clk* }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"%s: Failed to set clock at rate %u at timing %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: Setting clock at rate %lu at timing %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @msm_set_clock_rate_for_bus_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_set_clock_rate_for_bus_mode(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_msm_host*, align 8
  %7 = alloca %struct.mmc_ios, align 4
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %5, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %13 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_msm_host* %13, %struct.sdhci_msm_host** %6, align 8
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast %struct.mmc_ios* %7 to i8*
  %19 = bitcast %struct.mmc_ios* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %21 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  store %struct.clk* %25, %struct.clk** %8, align 8
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @msm_get_clock_rate_for_bus_mode(%struct.sdhci_host* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.clk*, %struct.clk** %8, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @clk_set_rate(%struct.clk* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @mmc_hostname(%struct.TYPE_4__* %37)
  %39 = load i32, i32* %4, align 4
  %40 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %41)
  br label %56

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %46 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %48 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @mmc_hostname(%struct.TYPE_4__* %49)
  %51 = load %struct.clk*, %struct.clk** %8, align 8
  %52 = call i32 @clk_get_rate(%struct.clk* %51)
  %53 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %43, %34
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msm_get_clock_rate_for_bus_mode(%struct.sdhci_host*, i32) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
