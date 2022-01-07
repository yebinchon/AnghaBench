; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.videobuf_buffer = type { i32, i32 }

@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"dqbuf: next_buffer error: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"dqbuf: state is error\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dqbuf: state is done\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"dqbuf: state invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sync = common dso_local global i32 0, align 4
@VIDEOBUF_IDLE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_dqbuf(%struct.videobuf_queue* %0, %struct.v4l2_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.videobuf_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.videobuf_buffer* null, %struct.videobuf_buffer** %7, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %15 = call i32 @MAGIC_CHECK(i32 %13, i32 %14)
  %16 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %17 = call i32 @memset(%struct.v4l2_buffer* %16, i32 0, i32 4)
  %18 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %19 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %18)
  %20 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @stream_next_buffer(%struct.videobuf_queue* %20, %struct.videobuf_buffer** %7, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %65

28:                                               ; preds = %3
  %29 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %36 [
    i32 128, label %32
    i32 129, label %34
  ]

32:                                               ; preds = %28
  %33 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %40

34:                                               ; preds = %28
  %35 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %40

36:                                               ; preds = %28
  %37 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %65

40:                                               ; preds = %34, %32
  %41 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %42 = load i32, i32* @sync, align 4
  %43 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %44 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %45 = call i32 @CALL(%struct.videobuf_queue* %41, i32 %42, %struct.videobuf_queue* %43, %struct.videobuf_buffer* %44)
  %46 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %47 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %48 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %49 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %50 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @videobuf_status(%struct.videobuf_queue* %46, %struct.v4l2_buffer* %47, %struct.videobuf_buffer* %48, i32 %51)
  %53 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %53, i32 0, i32 1
  %55 = call i32 @list_del(i32* %54)
  %56 = load i32, i32* @VIDEOBUF_IDLE, align 4
  %57 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %40, %36, %25
  %66 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %67 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %66)
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @memset(%struct.v4l2_buffer*, i32, i32) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @stream_next_buffer(%struct.videobuf_queue*, %struct.videobuf_buffer**, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @CALL(%struct.videobuf_queue*, i32, %struct.videobuf_queue*, %struct.videobuf_buffer*) #1

declare dso_local i32 @videobuf_status(%struct.videobuf_queue*, %struct.v4l2_buffer*, %struct.videobuf_buffer*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
