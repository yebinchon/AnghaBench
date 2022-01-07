; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_rw_multiple_sg_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_rw_multiple_sg_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32 }
%struct.mmc_test_multiple_rw = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, %struct.mmc_test_multiple_rw*)* @mmc_test_rw_multiple_sg_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_rw_multiple_sg_len(%struct.mmc_test_card* %0, %struct.mmc_test_multiple_rw* %1) #0 {
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca %struct.mmc_test_multiple_rw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  store %struct.mmc_test_multiple_rw* %1, %struct.mmc_test_multiple_rw** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i1 [ false, %7 ], [ %15, %13 ]
  br i1 %17, label %18, label %39

18:                                               ; preds = %16
  %19 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %20 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %4, align 8
  %21 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mmc_test_multiple_rw*, %struct.mmc_test_multiple_rw** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mmc_test_rw_multiple(%struct.mmc_test_card* %19, %struct.mmc_test_multiple_rw* %20, i32 524288, i32 %23, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %39

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %34, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @mmc_test_rw_multiple(%struct.mmc_test_card*, %struct.mmc_test_multiple_rw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
