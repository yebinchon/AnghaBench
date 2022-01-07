; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_card* }
%struct.mmc_card = type { %struct.TYPE_2__, %struct.mmc_host* }
%struct.TYPE_2__ = type { i64 }
%struct.mmc_host = type { i32 }

@RESULT_OK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RESULT_UNSUP_HOST = common dso_local global i32 0, align 4
@RESULT_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_reset(%struct.mmc_test_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  %7 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %7, i32 0, i32 0
  %9 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  store %struct.mmc_card* %9, %struct.mmc_card** %4, align 8
  %10 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 1
  %12 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  store %struct.mmc_host* %12, %struct.mmc_host** %5, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %14 = call i32 @mmc_hw_reset(%struct.mmc_host* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %25 = call i32 @mmc_cmdq_disable(%struct.mmc_card* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* @RESULT_OK, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @RESULT_UNSUP_HOST, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* @RESULT_FAIL, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %33, %26
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mmc_hw_reset(%struct.mmc_host*) #1

declare dso_local i32 @mmc_cmdq_disable(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
