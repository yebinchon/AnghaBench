; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_alpha_ctrl_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.c_fimc_alpha_ctrl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.TYPE_5__, %struct.TYPE_7__, %struct.fimc_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.fimc_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_alpha_ctrl_update(%struct.fimc_ctx* %0) #0 {
  %2 = alloca %struct.fimc_ctx*, align 8
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %2, align 8
  %5 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %5, i32 0, i32 2
  %7 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  store %struct.fimc_dev* %7, %struct.fimc_dev** %3, align 8
  %8 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %10, align 8
  store %struct.v4l2_ctrl* %11, %struct.v4l2_ctrl** %4, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %13 = icmp eq %struct.v4l2_ctrl* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %1
  br label %50

22:                                               ; preds = %14
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %24 = call i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl* %23)
  %25 = load %struct.fimc_ctx*, %struct.fimc_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @fimc_get_alpha_mask(i32 %28)
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %22
  %41 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %22
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %49 = call i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl* %48)
  br label %50

50:                                               ; preds = %47, %21
  ret void
}

declare dso_local i32 @v4l2_ctrl_lock(%struct.v4l2_ctrl*) #1

declare dso_local i64 @fimc_get_alpha_mask(i32) #1

declare dso_local i32 @v4l2_ctrl_unlock(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
