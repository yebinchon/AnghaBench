; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_probe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_probe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.channel_obj**, i32 }
%struct.channel_obj = type { i32, %struct.video_device, %struct.common_obj*, %struct.TYPE_4__ }
%struct.video_device = type { i32, i32*, %struct.vb2_queue*, i32, i32*, i32*, i32*, i32, i32 }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, %struct.channel_obj*, i8* }
%struct.common_obj = type { i32, i32, %struct.vb2_queue, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32 }

@VPIF_CAPTURE_MAX_DEVICES = common dso_local global i32 0, align 4
@vpif_obj = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@video_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@vpif_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vpif_capture: vb2_queue_init() failed\0A\00", align 1
@VPIF_DRIVER_NAME = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@vpif_fops = common dso_local global i32 0, align 4
@vpif_ioctl_ops = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"VPIF capture driver initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vpif_probe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_probe_complete() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.common_obj*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.channel_obj*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %143, %0
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @VPIF_CAPTURE_MAX_DEVICES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %146

13:                                               ; preds = %9
  %14 = load %struct.channel_obj**, %struct.channel_obj*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vpif_obj, i32 0, i32 2), align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %14, i64 %16
  %18 = load %struct.channel_obj*, %struct.channel_obj** %17, align 8
  store %struct.channel_obj* %18, %struct.channel_obj** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %21 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %23 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %22, i32 0, i32 2
  %24 = load %struct.common_obj*, %struct.common_obj** %23, align 8
  %25 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %24, i64 %25
  store %struct.common_obj* %26, %struct.common_obj** %2, align 8
  %27 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %28 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %27, i32 0, i32 4
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %31 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %30, i32 0, i32 0
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vpif_obj, i32 0, i32 3), align 8
  %34 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %35 = call i32 @vpif_set_input(i32 %33, %struct.channel_obj* %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %13
  br label %148

39:                                               ; preds = %13
  %40 = load i32, i32* @V4L2_STD_525_60, align 4
  %41 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %42 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %45 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @memset(i32* %46, i32 0, i32 4)
  %48 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %49 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %50 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %53 = call i32 @vpif_update_std_info(%struct.channel_obj* %52)
  %54 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %55 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %54, i32 0, i32 2
  store %struct.vb2_queue* %55, %struct.vb2_queue** %5, align 8
  %56 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %57 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %58 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @VB2_MMAP, align 4
  %60 = load i32, i32* @VB2_USERPTR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @VB2_DMABUF, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %67 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %68 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %67, i32 0, i32 8
  store %struct.channel_obj* %66, %struct.channel_obj** %68, align 8
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 7
  store i32* @video_qops, i32** %70, align 8
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 6
  store i32* @vb2_dma_contig_memops, i32** %72, align 8
  %73 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %74 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %73, i32 0, i32 1
  store i32 4, i32* %74, align 4
  %75 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %76 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %77 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %79 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %81 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %80, i32 0, i32 0
  %82 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %83 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %82, i32 0, i32 4
  store i32* %81, i32** %83, align 8
  %84 = load i32, i32* @vpif_dev, align 4
  %85 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %86 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %88 = call i32 @vb2_queue_init(%struct.vb2_queue* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %39
  %92 = call i32 @vpif_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %148

93:                                               ; preds = %39
  %94 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %95 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %94, i32 0, i32 1
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %98 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %97, i32 0, i32 1
  store %struct.video_device* %98, %struct.video_device** %3, align 8
  %99 = load %struct.video_device*, %struct.video_device** %3, align 8
  %100 = getelementptr inbounds %struct.video_device, %struct.video_device* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VPIF_DRIVER_NAME, align 4
  %103 = call i32 @strscpy(i32 %101, i32 %102, i32 4)
  %104 = load i32, i32* @video_device_release_empty, align 4
  %105 = load %struct.video_device*, %struct.video_device** %3, align 8
  %106 = getelementptr inbounds %struct.video_device, %struct.video_device* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 8
  %107 = load %struct.video_device*, %struct.video_device** %3, align 8
  %108 = getelementptr inbounds %struct.video_device, %struct.video_device* %107, i32 0, i32 6
  store i32* @vpif_fops, i32** %108, align 8
  %109 = load %struct.video_device*, %struct.video_device** %3, align 8
  %110 = getelementptr inbounds %struct.video_device, %struct.video_device* %109, i32 0, i32 5
  store i32* @vpif_ioctl_ops, i32** %110, align 8
  %111 = load %struct.video_device*, %struct.video_device** %3, align 8
  %112 = getelementptr inbounds %struct.video_device, %struct.video_device* %111, i32 0, i32 4
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vpif_obj, i32 0, i32 0), i32** %112, align 8
  %113 = load i32, i32* @VFL_DIR_RX, align 4
  %114 = load %struct.video_device*, %struct.video_device** %3, align 8
  %115 = getelementptr inbounds %struct.video_device, %struct.video_device* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %117 = load %struct.video_device*, %struct.video_device** %3, align 8
  %118 = getelementptr inbounds %struct.video_device, %struct.video_device* %117, i32 0, i32 2
  store %struct.vb2_queue* %116, %struct.vb2_queue** %118, align 8
  %119 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %120 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %119, i32 0, i32 0
  %121 = load %struct.video_device*, %struct.video_device** %3, align 8
  %122 = getelementptr inbounds %struct.video_device, %struct.video_device* %121, i32 0, i32 1
  store i32* %120, i32** %122, align 8
  %123 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %124 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.video_device*, %struct.video_device** %3, align 8
  %127 = getelementptr inbounds %struct.video_device, %struct.video_device* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %129 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %128, i32 0, i32 1
  %130 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %131 = call i32 @video_set_drvdata(%struct.video_device* %129, %struct.channel_obj* %130)
  %132 = load %struct.video_device*, %struct.video_device** %3, align 8
  %133 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = call i32 @video_register_device(%struct.video_device* %132, i32 %133, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %93
  br label %148

142:                                              ; preds = %93
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %9

146:                                              ; preds = %9
  %147 = call i32 @v4l2_info(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vpif_obj, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %176

148:                                              ; preds = %141, %91, %38
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %168, %148
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %149
  %154 = load %struct.channel_obj**, %struct.channel_obj*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vpif_obj, i32 0, i32 2), align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.channel_obj*, %struct.channel_obj** %154, i64 %156
  %158 = load %struct.channel_obj*, %struct.channel_obj** %157, align 8
  store %struct.channel_obj* %158, %struct.channel_obj** %4, align 8
  %159 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %160 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %159, i32 0, i32 2
  %161 = load %struct.common_obj*, %struct.common_obj** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %161, i64 %163
  store %struct.common_obj* %164, %struct.common_obj** %2, align 8
  %165 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %166 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %165, i32 0, i32 1
  %167 = call i32 @video_unregister_device(%struct.video_device* %166)
  br label %168

168:                                              ; preds = %153
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %149

171:                                              ; preds = %149
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vpif_obj, i32 0, i32 1), align 4
  %173 = call i32 @kfree(i32 %172)
  %174 = call i32 @v4l2_device_unregister(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vpif_obj, i32 0, i32 0))
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %1, align 4
  br label %176

176:                                              ; preds = %171, %146
  %177 = load i32, i32* %1, align 4
  ret i32 %177
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vpif_set_input(i32, %struct.channel_obj*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vpif_update_std_info(%struct.channel_obj*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.channel_obj*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
