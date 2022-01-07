; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_prepare_broken_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_prepare_broken_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_request = type { %struct.TYPE_5__*, i32*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MMC_WRITE_BLOCK = common dso_local global i32 0, align 4
@MMC_READ_SINGLE_BLOCK = common dso_local global i32 0, align 4
@MMC_SEND_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_test_card*, %struct.mmc_request*, i32)* @mmc_test_prepare_broken_mrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_prepare_broken_mrq(%struct.mmc_test_card* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_test_card*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %8 = icmp ne %struct.mmc_request* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %9, %3
  %21 = phi i1 [ true, %9 ], [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %64

26:                                               ; preds = %20
  %27 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @MMC_WRITE_BLOCK, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @MMC_READ_SINGLE_BLOCK, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %43 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %64

48:                                               ; preds = %26
  %49 = load i32, i32* @MMC_SEND_STATUS, align 4
  %50 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.mmc_test_card*, %struct.mmc_test_card** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 16
  %60 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %61 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %25, %48, %40
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
