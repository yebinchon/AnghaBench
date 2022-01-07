; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sirf.c_sdhci_sirf_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sirf.c_sdhci_sirf_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }

@SDHCI_CLK_DELAY_SETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: Found good phase = %d\0A\00", align 1
@SIRF_TUNING_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: Found bad phase = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: Setting the tuning phase to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: No tuning point found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @sdhci_sirf_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_sirf_execute_tuning(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mmc_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 3, i32* %5, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 0
  %18 = load %struct.mmc_host*, %struct.mmc_host** %17, align 8
  store %struct.mmc_host* %18, %struct.mmc_host** %15, align 8
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %20 = load i32, i32* @SDHCI_CLK_DELAY_SETTING, align 4
  %21 = call i32 @sdhci_readw(%struct.sdhci_host* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = and i32 %22, -16384
  store i32 %23, i32* %14, align 4
  br label %24

24:                                               ; preds = %114, %2
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %85, %24
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SDHCI_CLK_DELAY_SETTING, align 4
  %31 = call i32 @sdhci_writel(%struct.sdhci_host* %26, i32 %29, i32 %30)
  %32 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @mmc_send_tuning(%struct.mmc_host* %32, i32 %33, i32* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %7, align 8
  %39 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %40 = call i32 @mmc_dev(%struct.mmc_host* %39)
  %41 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %42 = call i32 @mmc_hostname(%struct.mmc_host* %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %47, %36
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SIRF_TUNING_COUNT, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %62, %63
  %65 = sdiv i32 %64, 2
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %61, %57, %49
  br label %84

67:                                               ; preds = %25
  %68 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %69 = call i32 @mmc_dev(%struct.mmc_host* %68)
  %70 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %71 = call i32 @mmc_hostname(%struct.mmc_host* %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %78, %79
  %81 = sdiv i32 %80, 2
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %77, %67
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @SIRF_TUNING_COUNT, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %25, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  %98 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @SDHCI_CLK_DELAY_SETTING, align 4
  %103 = call i32 @sdhci_writel(%struct.sdhci_host* %98, i32 %101, i32 %102)
  %104 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %105 = call i32 @mmc_dev(%struct.mmc_host* %104)
  %106 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %107 = call i32 @mmc_hostname(%struct.mmc_host* %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108)
  br label %123

110:                                              ; preds = %93, %90
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %24

115:                                              ; preds = %110
  %116 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %117 = call i32 @mmc_dev(%struct.mmc_host* %116)
  %118 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %119 = call i32 @mmc_hostname(%struct.mmc_host* %118)
  %120 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %115, %96
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
