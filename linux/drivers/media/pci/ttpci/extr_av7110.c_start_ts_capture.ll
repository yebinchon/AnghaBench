; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_start_ts_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_start_ts_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@TS_HEIGHT = common dso_local global i32 0, align 4
@TS_WIDTH = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_04 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*)* @start_ts_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_ts_capture(%struct.av7110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  %5 = load %struct.av7110*, %struct.av7110** %3, align 8
  %6 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.av7110* %5)
  %7 = load %struct.av7110*, %struct.av7110** %3, align 8
  %8 = getelementptr inbounds %struct.av7110, %struct.av7110* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.av7110*, %struct.av7110** %3, align 8
  %13 = getelementptr inbounds %struct.av7110, %struct.av7110* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  store i32 %15, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TS_HEIGHT, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.av7110*, %struct.av7110** %3, align 8
  %23 = getelementptr inbounds %struct.av7110, %struct.av7110* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @TS_WIDTH, align 4
  %27 = mul i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %24, %28
  %30 = load i32, i32* @TS_WIDTH, align 4
  %31 = call i32 @memset(i64 %29, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.av7110*, %struct.av7110** %3, align 8
  %37 = getelementptr inbounds %struct.av7110, %struct.av7110* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.av7110*, %struct.av7110** %3, align 8
  %39 = getelementptr inbounds %struct.av7110, %struct.av7110* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MASK_10, align 4
  %42 = call i32 @SAA7146_ISR_CLEAR(i32 %40, i32 %41)
  %43 = load %struct.av7110*, %struct.av7110** %3, align 8
  %44 = getelementptr inbounds %struct.av7110, %struct.av7110* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MASK_10, align 4
  %47 = call i32 @SAA7146_IER_ENABLE(i32 %45, i32 %46)
  %48 = load %struct.av7110*, %struct.av7110** %3, align 8
  %49 = getelementptr inbounds %struct.av7110, %struct.av7110* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MC1, align 4
  %52 = load i32, i32* @MASK_04, align 4
  %53 = load i32, i32* @MASK_20, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @saa7146_write(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.av7110*, %struct.av7110** %3, align 8
  %57 = getelementptr inbounds %struct.av7110, %struct.av7110* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %35, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @SAA7146_ISR_CLEAR(i32, i32) #1

declare dso_local i32 @SAA7146_IER_ENABLE(i32, i32) #1

declare dso_local i32 @saa7146_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
