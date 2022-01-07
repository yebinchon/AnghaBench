; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_intel_dsm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_intel_dsm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_host = type { i32, i32 }
%struct.device = type { i32 }
%struct.mmc_host = type { i32 }

@INTEL_DSM_FNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: DSM not supported, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: DSM function mask %#x\0A\00", align 1
@INTEL_DSM_HS_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_host*, %struct.device*, %struct.mmc_host*)* @intel_dsm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dsm_init(%struct.intel_host* %0, %struct.device* %1, %struct.mmc_host* %2) #0 {
  %4 = alloca %struct.intel_host*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_host* %0, %struct.intel_host** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.mmc_host* %2, %struct.mmc_host** %6, align 8
  %8 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %9 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %8, i32 0, i32 1
  store i32 -1, i32* %9, align 4
  %10 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @INTEL_DSM_FNS, align 4
  %13 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %14 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %13, i32 0, i32 0
  %15 = call i32 @__intel_dsm(%struct.intel_host* %10, %struct.device* %11, i32 %12, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %20 = call i32 @mmc_hostname(%struct.mmc_host* %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %25 = call i32 @mmc_hostname(%struct.mmc_host* %24)
  %26 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %27 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* @INTEL_DSM_HS_CAPS, align 4
  %33 = load %struct.intel_host*, %struct.intel_host** %4, align 8
  %34 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %33, i32 0, i32 1
  %35 = call i32 @intel_dsm(%struct.intel_host* %30, %struct.device* %31, i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %23, %18
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
