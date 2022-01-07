; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_analog_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_analog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev_format = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.dvb_usb_device = type { %struct.TYPE_5__*, i32, %struct.cxusb_medion_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.cxusb_medion_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@__const.cxusb_medion_analog_init.tuner_analog_msg_data = private unnamed_addr constant [4 x i32] [i32 156, i32 96, i32 133, i32 84], align 16
@.str = private unnamed_addr constant [33 x i8] c"tuner analog switch failed (%d)\0A\00", align 1
@core = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cx25840 reset failed (%d)\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@CX25840_COMPOSITE1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"cx25840 initial input setting failed (%d)\0A\00", align 1
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@s_io_pin_config = common dso_local global i32 0, align 4
@cxusub_medion_pin_config = common dso_local global %struct.v4l2_subdev_format* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"cx25840 pin config failed (%d)\0A\00", align 1
@s_std = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"cx25840 format set failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxusb_medion_analog_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca %struct.cxusb_medion_dev*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca %struct.i2c_msg, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 2
  %10 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  store %struct.cxusb_medion_dev* %10, %struct.cxusb_medion_dev** %3, align 8
  %11 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.cxusb_medion_analog_init.tuner_analog_msg_data to i8*), i64 16, i1 false)
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 97, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32* %14, i32** %13, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i32 16, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 1
  %19 = call i32 @i2c_transfer(i32* %18, %struct.i2c_msg* %5, i32 1)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %31 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @core, align 4
  %34 = load i32, i32* @reset, align 4
  %35 = call i32 (i32, i32, i32, i32*, ...) @v4l2_subdev_call(i32 %32, i32 %33, i32 %34, i32* null)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %29
  %46 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @video, align 4
  %50 = load i32, i32* @s_routing, align 4
  %51 = load i32, i32* @CX25840_COMPOSITE1, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 (i32, i32, i32, i32*, ...) @v4l2_subdev_call(i32 %48, i32 %49, i32 %50, i32* %53, i32 0, i32 0)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @dev_warn(i32* %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %57, %45
  %65 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %66 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* @V4L2_STD_ALL, align 4
  %68 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %69 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %68, i32 0, i32 7
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @V4L2_STD_PAL, align 4
  %73 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %74 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %76 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @core, align 4
  %79 = load i32, i32* @s_io_pin_config, align 4
  %80 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** @cxusub_medion_pin_config, align 8
  %81 = call i32* @ARRAY_SIZE(%struct.v4l2_subdev_format* %80)
  %82 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** @cxusub_medion_pin_config, align 8
  %83 = call i32 (i32, i32, i32, i32*, ...) @v4l2_subdev_call(i32 %77, i32 %78, i32 %79, i32* %81, %struct.v4l2_subdev_format* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %64
  %87 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %88 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @dev_warn(i32* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %86, %64
  %94 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %95 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @video, align 4
  %98 = load i32, i32* @s_std, align 4
  %99 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %100 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 (i32, i32, i32, i32*, ...) @v4l2_subdev_call(i32 %96, i32 %97, i32 %98, i32* %103)
  %105 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %106 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @video, align 4
  %109 = load i32, i32* @s_std, align 4
  %110 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %111 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i32*
  %115 = call i32 (i32, i32, i32, i32*, ...) @v4l2_subdev_call(i32 %107, i32 %108, i32 %109, i32* %114)
  %116 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %117 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @video, align 4
  %120 = load i32, i32* @s_std, align 4
  %121 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %122 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i32*
  %126 = call i32 (i32, i32, i32, i32*, ...) @v4l2_subdev_call(i32 %118, i32 %119, i32 %120, i32* %125)
  %127 = call i32 @memset(%struct.v4l2_subdev_format* %6, i32 0, i32 24)
  %128 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %129 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %131 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %136 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %141 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %144 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %147 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %150 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @pad, align 4
  %153 = load i32, i32* @set_fmt, align 4
  %154 = call i32 (i32, i32, i32, i32*, ...) @v4l2_subdev_call(i32 %151, i32 %152, i32 %153, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %93
  %158 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %159 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @dev_warn(i32* %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %157, %93
  %165 = load i32, i32* %7, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %172 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %177 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %167, %164
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @dev_warn(i32*, i8*, i32) #2

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, ...) #2

declare dso_local i32* @ARRAY_SIZE(%struct.v4l2_subdev_format*) #2

declare dso_local i32 @memset(%struct.v4l2_subdev_format*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
