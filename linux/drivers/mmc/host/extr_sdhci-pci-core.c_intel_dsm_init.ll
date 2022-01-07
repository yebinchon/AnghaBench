; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_intel_dsm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_intel_dsm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_host = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.mmc_host = type { i32 }

@INTEL_DSM_FNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: DSM not supported, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: DSM function mask %#x\0A\00", align 1
@INTEL_DSM_DRV_STRENGTH = common dso_local global i32 0, align 4
@INTEL_DSM_D3_RETUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_host*, %struct.device*, %struct.mmc_host*)* @intel_dsm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dsm_init(%struct.intel_host* %0, %struct.device* %1, %struct.mmc_host* %2) #0 {
  %4 = alloca %struct.intel_host*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_host* %0, %struct.intel_host** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.mmc_host* %2, %struct.mmc_host** %6, align 8
  %9 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %10 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @INTEL_DSM_FNS, align 4
  %14 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %15 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %14, i32 0, i32 1
  %16 = call i32 @__intel_dsm(%struct.intel_host* %11, %struct.device* %12, i32 %13, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %21 = call i32 @mmc_hostname(%struct.mmc_host* %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %61

24:                                               ; preds = %3
  %25 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %26 = call i32 @mmc_hostname(%struct.mmc_host* %25)
  %27 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %28 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* @INTEL_DSM_DRV_STRENGTH, align 4
  %34 = call i32 @intel_dsm(%struct.intel_host* %31, %struct.device* %32, i32 %33, i32* %8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  %42 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %43 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* @INTEL_DSM_D3_RETUNE, align 4
  %47 = call i32 @intel_dsm(%struct.intel_host* %44, %struct.device* %45, i32 %46, i32* %8)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %57

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %51, %50
  %58 = phi i32 [ 1, %50 ], [ %56, %51 ]
  %59 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %60 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %19
  ret void
}

declare dso_local i32 @__intel_dsm(%struct.intel_host*, %struct.device*, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @intel_dsm(%struct.intel_host*, %struct.device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
