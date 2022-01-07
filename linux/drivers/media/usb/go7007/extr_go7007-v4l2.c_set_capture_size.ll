; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_set_capture_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_set_capture_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GO7007_SENSOR_SCALING = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@GO7007_BUF_SIZE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, %struct.v4l2_format*, i32)* @set_capture_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_capture_size(%struct.go7007* %0, %struct.v4l2_format* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_subdev_format, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %15 = icmp ne %struct.v4l2_format* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @valid_pixelformat(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %294

27:                                               ; preds = %16, %3
  %28 = load %struct.go7007*, %struct.go7007** %5, align 8
  %29 = call i32 @get_resolution(%struct.go7007* %28, i32* %9, i32* %8)
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %31 = icmp eq %struct.v4l2_format* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %11, align 4
  br label %132

35:                                               ; preds = %27
  %36 = load %struct.go7007*, %struct.go7007** %5, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 6
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GO7007_SENSOR_SCALING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %35
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %10, align 4
  br label %70

54:                                               ; preds = %44
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 144
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 144, i32* %10, align 4
  br label %69

62:                                               ; preds = %54
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, -16
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %62, %61
  br label %70

70:                                               ; preds = %69, %52
  %71 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %11, align 4
  br label %96

80:                                               ; preds = %70
  %81 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 96
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 96, i32* %11, align 4
  br label %95

88:                                               ; preds = %80
  %89 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -16
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %88, %87
  br label %96

96:                                               ; preds = %95, %78
  br label %131

97:                                               ; preds = %35
  %98 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sdiv i32 %104, 4
  %106 = icmp sle i32 %103, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %97
  %108 = load i32, i32* %9, align 4
  %109 = sdiv i32 %108, 4
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sdiv i32 %110, 4
  store i32 %111, i32* %11, align 4
  br label %126

112:                                              ; preds = %97
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sdiv i32 %114, 2
  %116 = icmp sle i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = sdiv i32 %118, 2
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sdiv i32 %120, 2
  store i32 %121, i32* %11, align 4
  br label %125

122:                                              ; preds = %112
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %117
  br label %126

126:                                              ; preds = %125, %107
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, -16
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, -16
  store i32 %130, i32* %11, align 4
  br label %131

131:                                              ; preds = %126, %96
  br label %132

132:                                              ; preds = %131, %32
  %133 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %134 = icmp ne %struct.v4l2_format* %133, null
  br i1 %134, label %135, label %180

135:                                              ; preds = %132
  %136 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %137 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %12, align 4
  %141 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %142 = call i32 @memset(%struct.v4l2_format* %141, i32 0, i32 48)
  %143 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %144 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %145 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %148 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 %146, i32* %150, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %153 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %158 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i32 %156, i32* %160, align 8
  %161 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %162 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %163 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 6
  store i32 %161, i32* %165, align 8
  %166 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %167 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load i32, i32* @GO7007_BUF_SIZE, align 4
  %171 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %172 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  store i32 %170, i32* %174, align 8
  %175 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %176 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %177 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  store i32 %175, i32* %179, align 4
  br label %180

180:                                              ; preds = %135, %132
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 0, i32* %4, align 4
  br label %294

184:                                              ; preds = %180
  %185 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %186 = icmp ne %struct.v4l2_format* %185, null
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %189 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.go7007*, %struct.go7007** %5, align 8
  %194 = getelementptr inbounds %struct.go7007, %struct.go7007* %193, i32 0, i32 9
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %187, %184
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.go7007*, %struct.go7007** %5, align 8
  %198 = getelementptr inbounds %struct.go7007, %struct.go7007* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.go7007*, %struct.go7007** %5, align 8
  %201 = getelementptr inbounds %struct.go7007, %struct.go7007* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.go7007*, %struct.go7007** %5, align 8
  %203 = getelementptr inbounds %struct.go7007, %struct.go7007* %202, i32 0, i32 6
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.go7007*, %struct.go7007** %5, align 8
  %208 = getelementptr inbounds %struct.go7007, %struct.go7007* %207, i32 0, i32 8
  store i32 %206, i32* %208, align 4
  %209 = load %struct.go7007*, %struct.go7007** %5, align 8
  %210 = getelementptr inbounds %struct.go7007, %struct.go7007* %209, i32 0, i32 6
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.go7007*, %struct.go7007** %5, align 8
  %215 = getelementptr inbounds %struct.go7007, %struct.go7007* %214, i32 0, i32 7
  store i32 %213, i32* %215, align 8
  %216 = load %struct.go7007*, %struct.go7007** %5, align 8
  %217 = getelementptr inbounds %struct.go7007, %struct.go7007* %216, i32 0, i32 6
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @GO7007_SENSOR_SCALING, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %260

224:                                              ; preds = %195
  %225 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %226 = bitcast %struct.TYPE_8__* %225 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %226, i8 0, i64 12, i1 false)
  %227 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  %228 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %228, i32* %227, align 4
  %229 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %230 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  %232 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %233 = icmp ne %struct.v4l2_format* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %224
  %235 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %236 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  br label %242

240:                                              ; preds = %224
  %241 = load i32, i32* %10, align 4
  br label %242

242:                                              ; preds = %240, %234
  %243 = phi i32 [ %239, %234 ], [ %241, %240 ]
  %244 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %11, align 4
  %247 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load %struct.go7007*, %struct.go7007** %5, align 8
  %250 = getelementptr inbounds %struct.go7007, %struct.go7007* %249, i32 0, i32 2
  store i32 0, i32* %250, align 8
  %251 = load %struct.go7007*, %struct.go7007** %5, align 8
  %252 = getelementptr inbounds %struct.go7007, %struct.go7007* %251, i32 0, i32 3
  store i32 0, i32* %252, align 4
  %253 = load %struct.go7007*, %struct.go7007** %5, align 8
  %254 = getelementptr inbounds %struct.go7007, %struct.go7007* %253, i32 0, i32 4
  store i32 0, i32* %254, align 8
  %255 = load %struct.go7007*, %struct.go7007** %5, align 8
  %256 = getelementptr inbounds %struct.go7007, %struct.go7007* %255, i32 0, i32 5
  %257 = load i32, i32* @pad, align 4
  %258 = load i32, i32* @set_fmt, align 4
  %259 = call i32 @call_all(i32* %256, i32 %257, i32 %258, i32* null, %struct.v4l2_subdev_format* %13)
  br label %293

260:                                              ; preds = %195
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %9, align 4
  %263 = sdiv i32 %262, 4
  %264 = icmp sle i32 %261, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %260
  %266 = load %struct.go7007*, %struct.go7007** %5, align 8
  %267 = getelementptr inbounds %struct.go7007, %struct.go7007* %266, i32 0, i32 2
  store i32 1, i32* %267, align 8
  %268 = load %struct.go7007*, %struct.go7007** %5, align 8
  %269 = getelementptr inbounds %struct.go7007, %struct.go7007* %268, i32 0, i32 3
  store i32 1, i32* %269, align 4
  %270 = load %struct.go7007*, %struct.go7007** %5, align 8
  %271 = getelementptr inbounds %struct.go7007, %struct.go7007* %270, i32 0, i32 4
  store i32 1, i32* %271, align 8
  br label %292

272:                                              ; preds = %260
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %9, align 4
  %275 = sdiv i32 %274, 2
  %276 = icmp sle i32 %273, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %272
  %278 = load %struct.go7007*, %struct.go7007** %5, align 8
  %279 = getelementptr inbounds %struct.go7007, %struct.go7007* %278, i32 0, i32 2
  store i32 1, i32* %279, align 8
  %280 = load %struct.go7007*, %struct.go7007** %5, align 8
  %281 = getelementptr inbounds %struct.go7007, %struct.go7007* %280, i32 0, i32 3
  store i32 1, i32* %281, align 4
  %282 = load %struct.go7007*, %struct.go7007** %5, align 8
  %283 = getelementptr inbounds %struct.go7007, %struct.go7007* %282, i32 0, i32 4
  store i32 0, i32* %283, align 8
  br label %291

284:                                              ; preds = %272
  %285 = load %struct.go7007*, %struct.go7007** %5, align 8
  %286 = getelementptr inbounds %struct.go7007, %struct.go7007* %285, i32 0, i32 2
  store i32 0, i32* %286, align 8
  %287 = load %struct.go7007*, %struct.go7007** %5, align 8
  %288 = getelementptr inbounds %struct.go7007, %struct.go7007* %287, i32 0, i32 3
  store i32 0, i32* %288, align 4
  %289 = load %struct.go7007*, %struct.go7007** %5, align 8
  %290 = getelementptr inbounds %struct.go7007, %struct.go7007* %289, i32 0, i32 4
  store i32 0, i32* %290, align 8
  br label %291

291:                                              ; preds = %284, %277
  br label %292

292:                                              ; preds = %291, %265
  br label %293

293:                                              ; preds = %292, %242
  store i32 0, i32* %4, align 4
  br label %294

294:                                              ; preds = %293, %183, %24
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i32 @valid_pixelformat(i32) #1

declare dso_local i32 @get_resolution(%struct.go7007*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.v4l2_format*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @call_all(i32*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
