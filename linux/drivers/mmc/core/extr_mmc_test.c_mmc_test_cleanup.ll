; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_cleanup(%struct.mmc_test_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  %6 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %7 = call i32 @mmc_test_set_blksize(%struct.mmc_test_card* %6, i32 512)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memset(i32 %15, i32 0, i32 512)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %34, %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BUFFER_SIZE, align 4
  %20 = sdiv i32 %19, 512
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %24 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mmc_test_buffer_transfer(%struct.mmc_test_card* %23, i32 %26, i32 %27, i32 512, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %17

37:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mmc_test_set_blksize(%struct.mmc_test_card*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mmc_test_buffer_transfer(%struct.mmc_test_card*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
