; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_vidioc_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_vidioc_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@gbuffers = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@meye = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@MEYE_BUF_USING = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@MEYE_BUF_DONE = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@gbufsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
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
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @gbuffers, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %94

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0), align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %28 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0), align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MEYE_BUF_USING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %18
  %41 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %42 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %18
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0), align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MEYE_BUF_DONE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %57 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %46
  %62 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %63 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0), align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ns_to_timeval(i32 %70)
  %72 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0), align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %83 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @gbufsize, align 4
  %87 = mul i32 %85, %86
  %88 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @gbufsize, align 4
  %92 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %61, %15
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @ns_to_timeval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
