; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_get_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_get_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca %struct.v4l2_m2m_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_m2m_queue_ctx*, align 8
  store %struct.v4l2_m2m_ctx* %0, %struct.v4l2_m2m_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.v4l2_m2m_queue_ctx* @get_queue_ctx(%struct.v4l2_m2m_ctx* %7, i32 %8)
  store %struct.v4l2_m2m_queue_ctx* %9, %struct.v4l2_m2m_queue_ctx** %6, align 8
  %10 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %6, align 8
  %11 = icmp ne %struct.v4l2_m2m_queue_ctx* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.vb2_queue* null, %struct.vb2_queue** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.v4l2_m2m_queue_ctx*, %struct.v4l2_m2m_queue_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx* %14, i32 0, i32 0
  store %struct.vb2_queue* %15, %struct.vb2_queue** %3, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  ret %struct.vb2_queue* %17
}

declare dso_local %struct.v4l2_m2m_queue_ctx* @get_queue_ctx(%struct.v4l2_m2m_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
