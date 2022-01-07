; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c___mmc_test_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c___mmc_test_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32* }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32)* @__mmc_test_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mmc_test_prepare(%struct.mmc_test_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_test_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %9 = call i32 @mmc_test_set_blksize(%struct.mmc_test_card* %8, i32 512)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %60

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @memset(i32* %20, i32 223, i32 512)
  br label %38

22:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 512
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %23

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %17
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @BUFFER_SIZE, align 4
  %42 = sdiv i32 %41, 512
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %46 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mmc_test_buffer_transfer(%struct.mmc_test_card* %45, i32* %48, i32 %49, i32 512, i32 1)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %39

59:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %53, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @mmc_test_set_blksize(%struct.mmc_test_card*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mmc_test_buffer_transfer(%struct.mmc_test_card*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
