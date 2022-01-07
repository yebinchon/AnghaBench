; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_m2m_ctx = type { i32 }
%struct.v4l2_buffer = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_queue = type { i32 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@DST_QUEUE_OFF_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_m2m_querybuf(%struct.file* %0, %struct.v4l2_m2m_ctx* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.v4l2_m2m_ctx*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.v4l2_m2m_ctx* %1, %struct.v4l2_m2m_ctx** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.v4l2_m2m_ctx*, %struct.v4l2_m2m_ctx** %5, align 8
  %11 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx* %10, i32 %13)
  store %struct.vb2_queue* %14, %struct.vb2_queue** %7, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %17 = call i32 @vb2_querybuf(%struct.vb2_queue* %15, %struct.v4l2_buffer* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %3
  %24 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %25 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @V4L2_TYPE_IS_OUTPUT(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %23
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %44 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %43
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %36

60:                                               ; preds = %36
  br label %70

61:                                               ; preds = %29
  %62 = load i64, i64* @DST_QUEUE_OFF_BASE, align 8
  %63 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %62
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 8
  br label %70

70:                                               ; preds = %61, %60
  br label %71

71:                                               ; preds = %70, %23, %3
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(%struct.v4l2_m2m_ctx*, i32) #1

declare dso_local i32 @vb2_querybuf(%struct.vb2_queue*, %struct.v4l2_buffer*) #1

declare dso_local i32 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i64 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
