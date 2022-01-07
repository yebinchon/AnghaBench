; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { i32 }
%struct.v4l2_requestbuffers = type { i32, i32 }
%struct.vpfe_device = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vpfe_reqbufs\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid buffer type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Only one IO user allowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@vpfe_videobuf_qops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vpfe_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_fh*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vpfe_device* @video_drvdata(%struct.file* %11)
  store %struct.vpfe_device* %12, %struct.vpfe_device** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.vpfe_fh*, %struct.vpfe_fh** %14, align 8
  store %struct.vpfe_fh* %15, %struct.vpfe_fh** %9, align 8
  %16 = load i32, i32* @debug, align 4
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %18 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %17, i32 0, i32 8
  %19 = call i32 @v4l2_dbg(i32 1, i32 %16, i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %21 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %27 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %26, i32 0, i32 8
  %28 = call i32 @v4l2_err(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %90

31:                                               ; preds = %3
  %32 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %33 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock_interruptible(i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %31
  %40 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %41 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %46 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %45, i32 0, i32 8
  %47 = call i32 @v4l2_err(i32* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %85

50:                                               ; preds = %39
  %51 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %55 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %57 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %56, i32 0, i32 2
  %58 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %59 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %62 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %61, i32 0, i32 5
  %63 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %67 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vpfe_fh*, %struct.vpfe_fh** %9, align 8
  %73 = call i32 @videobuf_queue_dma_contig_init(i32* %57, i32* @vpfe_videobuf_qops, i32 %60, i32* %62, i32 %65, i32 %71, i32 4, %struct.vpfe_fh* %72, i32* null)
  %74 = load %struct.vpfe_fh*, %struct.vpfe_fh** %9, align 8
  %75 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %77 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %79 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %78, i32 0, i32 3
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %82 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %81, i32 0, i32 2
  %83 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %84 = call i32 @videobuf_reqbufs(i32* %82, %struct.v4l2_requestbuffers* %83)
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %50, %44
  %86 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %87 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %37, %25
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @videobuf_queue_dma_contig_init(i32*, i32*, i32, i32*, i32, i32, i32, %struct.vpfe_fh*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @videobuf_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
