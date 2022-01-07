; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i32 }
%struct.vb2_queue = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_reqbufs(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca %struct.v4l2_requestbuffers*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %6, align 8
  %9 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %10 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx* %9, i32 %12)
  store %struct.vb2_queue* %13, %struct.vb2_queue** %7, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %16 = call i32 @vb2_reqbufs(%struct.vb2_queue* %14, %struct.v4l2_requestbuffers* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32* [ %27, %24 ], [ null, %28 ]
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @vb2_reqbufs(%struct.vb2_queue*, %struct.v4l2_requestbuffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
