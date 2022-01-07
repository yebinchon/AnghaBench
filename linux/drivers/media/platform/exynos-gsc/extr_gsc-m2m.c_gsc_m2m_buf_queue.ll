; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.gsc_ctx = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ctx: %p, ctx->state: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @gsc_m2m_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_m2m_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.gsc_ctx*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %5 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %6 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %5)
  store %struct.vb2_v4l2_buffer* %6, %struct.vb2_v4l2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.gsc_ctx* @vb2_get_drv_priv(i32 %9)
  store %struct.gsc_ctx* %10, %struct.gsc_ctx** %4, align 8
  %11 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %12 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.gsc_ctx* %11, i32 %14)
  %16 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %25 = call i32 @v4l2_m2m_buf_queue(i64 %23, %struct.vb2_v4l2_buffer* %24)
  br label %26

26:                                               ; preds = %20, %1
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.gsc_ctx* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.gsc_ctx*, i32) #1

declare dso_local i32 @v4l2_m2m_buf_queue(i64, %struct.vb2_v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
