; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i64, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.camera_data = type { %struct.TYPE_4__*, i32, i64, i32, i32, %struct.framebuf*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }
%struct.framebuf = type { i64, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FRAME_READY = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DQBUF #%d status:%d seq:%d length:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @cpia2_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.camera_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.framebuf*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.camera_data* @video_drvdata(%struct.file* %11)
  store %struct.camera_data* %12, %struct.camera_data** %8, align 8
  %13 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %193

27:                                               ; preds = %18
  %28 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %29 = call i32 @find_earliest_filled_buffer(%struct.camera_data* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @O_NONBLOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %193

42:                                               ; preds = %32, %27
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %42
  %46 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %47 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %46, i32 0, i32 5
  %48 = load %struct.framebuf*, %struct.framebuf** %47, align 8
  store %struct.framebuf* %48, %struct.framebuf** %10, align 8
  %49 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 4
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %56 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %55, i32 0, i32 3
  %57 = call i32 @video_is_registered(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %45
  %60 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %61 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %60, i32 0, i32 5
  %62 = load %struct.framebuf*, %struct.framebuf** %61, align 8
  store %struct.framebuf* %62, %struct.framebuf** %10, align 8
  %63 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FRAME_READY, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %59, %45
  %68 = phi i1 [ true, %45 ], [ %66, %59 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @wait_event_interruptible(i32 %54, i32 %69)
  %71 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %72 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %71, i32 0, i32 4
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load i32, i32* @current, align 4
  %75 = call i64 @signal_pending(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @ERESTARTSYS, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %193

80:                                               ; preds = %67
  %81 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %82 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %81, i32 0, i32 3
  %83 = call i32 @video_is_registered(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOTTY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %193

88:                                               ; preds = %80
  %89 = load %struct.framebuf*, %struct.framebuf** %10, align 8
  %90 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %42
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %97 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %109 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %116 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %116, i32 0, i32 12
  store i32 %115, i32* %117, align 4
  %118 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %119 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ns_to_timeval(i32 %127)
  %129 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %129, i32 0, i32 11
  store i32 %128, i32* %130, align 8
  %131 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %132 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %144 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %147 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %154 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %152, %155
  %157 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %158 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %157, i32 0, i32 10
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %161 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %164 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %163, i32 0, i32 9
  store i32 %162, i32* %164, align 8
  %165 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %166 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %165, i32 0, i32 8
  store i64 0, i64* %166, align 8
  %167 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %168 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %167, i32 0, i32 7
  store i64 0, i64* %168, align 8
  %169 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %170 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %169, i32 0, i32 6
  %171 = call i32 @memset(i32* %170, i32 0, i32 4)
  %172 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %173 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load %struct.camera_data*, %struct.camera_data** %8, align 8
  %177 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %176, i32 0, i32 0
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %180 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %187 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %190 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %175, i32 %185, i32 %188, i32 %191)
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %92, %85, %77, %39, %24
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @find_earliest_filled_buffer(%struct.camera_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @video_is_registered(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @ns_to_timeval(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
