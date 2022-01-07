; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_init_uhs_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_init_uhs_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MMC_TIMING_UHS_SDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_sdio_init_uhs_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_init_uhs_card(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %13 = call i32 @sdio_enable_4bit_bus(%struct.mmc_card* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %53

17:                                               ; preds = %11
  %18 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %19 = call i32 @sdio_select_driver_type(%struct.mmc_card* %18)
  %20 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %21 = call i32 @sdio_set_bus_speed_mode(%struct.mmc_card* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %53

25:                                               ; preds = %17
  %26 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @mmc_host_is_spi(%struct.TYPE_6__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %25
  %32 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MMC_TIMING_UHS_SDR50, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40, %31
  %50 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %51 = call i32 @mmc_execute_tuning(%struct.mmc_card* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %40, %25
  br label %53

53:                                               ; preds = %52, %24, %16
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @sdio_enable_4bit_bus(%struct.mmc_card*) #1

declare dso_local i32 @sdio_select_driver_type(%struct.mmc_card*) #1

declare dso_local i32 @sdio_set_bus_speed_mode(%struct.mmc_card*) #1

declare dso_local i32 @mmc_host_is_spi(%struct.TYPE_6__*) #1

declare dso_local i32 @mmc_execute_tuning(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
