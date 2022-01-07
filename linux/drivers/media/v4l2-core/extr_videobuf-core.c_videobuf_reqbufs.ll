; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.videobuf_queue*, i32*, i32*)* }
%struct.v4l2_requestbuffers = type { i64, i32, i32 }

@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@V4L2_MEMORY_OVERLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reqbufs: memory type invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"reqbufs: queue type invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"reqbufs: streaming already exists\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"reqbufs: stream running\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"reqbufs: count invalid (%d)\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"reqbufs: bufs=%d, size=0x%x [%u pages total]\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"reqbufs: mmap setup returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_reqbufs(%struct.videobuf_queue* %0, %struct.v4l2_requestbuffers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.v4l2_requestbuffers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.v4l2_requestbuffers* %1, %struct.v4l2_requestbuffers** %5, align 8
  %9 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_MEMORY_USERPTR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @V4L2_MEMORY_OVERLAY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %120

30:                                               ; preds = %20, %14, %2
  %31 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %32 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %31)
  %33 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %37 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %116

44:                                               ; preds = %30
  %45 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %46 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %116

53:                                               ; preds = %44
  %54 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %55 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %54, i32 0, i32 2
  %56 = call i32 @list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %116

62:                                               ; preds = %53
  %63 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %73 = call i32 @__videobuf_free(%struct.videobuf_queue* %72)
  store i32 %73, i32* %8, align 4
  br label %116

74:                                               ; preds = %62
  %75 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %74
  store i32 0, i32* %6, align 4
  %84 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %85 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.videobuf_queue*, i32*, i32*)*, i32 (%struct.videobuf_queue*, i32*, i32*)** %87, align 8
  %89 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %90 = call i32 %88(%struct.videobuf_queue* %89, i32* %7, i32* %6)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @PAGE_ALIGN(i32 %94)
  %96 = mul i32 %93, %95
  %97 = load i32, i32* @PAGE_SHIFT, align 4
  %98 = lshr i32 %96, %97
  %99 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %91, i32 %92, i32 %98)
  %100 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @__videobuf_mmap_setup(%struct.videobuf_queue* %100, i32 %101, i32 %102, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %83
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  br label %116

112:                                              ; preds = %83
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %109, %67, %58, %49, %40
  %117 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %118 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %26
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__videobuf_free(%struct.videobuf_queue*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @__videobuf_mmap_setup(%struct.videobuf_queue*, i32, i32, i32) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
