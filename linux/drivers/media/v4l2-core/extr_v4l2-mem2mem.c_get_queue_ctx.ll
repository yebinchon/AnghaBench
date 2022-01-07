; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_get_queue_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_get_queue_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_queue_ctx = type { i32 }
%struct.v4l2_m2m_ctx = type { %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_m2m_queue_ctx* (%struct.v4l2_m2m_ctx*, i32)* @get_queue_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_m2m_queue_ctx* @get_queue_ctx(%struct.v4l2_m2m_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_m2m_queue_ctx*, align 8
  %4 = alloca %struct.v4l2_m2m_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_m2m_ctx* %0, %struct.v4l2_m2m_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %10, i32 0, i32 1
  store %struct.v4l2_m2m_queue_ctx* %11, %struct.v4l2_m2m_queue_ctx** %3, align 8
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_m2m_ctx, %struct.v4l2_m2m_ctx* %13, i32 0, i32 0
  store %struct.v4l2_m2m_queue_ctx* %14, %struct.v4l2_m2m_queue_ctx** %3, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %3, align 8
  ret %struct.v4l2_m2m_queue_ctx* %16
}

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
