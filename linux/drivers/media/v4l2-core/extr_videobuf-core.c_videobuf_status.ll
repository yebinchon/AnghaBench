; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@MAGIC_BUFFER = common dso_local global i32 0, align 4
@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.v4l2_buffer*, %struct.videobuf_buffer*, i32)* @videobuf_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @videobuf_status(%struct.videobuf_queue* %0, %struct.v4l2_buffer* %1, %struct.videobuf_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.videobuf_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %6, align 8
  store %struct.videobuf_buffer* %2, %struct.videobuf_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %10 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAGIC_BUFFER, align 4
  %13 = call i32 @MAGIC_CHECK(i32 %11, i32 %12)
  %14 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %15 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %20 = call i32 @MAGIC_CHECK(i32 %18, i32 %19)
  %21 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %69 [
    i32 137, label %37
    i32 135, label %49
    i32 136, label %61
    i32 138, label %68
  ]

37:                                               ; preds = %4
  %38 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %39 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  br label %69

49:                                               ; preds = %4
  %50 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  br label %69

61:                                               ; preds = %4
  %62 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %63 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %69

68:                                               ; preds = %4
  br label %69

69:                                               ; preds = %4, %68, %61, %49, %37
  %70 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %71 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %74 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %79 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %69
  %84 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %85 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %106 [
    i32 129, label %87
    i32 128, label %87
    i32 134, label %87
    i32 132, label %93
    i32 133, label %99
    i32 130, label %105
    i32 131, label %105
  ]

87:                                               ; preds = %83, %83, %83
  %88 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %89 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %106

93:                                               ; preds = %83
  %94 = load i32, i32* @V4L2_BUF_FLAG_ERROR, align 4
  %95 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %83, %93
  %100 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %101 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %102 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %106

105:                                              ; preds = %83, %83
  br label %106

106:                                              ; preds = %83, %105, %99, %87
  %107 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %108 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %113 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ns_to_timeval(i32 %114)
  %116 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %119 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %122 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %124 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = ashr i32 %125, 1
  %127 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %128 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  ret void
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @ns_to_timeval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
