; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_au_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_au_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32 }
%struct.delta_au = type { %struct.vb2_v4l2_buffer }
%struct.vb2_v4l2_buffer = type { i64 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_ctx*, %struct.delta_au*, i32)* @delta_au_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_au_done(%struct.delta_ctx* %0, %struct.delta_au* %1, i32 %2) #0 {
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca %struct.delta_au*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %4, align 8
  store %struct.delta_au* %1, %struct.delta_au** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.delta_au*, %struct.delta_au** %5, align 8
  %9 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %8, i32 0, i32 0
  store %struct.vb2_v4l2_buffer* %9, %struct.vb2_v4l2_buffer** %7, align 8
  %10 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = sext i32 %12 to i64
  %15 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %16 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %17, i32 %25)
  ret void
}

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
