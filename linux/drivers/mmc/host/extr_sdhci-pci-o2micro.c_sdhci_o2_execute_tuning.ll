; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_o2_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_o2_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_host = type { i64, i32, i32 }

@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: o2 dll recovery failed\0A\00", align 1
@MMC_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SDHCI_HS400_TUNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @sdhci_o2_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_o2_execute_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %9 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sdhci_execute_tuning(%struct.mmc_host* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MMC_SEND_TUNING_BLOCK_HS200, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %93

29:                                               ; preds = %19
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %31 = call i32 @sdhci_o2_wait_dll_detect_lock(%struct.sdhci_host* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %35 = call i32 @sdhci_o2_dll_recovery(%struct.sdhci_host* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mmc_hostname(i32 %40)
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %93

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %59 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %63 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %64 = call i32 @sdhci_set_bus_width(%struct.sdhci_host* %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %46
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %67 = call i32 @sdhci_o2_set_tuning_mode(%struct.sdhci_host* %66)
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %69 = call i32 @sdhci_start_tuning(%struct.sdhci_host* %68)
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @__sdhci_o2_execute_tuning(%struct.sdhci_host* %70, i32 %71)
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %74 = call i32 @sdhci_end_tuning(%struct.sdhci_host* %73)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %65
  %79 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %80 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %81 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @sdhci_set_bus_width(%struct.sdhci_host* %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %65
  %87 = load i32, i32* @SDHCI_HS400_TUNING, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %90 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %37, %26, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_execute_tuning(%struct.mmc_host*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @sdhci_o2_wait_dll_detect_lock(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_o2_dll_recovery(%struct.sdhci_host*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_set_bus_width(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_o2_set_tuning_mode(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_start_tuning(%struct.sdhci_host*) #1

declare dso_local i32 @__sdhci_o2_execute_tuning(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_end_tuning(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
