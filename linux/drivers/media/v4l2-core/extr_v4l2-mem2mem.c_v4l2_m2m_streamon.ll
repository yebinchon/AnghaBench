; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.vb2_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_streamon(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx* %9, i32 %10)
  store %struct.vb2_queue* %11, %struct.vb2_queue** %7, align 8
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @vb2_streamon(%struct.vb2_queue* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %19 = call i32 @v4l2_m2m_try_schedule(%struct.v4l2_m2m_ctx* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @vb2_streamon(%struct.vb2_queue*, i32) #1

declare dso_local i32 @v4l2_m2m_try_schedule(%struct.v4l2_m2m_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
