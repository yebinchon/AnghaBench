; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_config_image_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_config_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (...)* }
%struct.vpfe_device = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.vpfe_subdev_info* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32 }
%struct.vpfe_subdev_info = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@vpfe_standards = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"standard not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_YUYV10_2X10 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_SBGGR8_1X8 = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"error in getting get_fmt from sub device\0A\00", align 1
@ccdc_dev = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*, i32)* @vpfe_config_image_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_config_image_format(%struct.vpfe_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpfe_subdev_info*, align 8
  %7 = alloca %struct.v4l2_subdev_format, align 4
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %13 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %12, i32 0, i32 5
  %14 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %13, align 8
  store %struct.vpfe_subdev_info* %14, %struct.vpfe_subdev_info** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %7, i32 0, i32 0
  %16 = bitcast %struct.v4l2_mbus_framefmt* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %7, i32 0, i32 1
  %18 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %7, i32 0, i32 0
  store %struct.v4l2_mbus_framefmt* %19, %struct.v4l2_mbus_framefmt** %8, align 8
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store %struct.v4l2_pix_format* %23, %struct.v4l2_pix_format** %9, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %71, %2
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vpfe_standards, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vpfe_standards, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %29
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vpfe_standards, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %47 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vpfe_standards, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %56 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vpfe_standards, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %65 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %69 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %74

70:                                               ; preds = %29
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %24

74:                                               ; preds = %39, %24
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** @vpfe_standards, align 8
  %77 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %76)
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %81 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %80, i32 0, i32 1
  %82 = call i32 @v4l2_err(i32* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %208

85:                                               ; preds = %74
  %86 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %87 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %90 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %93 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %97 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %100 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %104 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %107 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %113 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %119 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %85
  %124 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %125 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  %128 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %131 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %132 = load i32, i32* @MEDIA_BUS_FMT_YUYV10_2X10, align 4
  %133 = call i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt* %130, %struct.v4l2_pix_format* %131, i32 %132)
  br label %145

134:                                              ; preds = %85
  %135 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %136 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %137 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %139 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %140 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %142 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %143 = load i32, i32* @MEDIA_BUS_FMT_SBGGR8_1X8, align 4
  %144 = call i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt* %141, %struct.v4l2_pix_format* %142, i32 %143)
  br label %145

145:                                              ; preds = %134, %123
  %146 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %147 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %146, i32 0, i32 1
  %148 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %149 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @pad, align 4
  %152 = load i32, i32* @get_fmt, align 4
  %153 = call i32 @v4l2_device_call_until_err(i32* %147, i32 %150, i32 %151, i32 %152, i32* null, %struct.v4l2_subdev_format* %7)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %145
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @ENOIOCTLCMD, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp ne i32 %157, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %163 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %162, i32 0, i32 1
  %164 = call i32 @v4l2_err(i32* %163, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %3, align 4
  br label %208

166:                                              ; preds = %156, %145
  %167 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %168 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %169 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %167, %struct.v4l2_mbus_framefmt* %168)
  %170 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %171 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %172, 2
  %174 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %175 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %177 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %180 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %178, %181
  %183 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %184 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %186 = call i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device* %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %166
  %190 = load i32, i32* %11, align 4
  store i32 %190, i32* %3, align 4
  br label %208

191:                                              ; preds = %166
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ccdc_dev, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32 (...)*, i32 (...)** %194, align 8
  %196 = call i32 (...) %195()
  %197 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %198 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  %199 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %200 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %203 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %201, %204
  %206 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %207 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %191, %189, %161, %79
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #2

declare dso_local i32 @v4l2_err(i32*, i8*) #2

declare dso_local i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*, i32) #2

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #2

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, %struct.v4l2_mbus_framefmt*) #2

declare dso_local i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
