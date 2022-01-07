; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c_v4l2_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-clk.c_v4l2_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_clk = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { {}* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_clk_set_rate(%struct.v4l2_clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.v4l2_clk* %0, %struct.v4l2_clk** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @clk_round_rate(i64 %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %12
  %24 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @clk_set_rate(i64 %26, i64 %27)
  store i32 %28, i32* %3, align 4
  br label %67

29:                                               ; preds = %2
  %30 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %31 = call i32 @v4l2_clk_lock_driver(%struct.v4l2_clk* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %29
  %37 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.v4l2_clk*, i64)**
  %45 = load i32 (%struct.v4l2_clk*, i64)*, i32 (%struct.v4l2_clk*, i64)** %44, align 8
  %46 = icmp ne i32 (%struct.v4l2_clk*, i64)* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOSYS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %60

50:                                               ; preds = %36
  %51 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.v4l2_clk*, i64)**
  %56 = load i32 (%struct.v4l2_clk*, i64)*, i32 (%struct.v4l2_clk*, i64)** %55, align 8
  %57 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 %56(%struct.v4l2_clk* %57, i64 %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %47
  %61 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_clk, %struct.v4l2_clk* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.v4l2_clk*, %struct.v4l2_clk** %4, align 8
  %65 = call i32 @v4l2_clk_unlock_driver(%struct.v4l2_clk* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %34, %23, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @clk_round_rate(i64, i64) #1

declare dso_local i32 @clk_set_rate(i64, i64) #1

declare dso_local i32 @v4l2_clk_lock_driver(%struct.v4l2_clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_clk_unlock_driver(%struct.v4l2_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
