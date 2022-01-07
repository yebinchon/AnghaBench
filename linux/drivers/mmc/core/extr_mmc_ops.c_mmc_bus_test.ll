; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_bus_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_bus_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }

@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@MMC_BUS_WIDTH_1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MMC_BUS_TEST_W = common dso_local global i32 0, align 4
@MMC_BUS_TEST_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_bus_test(%struct.mmc_card* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 4, i32* %6, align 4
  br label %24

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MMC_BUS_WIDTH_1, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %40

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %10
  %26 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %27 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MMC_BUS_TEST_W, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mmc_send_bus_test(%struct.mmc_card* %26, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %34 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MMC_BUS_TEST_R, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mmc_send_bus_test(%struct.mmc_card* %33, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %25, %21, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mmc_send_bus_test(%struct.mmc_card*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
