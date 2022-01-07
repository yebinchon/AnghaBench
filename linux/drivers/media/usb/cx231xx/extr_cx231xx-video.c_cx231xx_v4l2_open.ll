; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i32, i32, i32, %struct.cx231xx* }
%struct.cx231xx = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.video_device = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"open dev=%s type=%s users=%d\0A\00", align 1
@v4l2_type_names = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@POLARIS_AVMODE_ENXTERNAL_AV = common dso_local global i32 0, align 4
@POLARIS_AVMODE_ANALOGT_TV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"video_open: setting radio device\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@cx231xx_video_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@INDEX_VANC = common dso_local global i32 0, align 4
@cx231xx_vbi_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@CX231XX_ANALOG_MODE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@errCode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cx231xx_v4l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %5, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call %struct.cx231xx* @video_drvdata(%struct.file* %11)
  store %struct.cx231xx* %12, %struct.cx231xx** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.video_device*, %struct.video_device** %5, align 8
  %14 = getelementptr inbounds %struct.video_device, %struct.video_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %21 [
    i32 130, label %16
    i32 128, label %18
    i32 129, label %20
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %17, i32* %8, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  store i32 %19, i32* %8, align 4
  br label %24

20:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %172

24:                                               ; preds = %20, %18, %16
  %25 = load %struct.video_device*, %struct.video_device** %5, align 8
  %26 = call i32 @video_device_node_name(%struct.video_device* %25)
  %27 = load i32*, i32** @v4l2_type_names, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i8*, ...) @cx231xx_videodbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31, i64 %34)
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.cx231xx_fh* @kzalloc(i32 24, i32 %36)
  store %struct.cx231xx_fh* %37, %struct.cx231xx_fh** %7, align 8
  %38 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %39 = icmp ne %struct.cx231xx_fh* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %172

43:                                               ; preds = %24
  %44 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 2
  %46 = call i64 @mutex_lock_interruptible(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %50 = call i32 @kfree(%struct.cx231xx_fh* %49)
  %51 = load i32, i32* @ERESTARTSYS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %172

53:                                               ; preds = %43
  %54 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %55 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %56 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %55, i32 0, i32 3
  store %struct.cx231xx* %54, %struct.cx231xx** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %59 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %61 = load %struct.file*, %struct.file** %3, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  store %struct.cx231xx_fh* %60, %struct.cx231xx_fh** %62, align 8
  %63 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %64 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %63, i32 0, i32 1
  %65 = load %struct.video_device*, %struct.video_device** %5, align 8
  %66 = call i32 @v4l2_fh_init(i32* %64, %struct.video_device* %65)
  %67 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %68 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %53
  %73 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %74 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %79 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %85 = load i32, i32* @POLARIS_AVMODE_ENXTERNAL_AV, align 4
  %86 = call i32 @cx231xx_set_power_mode(%struct.cx231xx* %84, i32 %85)
  br label %91

87:                                               ; preds = %77
  %88 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %89 = load i32, i32* @POLARIS_AVMODE_ANALOGT_TV, align 4
  %90 = call i32 @cx231xx_set_power_mode(%struct.cx231xx* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %93 = call i32 @cx231xx_set_video_alternate(%struct.cx231xx* %92)
  %94 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %95 = call i32 @cx231xx_config_i2c(%struct.cx231xx* %94)
  %96 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %97 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 2
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %103 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  br label %105

105:                                              ; preds = %101, %100
  %106 = phi i32 [ 2, %100 ], [ %104, %101 ]
  %107 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %108 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %72, %53
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = call i32 (i8*, ...) @cx231xx_videodbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %115 = load i32, i32* @tuner, align 4
  %116 = load i32, i32* @s_radio, align 4
  %117 = call i32 @call_all(%struct.cx231xx* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %109
  %119 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %120 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %124 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %118
  %129 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %130 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %129, i32 0, i32 2
  %131 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %132 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %135 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %138 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %139 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %140 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %139, i32 0, i32 2
  %141 = call i32 @videobuf_queue_vmalloc_init(i32* %130, i32* @cx231xx_video_qops, i32* null, i32* %133, i32 %136, i32 %137, i32 4, %struct.cx231xx_fh* %138, i32* %140)
  br label %142

142:                                              ; preds = %128, %118
  %143 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %144 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %142
  %149 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %150 = load i32, i32* @INDEX_VANC, align 4
  %151 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %149, i32 %150, i32 0)
  %152 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %153 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %152, i32 0, i32 2
  %154 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %155 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %158 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %161 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %162 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %163 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %162, i32 0, i32 2
  %164 = call i32 @videobuf_queue_vmalloc_init(i32* %153, i32* @cx231xx_vbi_qops, i32* null, i32* %156, i32 %159, i32 %160, i32 4, %struct.cx231xx_fh* %161, i32* %163)
  br label %165

165:                                              ; preds = %148, %142
  %166 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %167 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %166, i32 0, i32 2
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %170 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %169, i32 0, i32 1
  %171 = call i32 @v4l2_fh_add(i32* %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %165, %48, %40, %21
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.cx231xx* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cx231xx_videodbg(i8*, ...) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local %struct.cx231xx_fh* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.cx231xx_fh*) #1

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i32 @cx231xx_set_power_mode(%struct.cx231xx*, i32) #1

declare dso_local i32 @cx231xx_set_video_alternate(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_config_i2c(%struct.cx231xx*) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @videobuf_queue_vmalloc_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.cx231xx_fh*, i32*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
