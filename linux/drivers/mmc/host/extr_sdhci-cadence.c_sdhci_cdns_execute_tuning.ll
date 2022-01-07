; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-cadence.c_sdhci_cdns_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-cadence.c_sdhci_cdns_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i64, i32 }

@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDHCI_CDNS_MAX_TUNING_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no tuning point found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @sdhci_cdns_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_cdns_execute_tuning(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %12 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %11)
  store %struct.sdhci_host* %12, %struct.sdhci_host** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sdhci_execute_tuning(%struct.mmc_host* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MMC_SEND_TUNING_BLOCK_HS200, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %82

32:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %61, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SDHCI_CDNS_MAX_TUNING_LOOP, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @sdhci_cdns_set_tune_val(%struct.sdhci_host* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @mmc_send_tuning(i32 %45, i32 %46, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %37
  store i32 0, i32* %7, align 4
  br label %60

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %33

64:                                               ; preds = %33
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %69 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mmc_dev(i32 %70)
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %82

75:                                               ; preds = %64
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sdiv i32 %78, 2
  %80 = sub nsw i32 %77, %79
  %81 = call i32 @sdhci_cdns_set_tune_val(%struct.sdhci_host* %76, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %67, %29, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @sdhci_execute_tuning(%struct.mmc_host*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @sdhci_cdns_set_tune_val(%struct.sdhci_host*, i32) #1

declare dso_local i64 @mmc_send_tuning(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
