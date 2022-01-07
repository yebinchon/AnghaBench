; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_set_bus_speed_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_set_bus_speed_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MMC_TIMING_UHS_SDR104 = common dso_local global i32 0, align 4
@UHS_SDR104_MAX_DTR = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_DDR50 = common dso_local global i32 0, align 4
@UHS_DDR50_MAX_DTR = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i32 0, align 4
@UHS_SDR50_MAX_DTR = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR25 = common dso_local global i32 0, align 4
@UHS_SDR25_MAX_DTR = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR12 = common dso_local global i32 0, align 4
@UHS_SDR12_MAX_DTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Problem setting bus speed mode!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32*)* @sd_set_bus_speed_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_bus_speed_mode(%struct.mmc_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %41 [
    i32 131, label %11
    i32 132, label %17
    i32 128, label %23
    i32 129, label %29
    i32 130, label %35
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @MMC_TIMING_UHS_SDR104, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @UHS_SDR104_MAX_DTR, align 4
  %14 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* @MMC_TIMING_UHS_DDR50, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @UHS_DDR50_MAX_DTR, align 4
  %20 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* @MMC_TIMING_UHS_SDR50, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @UHS_SDR50_MAX_DTR, align 4
  %26 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %42

29:                                               ; preds = %2
  %30 = load i32, i32* @MMC_TIMING_UHS_SDR25, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @UHS_SDR25_MAX_DTR, align 4
  %32 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %42

35:                                               ; preds = %2
  %36 = load i32, i32* @MMC_TIMING_UHS_SDR12, align 4
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @UHS_SDR12_MAX_DTR, align 4
  %38 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %42

41:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %83

42:                                               ; preds = %35, %29, %23, %17, %11
  %43 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %44 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @mmc_sd_switch(%struct.mmc_card* %43, i32 1, i32 0, i32 %46, i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %83

53:                                               ; preds = %42
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 16
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 15
  %58 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mmc_hostname(i32 %65)
  %67 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %82

68:                                               ; preds = %53
  %69 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %70 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @mmc_set_timing(i32 %71, i32 %72)
  %74 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %75 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %78 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @mmc_set_clock(i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %68, %62
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %51, %41
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @mmc_sd_switch(%struct.mmc_card*, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_set_timing(i32, i32) #1

declare dso_local i32 @mmc_set_clock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
