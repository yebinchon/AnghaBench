; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_stop_ts_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_stop_ts_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"budget: %p\0A\00", align 1
@MC1 = common dso_local global i32 0, align 4
@MASK_20 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.av7110*)* @stop_ts_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_ts_capture(%struct.av7110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.av7110*, align 8
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  %4 = load %struct.av7110*, %struct.av7110** %3, align 8
  %5 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.av7110* %4)
  %6 = load %struct.av7110*, %struct.av7110** %3, align 8
  %7 = getelementptr inbounds %struct.av7110, %struct.av7110* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.av7110*, %struct.av7110** %3, align 8
  %13 = getelementptr inbounds %struct.av7110, %struct.av7110* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.av7110*, %struct.av7110** %3, align 8
  %17 = getelementptr inbounds %struct.av7110, %struct.av7110* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MC1, align 4
  %20 = load i32, i32* @MASK_20, align 4
  %21 = call i32 @saa7146_write(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.av7110*, %struct.av7110** %3, align 8
  %23 = getelementptr inbounds %struct.av7110, %struct.av7110* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MASK_10, align 4
  %26 = call i32 @SAA7146_IER_DISABLE(i32 %24, i32 %25)
  %27 = load %struct.av7110*, %struct.av7110** %3, align 8
  %28 = getelementptr inbounds %struct.av7110, %struct.av7110* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MASK_10, align 4
  %31 = call i32 @SAA7146_ISR_CLEAR(i32 %29, i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %15, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @saa7146_write(i32, i32, i32) #1

declare dso_local i32 @SAA7146_IER_DISABLE(i32, i32) #1

declare dso_local i32 @SAA7146_ISR_CLEAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
