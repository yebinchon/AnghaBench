; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_v4l2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_go7007_v4l2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, i64, i32*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, %struct.go7007*, i32*, i32*, i32 }
%struct.go7007 = type { i32, %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__, i32, i32, i32, %struct.video_device }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.v4l2_frequency = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@go7007_video_qops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@go7007_template = common dso_local global %struct.video_device zeroinitializer, align 8
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_AUDIO = common dso_local global i32 0, align 4
@GO7007_BOARD_HAS_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@querystd = common dso_local global i32 0, align 4
@VIDIOC_QUERYSTD = common dso_local global i32 0, align 4
@VIDIOC_S_FREQUENCY = common dso_local global i32 0, align 4
@VIDIOC_G_FREQUENCY = common dso_local global i32 0, align 4
@VIDIOC_S_TUNER = common dso_local global i32 0, align 4
@VIDIOC_G_TUNER = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@GO7007_SENSOR_TV = common dso_local global i32 0, align 4
@VIDIOC_G_STD = common dso_local global i32 0, align 4
@VIDIOC_S_STD = common dso_local global i32 0, align 4
@GO7007_SENSOR_SCALING = common dso_local global i32 0, align 4
@VIDIOC_ENUM_FRAMESIZES = common dso_local global i32 0, align 4
@VIDIOC_G_AUDIO = common dso_local global i32 0, align 4
@VIDIOC_S_AUDIO = common dso_local global i32 0, align 4
@VIDIOC_ENUMAUDIO = common dso_local global i32 0, align 4
@GO7007_SENSOR_SAA7115 = common dso_local global i32 0, align 4
@s_crystal_freq = common dso_local global i32 0, align 4
@SAA7115_FREQ_24_576_MHZ = common dso_local global i32 0, align 4
@SAA7115_FREQ_FL_APLL = common dso_local global i32 0, align 4
@SAA7115_FREQ_FL_UCGC = common dso_local global i32 0, align 4
@SAA7115_FREQ_FL_DOUBLE_ASCLK = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"registered device %s [v4l2]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @go7007_v4l2_init(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_frequency, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %7 = load %struct.go7007*, %struct.go7007** %3, align 8
  %8 = getelementptr inbounds %struct.go7007, %struct.go7007* %7, i32 0, i32 8
  store %struct.video_device* %8, %struct.video_device** %4, align 8
  %9 = load %struct.go7007*, %struct.go7007** %3, align 8
  %10 = getelementptr inbounds %struct.go7007, %struct.go7007* %9, i32 0, i32 5
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.go7007*, %struct.go7007** %3, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 6
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.go7007*, %struct.go7007** %3, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 7
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %19 = load %struct.go7007*, %struct.go7007** %3, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @VB2_MMAP, align 4
  %23 = load i32, i32* @VB2_USERPTR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @VB2_READ, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.go7007*, %struct.go7007** %3, align 8
  %28 = getelementptr inbounds %struct.go7007, %struct.go7007* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.go7007*, %struct.go7007** %3, align 8
  %31 = getelementptr inbounds %struct.go7007, %struct.go7007* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 6
  store i32* @go7007_video_qops, i32** %32, align 8
  %33 = load %struct.go7007*, %struct.go7007** %3, align 8
  %34 = getelementptr inbounds %struct.go7007, %struct.go7007* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  store i32* @vb2_vmalloc_memops, i32** %35, align 8
  %36 = load %struct.go7007*, %struct.go7007** %3, align 8
  %37 = load %struct.go7007*, %struct.go7007** %3, align 8
  %38 = getelementptr inbounds %struct.go7007, %struct.go7007* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store %struct.go7007* %36, %struct.go7007** %39, align 8
  %40 = load %struct.go7007*, %struct.go7007** %3, align 8
  %41 = getelementptr inbounds %struct.go7007, %struct.go7007* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 4, i32* %42, align 4
  %43 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %44 = load %struct.go7007*, %struct.go7007** %3, align 8
  %45 = getelementptr inbounds %struct.go7007, %struct.go7007* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.go7007*, %struct.go7007** %3, align 8
  %48 = getelementptr inbounds %struct.go7007, %struct.go7007* %47, i32 0, i32 6
  %49 = load %struct.go7007*, %struct.go7007** %3, align 8
  %50 = getelementptr inbounds %struct.go7007, %struct.go7007* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32* %48, i32** %51, align 8
  %52 = load %struct.go7007*, %struct.go7007** %3, align 8
  %53 = getelementptr inbounds %struct.go7007, %struct.go7007* %52, i32 0, i32 4
  %54 = call i32 @vb2_queue_init(%struct.TYPE_4__* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %1
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %252

59:                                               ; preds = %1
  %60 = load %struct.video_device*, %struct.video_device** %4, align 8
  %61 = bitcast %struct.video_device* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 bitcast (%struct.video_device* @go7007_template to i8*), i64 40, i1 false)
  %62 = load %struct.go7007*, %struct.go7007** %3, align 8
  %63 = getelementptr inbounds %struct.go7007, %struct.go7007* %62, i32 0, i32 5
  %64 = load %struct.video_device*, %struct.video_device** %4, align 8
  %65 = getelementptr inbounds %struct.video_device, %struct.video_device* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = load %struct.go7007*, %struct.go7007** %3, align 8
  %67 = getelementptr inbounds %struct.go7007, %struct.go7007* %66, i32 0, i32 4
  %68 = load %struct.video_device*, %struct.video_device** %4, align 8
  %69 = getelementptr inbounds %struct.video_device, %struct.video_device* %68, i32 0, i32 3
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %69, align 8
  %70 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %71 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.video_device*, %struct.video_device** %4, align 8
  %76 = getelementptr inbounds %struct.video_device, %struct.video_device* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.go7007*, %struct.go7007** %3, align 8
  %78 = getelementptr inbounds %struct.go7007, %struct.go7007* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %59
  %84 = load i32, i32* @V4L2_CAP_AUDIO, align 4
  %85 = load %struct.video_device*, %struct.video_device** %4, align 8
  %86 = getelementptr inbounds %struct.video_device, %struct.video_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %59
  %90 = load %struct.go7007*, %struct.go7007** %3, align 8
  %91 = getelementptr inbounds %struct.go7007, %struct.go7007* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GO7007_BOARD_HAS_TUNER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %89
  %99 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %100 = load %struct.video_device*, %struct.video_device** %4, align 8
  %101 = getelementptr inbounds %struct.video_device, %struct.video_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %89
  %105 = load %struct.video_device*, %struct.video_device** %4, align 8
  %106 = load %struct.go7007*, %struct.go7007** %3, align 8
  %107 = call i32 @video_set_drvdata(%struct.video_device* %105, %struct.go7007* %106)
  %108 = load %struct.go7007*, %struct.go7007** %3, align 8
  %109 = getelementptr inbounds %struct.go7007, %struct.go7007* %108, i32 0, i32 3
  %110 = load %struct.video_device*, %struct.video_device** %4, align 8
  %111 = getelementptr inbounds %struct.video_device, %struct.video_device* %110, i32 0, i32 2
  store i32* %109, i32** %111, align 8
  %112 = load %struct.go7007*, %struct.go7007** %3, align 8
  %113 = getelementptr inbounds %struct.go7007, %struct.go7007* %112, i32 0, i32 3
  %114 = load i32, i32* @video, align 4
  %115 = load i32, i32* @querystd, align 4
  %116 = call i32 @v4l2_device_has_op(i32* %113, i32 0, i32 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %104
  %119 = load %struct.video_device*, %struct.video_device** %4, align 8
  %120 = load i32, i32* @VIDIOC_QUERYSTD, align 4
  %121 = call i32 @v4l2_disable_ioctl(%struct.video_device* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %104
  %123 = load %struct.go7007*, %struct.go7007** %3, align 8
  %124 = getelementptr inbounds %struct.go7007, %struct.go7007* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @GO7007_BOARD_HAS_TUNER, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %122
  %132 = load %struct.video_device*, %struct.video_device** %4, align 8
  %133 = load i32, i32* @VIDIOC_S_FREQUENCY, align 4
  %134 = call i32 @v4l2_disable_ioctl(%struct.video_device* %132, i32 %133)
  %135 = load %struct.video_device*, %struct.video_device** %4, align 8
  %136 = load i32, i32* @VIDIOC_G_FREQUENCY, align 4
  %137 = call i32 @v4l2_disable_ioctl(%struct.video_device* %135, i32 %136)
  %138 = load %struct.video_device*, %struct.video_device** %4, align 8
  %139 = load i32, i32* @VIDIOC_S_TUNER, align 4
  %140 = call i32 @v4l2_disable_ioctl(%struct.video_device* %138, i32 %139)
  %141 = load %struct.video_device*, %struct.video_device** %4, align 8
  %142 = load i32, i32* @VIDIOC_G_TUNER, align 4
  %143 = call i32 @v4l2_disable_ioctl(%struct.video_device* %141, i32 %142)
  br label %153

144:                                              ; preds = %122
  %145 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 0
  store i32 980, i32* %145, align 4
  %146 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 1
  %147 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  store i32 %147, i32* %146, align 4
  %148 = load %struct.go7007*, %struct.go7007** %3, align 8
  %149 = getelementptr inbounds %struct.go7007, %struct.go7007* %148, i32 0, i32 3
  %150 = load i32, i32* @tuner, align 4
  %151 = load i32, i32* @s_frequency, align 4
  %152 = call i32 @call_all(i32* %149, i32 %150, i32 %151, %struct.v4l2_frequency* %6)
  br label %153

153:                                              ; preds = %144, %131
  %154 = load %struct.go7007*, %struct.go7007** %3, align 8
  %155 = getelementptr inbounds %struct.go7007, %struct.go7007* %154, i32 0, i32 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %153
  %163 = load %struct.video_device*, %struct.video_device** %4, align 8
  %164 = load i32, i32* @VIDIOC_G_STD, align 4
  %165 = call i32 @v4l2_disable_ioctl(%struct.video_device* %163, i32 %164)
  %166 = load %struct.video_device*, %struct.video_device** %4, align 8
  %167 = load i32, i32* @VIDIOC_S_STD, align 4
  %168 = call i32 @v4l2_disable_ioctl(%struct.video_device* %166, i32 %167)
  %169 = load %struct.video_device*, %struct.video_device** %4, align 8
  %170 = getelementptr inbounds %struct.video_device, %struct.video_device* %169, i32 0, i32 1
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %162, %153
  %172 = load %struct.go7007*, %struct.go7007** %3, align 8
  %173 = getelementptr inbounds %struct.go7007, %struct.go7007* %172, i32 0, i32 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @GO7007_SENSOR_SCALING, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %171
  %181 = load %struct.video_device*, %struct.video_device** %4, align 8
  %182 = load i32, i32* @VIDIOC_ENUM_FRAMESIZES, align 4
  %183 = call i32 @v4l2_disable_ioctl(%struct.video_device* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %171
  %185 = load %struct.go7007*, %struct.go7007** %3, align 8
  %186 = getelementptr inbounds %struct.go7007, %struct.go7007* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = load %struct.video_device*, %struct.video_device** %4, align 8
  %193 = load i32, i32* @VIDIOC_G_AUDIO, align 4
  %194 = call i32 @v4l2_disable_ioctl(%struct.video_device* %192, i32 %193)
  %195 = load %struct.video_device*, %struct.video_device** %4, align 8
  %196 = load i32, i32* @VIDIOC_S_AUDIO, align 4
  %197 = call i32 @v4l2_disable_ioctl(%struct.video_device* %195, i32 %196)
  %198 = load %struct.video_device*, %struct.video_device** %4, align 8
  %199 = load i32, i32* @VIDIOC_ENUMAUDIO, align 4
  %200 = call i32 @v4l2_disable_ioctl(%struct.video_device* %198, i32 %199)
  br label %201

201:                                              ; preds = %191, %184
  %202 = load %struct.go7007*, %struct.go7007** %3, align 8
  %203 = getelementptr inbounds %struct.go7007, %struct.go7007* %202, i32 0, i32 1
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @GO7007_SENSOR_SAA7115, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %223

210:                                              ; preds = %201
  %211 = load %struct.go7007*, %struct.go7007** %3, align 8
  %212 = getelementptr inbounds %struct.go7007, %struct.go7007* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @video, align 4
  %215 = load i32, i32* @s_crystal_freq, align 4
  %216 = load i32, i32* @SAA7115_FREQ_24_576_MHZ, align 4
  %217 = load i32, i32* @SAA7115_FREQ_FL_APLL, align 4
  %218 = load i32, i32* @SAA7115_FREQ_FL_UCGC, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @SAA7115_FREQ_FL_DOUBLE_ASCLK, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @v4l2_subdev_call(i32 %213, i32 %214, i32 %215, i32 %216, i32 %221)
  br label %223

223:                                              ; preds = %210, %201
  %224 = load %struct.go7007*, %struct.go7007** %3, align 8
  %225 = call i32 @go7007_s_input(%struct.go7007* %224)
  %226 = load %struct.go7007*, %struct.go7007** %3, align 8
  %227 = getelementptr inbounds %struct.go7007, %struct.go7007* %226, i32 0, i32 1
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %223
  %235 = load %struct.go7007*, %struct.go7007** %3, align 8
  %236 = call i32 @go7007_s_std(%struct.go7007* %235)
  br label %237

237:                                              ; preds = %234, %223
  %238 = load %struct.video_device*, %struct.video_device** %4, align 8
  %239 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %240 = call i32 @video_register_device(%struct.video_device* %238, i32 %239, i32 -1)
  store i32 %240, i32* %5, align 4
  %241 = load i32, i32* %5, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %5, align 4
  store i32 %244, i32* %2, align 4
  br label %252

245:                                              ; preds = %237
  %246 = load %struct.go7007*, %struct.go7007** %3, align 8
  %247 = getelementptr inbounds %struct.go7007, %struct.go7007* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.video_device*, %struct.video_device** %4, align 8
  %250 = call i32 @video_device_node_name(%struct.video_device* %249)
  %251 = call i32 @dev_info(i32 %248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %250)
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %245, %243, %57
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.go7007*) #1

declare dso_local i32 @v4l2_device_has_op(i32*, i32, i32, i32) #1

declare dso_local i32 @v4l2_disable_ioctl(%struct.video_device*, i32) #1

declare dso_local i32 @call_all(i32*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32, i32) #1

declare dso_local i32 @go7007_s_input(%struct.go7007*) #1

declare dso_local i32 @go7007_s_std(%struct.go7007*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
