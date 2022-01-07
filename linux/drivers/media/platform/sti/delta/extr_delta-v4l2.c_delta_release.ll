; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.delta_ctx = type { i32, %struct.TYPE_3__, %struct.delta_dec*, %struct.delta_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.delta_dec = type { i32 }
%struct.delta_dev = type { i32, i32, i64, i64 }

@close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s decoder instance released\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @delta_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_dev*, align 8
  %5 = alloca %struct.delta_dec*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.delta_ctx* @to_ctx(i32 %8)
  store %struct.delta_ctx* %9, %struct.delta_ctx** %3, align 8
  %10 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %10, i32 0, i32 3
  %12 = load %struct.delta_dev*, %struct.delta_dev** %11, align 8
  store %struct.delta_dev* %12, %struct.delta_dev** %4, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 2
  %15 = load %struct.delta_dec*, %struct.delta_dec** %14, align 8
  store %struct.delta_dec* %15, %struct.delta_dec** %5, align 8
  %16 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %17 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.delta_dec*, %struct.delta_dec** %5, align 8
  %20 = load i32, i32* @close, align 4
  %21 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %22 = call i32 @call_dec_op(%struct.delta_dec* %19, i32 %20, %struct.delta_ctx* %21)
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %24 = call i32 @delta_trace_summary(%struct.delta_ctx* %23)
  %25 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @v4l2_m2m_ctx_release(i32 %28)
  %30 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %30, i32 0, i32 1
  %32 = call i32 @v4l2_fh_del(%struct.TYPE_3__* %31)
  %33 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %33, i32 0, i32 1
  %35 = call i32 @v4l2_fh_exit(%struct.TYPE_3__* %34)
  %36 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %37 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %42 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @clk_disable_unprepare(i64 %43)
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %47 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %52 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @clk_disable_unprepare(i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %57 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %64 = call i32 @kfree(%struct.delta_ctx* %63)
  %65 = load %struct.delta_dev*, %struct.delta_dev** %4, align 8
  %66 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  ret i32 0
}

declare dso_local %struct.delta_ctx* @to_ctx(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @call_dec_op(%struct.delta_dec*, i32, %struct.delta_ctx*) #1

declare dso_local i32 @delta_trace_summary(%struct.delta_ctx*) #1

declare dso_local i32 @v4l2_m2m_ctx_release(i32) #1

declare dso_local i32 @v4l2_fh_del(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.delta_ctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
