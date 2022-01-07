; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_job_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_job_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_m2m_job_finish(%struct.fimc_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %8 = icmp ne %struct.fimc_ctx* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %2
  br label %58

16:                                               ; preds = %9
  %17 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %20)
  store %struct.vb2_v4l2_buffer* %21, %struct.vb2_v4l2_buffer** %5, align 8
  %22 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %25)
  store %struct.vb2_v4l2_buffer* %26, %struct.vb2_v4l2_buffer** %6, align 8
  %27 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %28 = icmp ne %struct.vb2_v4l2_buffer* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %16
  %34 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %35 = icmp ne %struct.vb2_v4l2_buffer* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %42 = icmp ne %struct.vb2_v4l2_buffer* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %45 = icmp ne %struct.vb2_v4l2_buffer* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fimc_ctx*, %struct.fimc_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @v4l2_m2m_job_finish(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %15, %46, %43, %40
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
