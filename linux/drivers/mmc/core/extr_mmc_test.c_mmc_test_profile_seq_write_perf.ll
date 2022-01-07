; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_seq_write_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_seq_write_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.mmc_test_area }
%struct.mmc_test_area = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_profile_seq_write_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_profile_seq_write_perf(%struct.mmc_test_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca %struct.mmc_test_area*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  %7 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %7, i32 0, i32 0
  store %struct.mmc_test_area* %8, %struct.mmc_test_area** %4, align 8
  store i64 512, i64* %5, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @mmc_test_seq_write_perf(%struct.mmc_test_card* %16, i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %5, align 8
  %26 = shl i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @mmc_test_seq_write_perf(%struct.mmc_test_card* %31, i64 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @mmc_test_seq_write_perf(%struct.mmc_test_card*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
