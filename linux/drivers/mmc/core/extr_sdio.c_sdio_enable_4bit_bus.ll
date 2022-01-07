; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_enable_4bit_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_enable_4bit_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MMC_TYPE_SDIO = common dso_local global i64 0, align 8
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@SD_SCR_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @sdio_enable_4bit_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_enable_4bit_bus(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MMC_TYPE_SDIO, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %12 = call i32 @sdio_enable_wide(%struct.mmc_card* %11)
  store i32 %12, i32* %4, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %13
  %23 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SD_SCR_BUS_WIDTH_4, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %22
  %31 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %32 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %33 = call i32 @mmc_app_set_bus_width(%struct.mmc_card* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %61

38:                                               ; preds = %30
  %39 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %40 = call i32 @sdio_enable_wide(%struct.mmc_card* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %45 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %46 = call i32 @mmc_app_set_bus_width(%struct.mmc_card* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %49

48:                                               ; preds = %22, %13
  store i32 0, i32* %2, align 4
  br label %61

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %10
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %58 = call i32 @mmc_set_bus_width(%struct.TYPE_4__* %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %48, %36
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @sdio_enable_wide(%struct.mmc_card*) #1

declare dso_local i32 @mmc_app_set_bus_width(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_set_bus_width(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
