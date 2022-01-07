; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_probe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_probe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { %struct.TYPE_8__, %struct.video_device, i32, i32, i32, %struct.vb2_queue, %struct.TYPE_7__**, %struct.TYPE_6__*, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.video_device = type { i32, i32*, %struct.vb2_queue*, i32, %struct.TYPE_8__*, i32*, i32*, i32, i32 }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, %struct.vpfe_device*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i8* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@vpfe_video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vb2_queue_init() failed\0A\00", align 1
@VPFE_MODULE_NAME = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@vpfe_fops = common dso_local global i32 0, align 4
@vpfe_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to register video device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*)* @vpfe_probe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_probe_complete(%struct.vpfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  %7 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %8 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %7, i32 0, i32 10
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %11 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %10, i32 0, i32 2
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %18 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %17, i32 0, i32 7
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %24 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %23, i32 0, i32 8
  store i32* %22, i32** %24, align 8
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 6
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %33 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %36 = call i32 @vpfe_set_input(%struct.vpfe_device* %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %135

40:                                               ; preds = %1
  %41 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %42 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %41, i32 0, i32 5
  store %struct.vb2_queue* %42, %struct.vb2_queue** %5, align 8
  %43 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %44 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %45 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @VB2_MMAP, align 4
  %47 = load i32, i32* @VB2_DMABUF, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @VB2_READ, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %52 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %54 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %55 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %54, i32 0, i32 8
  store %struct.vpfe_device* %53, %struct.vpfe_device** %55, align 8
  %56 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %57 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %56, i32 0, i32 7
  store i32* @vpfe_video_qops, i32** %57, align 8
  %58 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %59 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %58, i32 0, i32 6
  store i32* @vb2_dma_contig_memops, i32** %59, align 8
  %60 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %61 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %60, i32 0, i32 1
  store i32 4, i32* %61, align 4
  %62 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %63 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %64 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %66 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %65, i32 0, i32 2
  %67 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %68 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %72 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %75 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %77 = call i32 @vb2_queue_init(%struct.vb2_queue* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %40
  %81 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %82 = call i32 @vpfe_err(%struct.vpfe_device* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %135

83:                                               ; preds = %40
  %84 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %85 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %84, i32 0, i32 3
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %88 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %87, i32 0, i32 1
  store %struct.video_device* %88, %struct.video_device** %4, align 8
  %89 = load %struct.video_device*, %struct.video_device** %4, align 8
  %90 = getelementptr inbounds %struct.video_device, %struct.video_device* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VPFE_MODULE_NAME, align 4
  %93 = call i32 @strscpy(i32 %91, i32 %92, i32 4)
  %94 = load i32, i32* @video_device_release_empty, align 4
  %95 = load %struct.video_device*, %struct.video_device** %4, align 8
  %96 = getelementptr inbounds %struct.video_device, %struct.video_device* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load %struct.video_device*, %struct.video_device** %4, align 8
  %98 = getelementptr inbounds %struct.video_device, %struct.video_device* %97, i32 0, i32 6
  store i32* @vpfe_fops, i32** %98, align 8
  %99 = load %struct.video_device*, %struct.video_device** %4, align 8
  %100 = getelementptr inbounds %struct.video_device, %struct.video_device* %99, i32 0, i32 5
  store i32* @vpfe_ioctl_ops, i32** %100, align 8
  %101 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %102 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %101, i32 0, i32 0
  %103 = load %struct.video_device*, %struct.video_device** %4, align 8
  %104 = getelementptr inbounds %struct.video_device, %struct.video_device* %103, i32 0, i32 4
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %104, align 8
  %105 = load i32, i32* @VFL_DIR_RX, align 4
  %106 = load %struct.video_device*, %struct.video_device** %4, align 8
  %107 = getelementptr inbounds %struct.video_device, %struct.video_device* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %109 = load %struct.video_device*, %struct.video_device** %4, align 8
  %110 = getelementptr inbounds %struct.video_device, %struct.video_device* %109, i32 0, i32 2
  store %struct.vb2_queue* %108, %struct.vb2_queue** %110, align 8
  %111 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %112 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %111, i32 0, i32 2
  %113 = load %struct.video_device*, %struct.video_device** %4, align 8
  %114 = getelementptr inbounds %struct.video_device, %struct.video_device* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %116 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.video_device*, %struct.video_device** %4, align 8
  %121 = getelementptr inbounds %struct.video_device, %struct.video_device* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.video_device*, %struct.video_device** %4, align 8
  %123 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %124 = call i32 @video_set_drvdata(%struct.video_device* %122, %struct.vpfe_device* %123)
  %125 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %126 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %125, i32 0, i32 1
  %127 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %128 = call i32 @video_register_device(%struct.video_device* %126, i32 %127, i32 -1)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %83
  %132 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %133 = call i32 @vpfe_err(%struct.vpfe_device* %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %135

134:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %140

135:                                              ; preds = %131, %80, %39
  %136 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %137 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %136, i32 0, i32 0
  %138 = call i32 @v4l2_device_unregister(%struct.TYPE_8__* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %135, %134
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vpfe_set_input(%struct.vpfe_device*, i32) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @vpfe_err(%struct.vpfe_device*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.vpfe_device*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
