; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c_v4l2_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c_v4l2_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_clk = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_clk_enable(%struct.v4l2_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_clk* %0, %struct.v4l2_clk** %3, align 8
  %5 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @clk_prepare_enable(i64 %12)
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %16 = call i32 @v4l2_clk_lock_driver(%struct.v4l2_clk* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %14
  %22 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %55

30:                                               ; preds = %21
  %31 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %32 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.v4l2_clk*)**
  %36 = load i32 (%struct.v4l2_clk*)*, i32 (%struct.v4l2_clk*)** %35, align 8
  %37 = icmp ne i32 (%struct.v4l2_clk*)* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %30
  %39 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %40 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.v4l2_clk*)**
  %44 = load i32 (%struct.v4l2_clk*)*, i32 (%struct.v4l2_clk*)** %43, align 8
  %45 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %46 = call i32 %44(%struct.v4l2_clk* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %51 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %38
  br label %55

55:                                               ; preds = %54, %30, %21
  %56 = load %struct.v4l2_clk*, %struct.v4l2_clk** %3, align 8
  %57 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %19, %9
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @v4l2_clk_lock_driver(%struct.v4l2_clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
