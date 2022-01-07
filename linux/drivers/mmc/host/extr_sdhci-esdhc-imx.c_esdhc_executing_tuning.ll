; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_executing_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_executing_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@ESDHC_TUNE_CTRL_MIN = common dso_local global i32 0, align 4
@ESDHC_TUNE_CTRL_MAX = common dso_local global i32 0, align 4
@ESDHC_TUNE_CTRL_STEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tuning %s at 0x%x ret %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @esdhc_executing_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_executing_tuning(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @ESDHC_TUNE_CTRL_MIN, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ESDHC_TUNE_CTRL_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @esdhc_prepare_tuning(%struct.sdhci_host* %15, i32 %16)
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @mmc_send_tuning(i32 %20, i32 %21, i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  %26 = load i32, i32* @ESDHC_TUNE_CTRL_STEP, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %24, %10
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ESDHC_TUNE_CTRL_STEP, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %51, %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ESDHC_TUNE_CTRL_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @esdhc_prepare_tuning(%struct.sdhci_host* %38, i32 %39)
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mmc_send_tuning(i32 %43, i32 %44, i32* null)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* @ESDHC_TUNE_CTRL_STEP, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %55

51:                                               ; preds = %37
  %52 = load i32, i32* @ESDHC_TUNE_CTRL_STEP, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %33

55:                                               ; preds = %47, %33
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %7, align 4
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @esdhc_prepare_tuning(%struct.sdhci_host* %60, i32 %61)
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %64 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @mmc_send_tuning(i32 %65, i32 %66, i32* null)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %69 = call i32 @esdhc_post_tuning(%struct.sdhci_host* %68)
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %71 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mmc_dev(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @esdhc_prepare_tuning(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mmc_send_tuning(i32, i32, i32*) #1

declare dso_local i32 @esdhc_post_tuning(%struct.sdhci_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
