; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_vidioc_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_vidioc_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@meye = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MEYE_BUF_DONE = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@gbufsize = common dso_local global i32 0, align 4
@MEYE_BUF_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %9 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %120

17:                                               ; preds = %3
  %18 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %19 = call i64 @kfifo_len(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 3))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @O_NONBLOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %120

32:                                               ; preds = %21, %17
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 4), align 8
  %34 = call i64 @kfifo_len(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 3))
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @wait_event_interruptible(i32 %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %41 = load i32, i32* @EINTR, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %120

43:                                               ; preds = %32
  %44 = bitcast i32* %8 to i8*
  %45 = call i32 @kfifo_out_locked(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 3), i8* %44, i32 4, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %120

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MEYE_BUF_DONE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %120

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %77 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %82 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ns_to_timeval(i32 %89)
  %91 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %102 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @gbufsize, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @gbufsize, align 4
  %111 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load i64, i64* @MEYE_BUF_UNUSED, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i64 %113, i64* %118, align 8
  %119 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %64, %60, %47, %39, %28, %14
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kfifo_len(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @kfifo_out_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @ns_to_timeval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
