; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i64, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.camera_data = type { i64, %struct.TYPE_3__*, i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"QUERYBUF index:%d offset:%d flags:%d seq:%d bytesused:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @cpia2_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.camera_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.camera_data* @video_drvdata(%struct.file* %9)
  store %struct.camera_data* %10, %struct.camera_data** %8, align 8
  %11 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %21 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %140

27:                                               ; preds = %16
  %28 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %29 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %27
  %57 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %58 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  br label %63

60:                                               ; preds = %27
  %61 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %61, i32 0, i32 4
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %65 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %70 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %122 [
    i32 131, label %78
    i32 130, label %78
    i32 129, label %78
    i32 128, label %84
  ]

78:                                               ; preds = %63, %63, %63
  %79 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %82 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  br label %122

84:                                               ; preds = %63
  %85 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %86 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %97 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ns_to_timeval(i32 %104)
  %106 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %109 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %120 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %63, %84, %78
  %123 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %131 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @DBG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %125, i64 %129, i32 %132, i32 %135, i32 %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %122, %24
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ns_to_timeval(i32) #1

declare dso_local i32 @DBG(i8*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
