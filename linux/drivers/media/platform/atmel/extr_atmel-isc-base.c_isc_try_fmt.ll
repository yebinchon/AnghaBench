; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.isc_format** }
%struct.TYPE_6__ = type { i32, i64, %struct.isc_format* }
%struct.isc_format = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sensor_preferred = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Sensor not supporting %.4s, using %.4s\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Preferring to have sensor using format %.4s\0A\00", align 1
@ISC_MAX_SUPPORT_WIDTH = common dso_local global i32 0, align 4
@ISC_MAX_SUPPORT_HEIGHT = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Could not find any possible format for a working pipeline\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isc_device*, %struct.v4l2_format*, i32*)* @isc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isc_try_fmt(%struct.isc_device* %0, %struct.v4l2_format* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isc_device*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.isc_format*, align 8
  %10 = alloca %struct.isc_format*, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca %struct.v4l2_subdev_pad_config, align 4
  %13 = alloca %struct.v4l2_subdev_format, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %5, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.isc_format* null, %struct.isc_format** %9, align 8
  store %struct.isc_format* null, %struct.isc_format** %10, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.v4l2_pix_format* %19, %struct.v4l2_pix_format** %11, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %22 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  store i32 %22, i32* %21, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %254

31:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %35 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %40 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %39, i32 0, i32 4
  %41 = load %struct.isc_format**, %struct.isc_format*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.isc_format*, %struct.isc_format** %41, i64 %43
  %45 = load %struct.isc_format*, %struct.isc_format** %44, align 8
  %46 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @ISC_IS_FORMAT_RAW(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %52 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %51, i32 0, i32 4
  %53 = load %struct.isc_format**, %struct.isc_format*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.isc_format*, %struct.isc_format** %53, i64 %55
  %57 = load %struct.isc_format*, %struct.isc_format** %56, align 8
  store %struct.isc_format* %57, %struct.isc_format** %9, align 8
  br label %62

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %32

62:                                               ; preds = %50, %32
  %63 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.isc_format* @find_format_by_fourcc(%struct.isc_device* %63, i64 %66)
  store %struct.isc_format* %67, %struct.isc_format** %10, align 8
  %68 = load %struct.isc_format*, %struct.isc_format** %10, align 8
  %69 = icmp ne %struct.isc_format* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %72 = icmp ne %struct.isc_format* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i64, i64* @sensor_preferred, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load %struct.isc_format*, %struct.isc_format** %10, align 8
  store %struct.isc_format* %77, %struct.isc_format** %9, align 8
  br label %78

78:                                               ; preds = %76, %73, %70, %62
  %79 = load %struct.isc_format*, %struct.isc_format** %10, align 8
  %80 = icmp ne %struct.isc_format* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %83 = icmp ne %struct.isc_format* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load %struct.isc_format*, %struct.isc_format** %10, align 8
  store %struct.isc_format* %85, %struct.isc_format** %9, align 8
  br label %86

86:                                               ; preds = %84, %81, %78
  %87 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %88 = load %struct.isc_format*, %struct.isc_format** %10, align 8
  %89 = icmp eq %struct.isc_format* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %16, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %93 = icmp ne %struct.isc_format* %92, null
  br i1 %93, label %118, label %94

94:                                               ; preds = %91
  %95 = load %struct.isc_format*, %struct.isc_format** %10, align 8
  %96 = icmp ne %struct.isc_format* %95, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %94
  %98 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %99 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %98, i32 0, i32 4
  %100 = load %struct.isc_format**, %struct.isc_format*** %99, align 8
  %101 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %102 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.isc_format*, %struct.isc_format** %100, i64 %105
  %107 = load %struct.isc_format*, %struct.isc_format** %106, align 8
  store %struct.isc_format* %107, %struct.isc_format** %9, align 8
  %108 = load i32, i32* @debug, align 4
  %109 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %110 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %109, i32 0, i32 2
  %111 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %112 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %111, i32 0, i32 5
  %113 = bitcast i64* %112 to i8*
  %114 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %115 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %114, i32 0, i32 0
  %116 = bitcast i64* %115 to i8*
  %117 = call i32 (i32, i32, i32*, i8*, i8*, ...) @v4l2_dbg(i32 1, i32 %108, i32* %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %113, i8* %116)
  br label %118

118:                                              ; preds = %97, %94, %91
  %119 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %120 = icmp ne %struct.isc_format* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %15, align 4
  br label %245

124:                                              ; preds = %118
  %125 = load i32, i32* @debug, align 4
  %126 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %127 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %126, i32 0, i32 2
  %128 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %129 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %128, i32 0, i32 0
  %130 = bitcast i64* %129 to i8*
  %131 = call i32 (i32, i32, i32*, i8*, i8*, ...) @v4l2_dbg(i32 1, i32 %125, i32* %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  %132 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %133 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %134 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store %struct.isc_format* %132, %struct.isc_format** %135, align 8
  %136 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %137 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ISC_MAX_SUPPORT_WIDTH, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %124
  %142 = load i32, i32* @ISC_MAX_SUPPORT_WIDTH, align 4
  %143 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %144 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %124
  %146 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %147 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ISC_MAX_SUPPORT_HEIGHT, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* @ISC_MAX_SUPPORT_HEIGHT, align 4
  %153 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %154 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %145
  %156 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %157 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %14, align 4
  %159 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %160 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %163 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i64 %161, i64* %164, align 8
  %165 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %166 = call i32 @isc_try_validate_formats(%struct.isc_device* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %155
  %169 = load %struct.isc_format*, %struct.isc_format** %9, align 8
  %170 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %173 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i64 %171, i64* %174, align 8
  %175 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %176 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %175, i32 0, i32 5
  store i64 %171, i64* %176, align 8
  %177 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %178 = call i32 @isc_try_validate_formats(%struct.isc_device* %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  br label %245

182:                                              ; preds = %168
  br label %183

183:                                              ; preds = %182, %155
  %184 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @isc_try_configure_rlp_dma(%struct.isc_device* %184, i32 %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %245

190:                                              ; preds = %183
  %191 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %192 = call i32 @isc_try_configure_pipeline(%struct.isc_device* %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %245

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %198 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %199 = load i32, i32* %14, align 4
  %200 = call i32 @v4l2_fill_mbus_format(i32* %197, %struct.v4l2_pix_format* %198, i32 %199)
  %201 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %202 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %201, i32 0, i32 3
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @pad, align 4
  %207 = load i32, i32* @set_fmt, align 4
  %208 = call i32 @v4l2_subdev_call(i32 %205, i32 %206, i32 %207, %struct.v4l2_subdev_pad_config* %12, %struct.v4l2_subdev_format* %13)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %196
  br label %249

212:                                              ; preds = %196
  %213 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %214 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %215 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %213, i32* %214)
  %216 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %217 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %218 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 8
  %219 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %220 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %223 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %221, %225
  %227 = ashr i32 %226, 3
  %228 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %229 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  %230 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %231 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %234 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %232, %235
  %237 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %238 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load i32*, i32** %7, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %212
  %242 = load i32, i32* %14, align 4
  %243 = load i32*, i32** %7, align 8
  store i32 %242, i32* %243, align 4
  br label %244

244:                                              ; preds = %241, %212
  store i32 0, i32* %4, align 4
  br label %254

245:                                              ; preds = %195, %189, %181, %121
  %246 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %247 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %246, i32 0, i32 2
  %248 = call i32 @v4l2_err(i32* %247, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %249

249:                                              ; preds = %245, %211
  %250 = load %struct.isc_device*, %struct.isc_device** %5, align 8
  %251 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %250, i32 0, i32 1
  %252 = call i32 @memset(%struct.TYPE_6__* %251, i32 0, i32 24)
  %253 = load i32, i32* %15, align 4
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %249, %244, %28
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i64 @ISC_IS_FORMAT_RAW(i32) #1

declare dso_local %struct.isc_format* @find_format_by_fourcc(%struct.isc_device*, i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*, ...) #1

declare dso_local i32 @isc_try_validate_formats(%struct.isc_device*) #1

declare dso_local i32 @isc_try_configure_rlp_dma(%struct.isc_device*, i32) #1

declare dso_local i32 @isc_try_configure_pipeline(%struct.isc_device*) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
