; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c___tm6000_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c___tm6000_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.tm6000_fh* }
%struct.tm6000_fh = type { i32, i32, i32, i32, i32, i32, i32, %struct.tm6000_core* }
%struct.tm6000_core = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.video_device = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_DEBUG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"tm6000: open called (dev=%s)\0A\00", align 1
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"open dev=%s type=%s users=%d\0A\00", align 1
@v4l2_type_names = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@format = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Open: fh=%p, dev=%p, dev->vidq=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Open: list_empty queued=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Open: list_empty active=%d\0A\00", align 1
@TM6000_MODE_ANALOG = common dso_local global i32 0, align 4
@tm6000_video_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"video_open: setting radio device\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @__tm6000_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tm6000_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.tm6000_core*, align 8
  %6 = alloca %struct.tm6000_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %4, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call %struct.tm6000_core* @video_drvdata(%struct.file* %12)
  store %struct.tm6000_core* %13, %struct.tm6000_core** %5, align 8
  %14 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %16 = load i32, i32* @V4L2_DEBUG_OPEN, align 4
  %17 = load %struct.video_device*, %struct.video_device** %4, align 8
  %18 = call i32 @video_device_node_name(%struct.video_device* %17)
  %19 = call i32 (%struct.tm6000_core*, i32, i8*, ...) @dprintk(%struct.tm6000_core* %15, i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.video_device*, %struct.video_device** %4, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %28 [
    i32 130, label %23
    i32 128, label %25
    i32 129, label %27
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %24, i32* %7, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %176

31:                                               ; preds = %27, %25, %23
  %32 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %33 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %37 = load i32, i32* @V4L2_DEBUG_OPEN, align 4
  %38 = load %struct.video_device*, %struct.video_device** %4, align 8
  %39 = call i32 @video_device_node_name(%struct.video_device* %38)
  %40 = load i32*, i32** @v4l2_type_names, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %46 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.tm6000_core*, i32, i8*, ...) @dprintk(%struct.tm6000_core* %36, i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %44, i32 %47)
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.tm6000_fh* @kzalloc(i32 40, i32 %49)
  store %struct.tm6000_fh* %50, %struct.tm6000_fh** %6, align 8
  %51 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %52 = icmp eq %struct.tm6000_fh* null, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %31
  %54 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %55 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %176

60:                                               ; preds = %31
  %61 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %62 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %61, i32 0, i32 2
  %63 = load %struct.video_device*, %struct.video_device** %4, align 8
  %64 = call i32 @v4l2_fh_init(i32* %62, %struct.video_device* %63)
  %65 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %66 = load %struct.file*, %struct.file** %3, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  store %struct.tm6000_fh* %65, %struct.tm6000_fh** %67, align 8
  %68 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %69 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %70 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %69, i32 0, i32 7
  store %struct.tm6000_core* %68, %struct.tm6000_core** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %73 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %76 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %79 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @format, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %85 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %87 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @format_by_fourcc(i32 %88)
  %90 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %91 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %93 = call i32 @tm6000_get_std_res(%struct.tm6000_core* %92)
  %94 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %95 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %98 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %100 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %103 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %105 = load i32, i32* @V4L2_DEBUG_OPEN, align 4
  %106 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %107 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %108 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %109 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %108, i32 0, i32 5
  %110 = call i32 (%struct.tm6000_core*, i32, i8*, ...) @dprintk(%struct.tm6000_core* %104, i32 %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.tm6000_fh* %106, %struct.tm6000_core* %107, %struct.TYPE_3__* %109)
  %111 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %112 = load i32, i32* @V4L2_DEBUG_OPEN, align 4
  %113 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %114 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = call i32 @list_empty(i32* %115)
  %117 = call i32 (%struct.tm6000_core*, i32, i8*, ...) @dprintk(%struct.tm6000_core* %111, i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %119 = load i32, i32* @V4L2_DEBUG_OPEN, align 4
  %120 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %121 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = call i32 @list_empty(i32* %122)
  %124 = call i32 (%struct.tm6000_core*, i32, i8*, ...) @dprintk(%struct.tm6000_core* %118, i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %126 = call i32 @tm6000_init_analog_mode(%struct.tm6000_core* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %60
  %130 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %131 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %130, i32 0, i32 2
  %132 = call i32 @v4l2_fh_exit(i32* %131)
  %133 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %134 = call i32 @kfree(%struct.tm6000_fh* %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %2, align 4
  br label %176

136:                                              ; preds = %60
  %137 = load i32, i32* @TM6000_MODE_ANALOG, align 4
  %138 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %139 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %141 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %136
  %145 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %146 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %145, i32 0, i32 3
  %147 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %148 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %147, i32 0, i32 3
  %149 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %150 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %153 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %154 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %155 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %154, i32 0, i32 2
  %156 = call i32 @videobuf_queue_vmalloc_init(i32* %146, i32* @tm6000_video_qops, i32* null, i32* %148, i32 %151, i32 %152, i32 4, %struct.tm6000_fh* %153, i32* %155)
  br label %172

157:                                              ; preds = %136
  %158 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %159 = load i32, i32* @V4L2_DEBUG_OPEN, align 4
  %160 = call i32 (%struct.tm6000_core*, i32, i8*, ...) @dprintk(%struct.tm6000_core* %158, i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %161 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %162 = call i32 @tm6000_set_audio_rinput(%struct.tm6000_core* %161)
  %163 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %164 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %163, i32 0, i32 1
  %165 = load i32, i32* @tuner, align 4
  %166 = load i32, i32* @s_radio, align 4
  %167 = call i32 @v4l2_device_call_all(i32* %164, i32 0, i32 %165, i32 %166)
  %168 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %169 = call i32 @tm6000_prepare_isoc(%struct.tm6000_core* %168)
  %170 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %171 = call i32 @tm6000_start_thread(%struct.tm6000_core* %170)
  br label %172

172:                                              ; preds = %157, %144
  %173 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %174 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %173, i32 0, i32 2
  %175 = call i32 @v4l2_fh_add(i32* %174)
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %172, %129, %53, %28
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.tm6000_core* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(%struct.tm6000_core*, i32, i8*, ...) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local %struct.tm6000_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i32 @format_by_fourcc(i32) #1

declare dso_local i32 @tm6000_get_std_res(%struct.tm6000_core*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tm6000_init_analog_mode(%struct.tm6000_core*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.tm6000_fh*) #1

declare dso_local i32 @videobuf_queue_vmalloc_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.tm6000_fh*, i32*) #1

declare dso_local i32 @tm6000_set_audio_rinput(%struct.tm6000_core*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32) #1

declare dso_local i32 @tm6000_prepare_isoc(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_start_thread(%struct.tm6000_core*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
