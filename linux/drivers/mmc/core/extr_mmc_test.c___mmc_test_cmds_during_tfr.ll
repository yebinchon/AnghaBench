; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c___mmc_test_cmds_during_tfr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c___mmc_test_cmds_during_tfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_4__*, %struct.mmc_test_area }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_test_area = type { i32 }

@MMC_CAP_CMD_DURING_TFR = common dso_local global i32 0, align 4
@RESULT_UNSUP_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i64, i32, i32, i32)* @__mmc_test_cmds_during_tfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mmc_test_cmds_during_tfr(%struct.mmc_test_card* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_test_card*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mmc_test_area*, align 8
  %13 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %15 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %14, i32 0, i32 1
  store %struct.mmc_test_area* %15, %struct.mmc_test_area** %12, align 8
  %16 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %17 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MMC_CAP_CMD_DURING_TFR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @RESULT_UNSUP_HOST, align 4
  store i32 %27, i32* %6, align 4
  br label %58

28:                                               ; preds = %5
  %29 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @mmc_test_area_map(%struct.mmc_test_card* %29, i64 %30, i32 0, i32 0)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %58

36:                                               ; preds = %28
  %37 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %38 = load %struct.mmc_test_area*, %struct.mmc_test_area** %12, align 8
  %39 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @mmc_test_ongoing_transfer(%struct.mmc_test_card* %37, i32 %40, i32 %41, i32 0, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %58

49:                                               ; preds = %36
  %50 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %51 = load %struct.mmc_test_area*, %struct.mmc_test_area** %12, align 8
  %52 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mmc_test_ongoing_transfer(%struct.mmc_test_card* %50, i32 %53, i32 %54, i32 1, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %49, %47, %34, %26
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @mmc_test_area_map(%struct.mmc_test_card*, i64, i32, i32) #1

declare dso_local i32 @mmc_test_ongoing_transfer(%struct.mmc_test_card*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
