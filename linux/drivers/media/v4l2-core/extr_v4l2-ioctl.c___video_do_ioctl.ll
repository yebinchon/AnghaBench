; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c___video_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c___video_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_info = type { i32, i32, i64 (%struct.v4l2_ioctl_ops*, %struct.file.1*, i8*, i8*)*, i32 (i8*, i32)* }
%struct.v4l2_ioctl_ops = type { i64 (%struct.file.0*, i8*, i32, i32, i8*)* }
%struct.file.0 = type opaque
%struct.file.1 = type opaque
%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32, i64 }
%struct.video_device = type { i32, i32, i32*, %struct.TYPE_4__*, i32, %struct.v4l2_ioctl_ops* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s: has no ioctl_ops.\0A\00", align 1
@V4L2_FL_USES_V4L2_FH = common dso_local global i64 0, align 8
@VIDIOC_STREAMON = common dso_local global i32 0, align 4
@VIDIOC_STREAMOFF = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@v4l2_ioctls = common dso_local global %struct.v4l2_ioctl_info* null, align 8
@INFO_FL_CTRL = common dso_local global i32 0, align 4
@INFO_FL_PRIO = common dso_local global i32 0, align 4
@_IOC_WRITE = common dso_local global i64 0, align 8
@V4L2_DEV_DEBUG_IOCTL = common dso_local global i32 0, align 4
@V4L2_DEV_DEBUG_IOCTL_ARG = common dso_local global i32 0, align 4
@V4L2_DEV_DEBUG_STREAMING = common dso_local global i32 0, align 4
@VIDIOC_QBUF = common dso_local global i32 0, align 4
@VIDIOC_DQBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c": error %ld\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_IOC_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @__video_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__video_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.mutex*, align 8
  %10 = alloca %struct.mutex*, align 8
  %11 = alloca %struct.v4l2_ioctl_ops*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_ioctl_info, align 8
  %14 = alloca %struct.v4l2_ioctl_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.v4l2_fh*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = call %struct.video_device* @video_devdata(%struct.file* %19)
  store %struct.video_device* %20, %struct.video_device** %8, align 8
  store %struct.mutex* null, %struct.mutex** %9, align 8
  %21 = load %struct.video_device*, %struct.video_device** %8, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 5
  %23 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %22, align 8
  store %struct.v4l2_ioctl_ops* %23, %struct.v4l2_ioctl_ops** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.v4l2_fh*, %struct.v4l2_fh** %25, align 8
  %27 = bitcast %struct.v4l2_fh* %26 to i8*
  store i8* %27, i8** %15, align 8
  store %struct.v4l2_fh* null, %struct.v4l2_fh** %16, align 8
  %28 = load %struct.video_device*, %struct.video_device** %8, align 8
  %29 = getelementptr inbounds %struct.video_device, %struct.video_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load i64, i64* @ENOTTY, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %18, align 8
  %33 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %11, align 8
  %34 = icmp eq %struct.v4l2_ioctl_ops* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load %struct.video_device*, %struct.video_device** %8, align 8
  %37 = call i32 @video_device_node_name(%struct.video_device* %36)
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* %18, align 8
  store i64 %39, i64* %4, align 8
  br label %294

40:                                               ; preds = %3
  %41 = load i64, i64* @V4L2_FL_USES_V4L2_FH, align 8
  %42 = load %struct.video_device*, %struct.video_device** %8, align 8
  %43 = getelementptr inbounds %struct.video_device, %struct.video_device* %42, i32 0, i32 4
  %44 = call i64 @test_bit(i64 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load %struct.v4l2_fh*, %struct.v4l2_fh** %48, align 8
  store %struct.v4l2_fh* %49, %struct.v4l2_fh** %16, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.video_device*, %struct.video_device** %8, align 8
  %52 = getelementptr inbounds %struct.video_device, %struct.video_device* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i64 @v4l2_device_supports_requests(%struct.TYPE_4__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @VIDIOC_STREAMON, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @VIDIOC_STREAMOFF, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60, %56
  %65 = load %struct.video_device*, %struct.video_device** %8, align 8
  %66 = getelementptr inbounds %struct.video_device, %struct.video_device* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store %struct.mutex* %70, %struct.mutex** %9, align 8
  %71 = load %struct.mutex*, %struct.mutex** %9, align 8
  %72 = call i64 @mutex_lock_interruptible(%struct.mutex* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i64, i64* @ERESTARTSYS, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %4, align 8
  br label %294

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %60, %50
  %79 = load %struct.video_device*, %struct.video_device** %8, align 8
  %80 = load %struct.v4l2_fh*, %struct.v4l2_fh** %16, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call %struct.mutex* @v4l2_ioctl_get_lock(%struct.video_device* %79, %struct.v4l2_fh* %80, i32 %81, i8* %82)
  store %struct.mutex* %83, %struct.mutex** %10, align 8
  %84 = load %struct.mutex*, %struct.mutex** %10, align 8
  %85 = icmp ne %struct.mutex* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %78
  %87 = load %struct.mutex*, %struct.mutex** %10, align 8
  %88 = call i64 @mutex_lock_interruptible(%struct.mutex* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.mutex*, %struct.mutex** %9, align 8
  %92 = icmp ne %struct.mutex* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.mutex*, %struct.mutex** %9, align 8
  %95 = call i32 @mutex_unlock(%struct.mutex* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i64, i64* @ERESTARTSYS, align 8
  %98 = sub nsw i64 0, %97
  store i64 %98, i64* %4, align 8
  br label %294

99:                                               ; preds = %86, %78
  %100 = load %struct.video_device*, %struct.video_device** %8, align 8
  %101 = call i32 @video_is_registered(%struct.video_device* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* @ENODEV, align 8
  %105 = sub nsw i64 0, %104
  store i64 %105, i64* %18, align 8
  br label %280

106:                                              ; preds = %99
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @v4l2_is_known_ioctl(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %161

110:                                              ; preds = %106
  %111 = load %struct.v4l2_ioctl_info*, %struct.v4l2_ioctl_info** @v4l2_ioctls, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i64 @_IOC_NR(i32 %112)
  %114 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %111, i64 %113
  store %struct.v4l2_ioctl_info* %114, %struct.v4l2_ioctl_info** %14, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i64 @_IOC_NR(i32 %115)
  %117 = load %struct.video_device*, %struct.video_device** %8, align 8
  %118 = getelementptr inbounds %struct.video_device, %struct.video_device* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @test_bit(i64 %116, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %110
  %123 = load %struct.v4l2_ioctl_info*, %struct.v4l2_ioctl_info** %14, align 8
  %124 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @INFO_FL_CTRL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.v4l2_fh*, %struct.v4l2_fh** %16, align 8
  %131 = icmp ne %struct.v4l2_fh* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.v4l2_fh*, %struct.v4l2_fh** %16, align 8
  %134 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132, %129, %122
  br label %219

138:                                              ; preds = %132, %110
  %139 = load %struct.v4l2_fh*, %struct.v4l2_fh** %16, align 8
  %140 = icmp ne %struct.v4l2_fh* %139, null
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load %struct.v4l2_ioctl_info*, %struct.v4l2_ioctl_info** %14, align 8
  %143 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @INFO_FL_PRIO, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %141
  %149 = load %struct.video_device*, %struct.video_device** %8, align 8
  %150 = getelementptr inbounds %struct.video_device, %struct.video_device* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.v4l2_fh*, %struct.v4l2_fh** %16, align 8
  %153 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @v4l2_prio_check(i32 %151, i32 %154)
  store i64 %155, i64* %18, align 8
  %156 = load i64, i64* %18, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %219

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %141, %138
  br label %166

161:                                              ; preds = %106
  %162 = load i32, i32* %6, align 4
  %163 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %13, i32 0, i32 1
  store i32 %162, i32* %163, align 4
  %164 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %13, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %13, i32 0, i32 3
  store i32 (i8*, i32)* @v4l_print_default, i32 (i8*, i32)** %165, align 8
  store %struct.v4l2_ioctl_info* %13, %struct.v4l2_ioctl_info** %14, align 8
  br label %166

166:                                              ; preds = %161, %160
  %167 = load i32, i32* %6, align 4
  %168 = call i64 @_IOC_DIR(i32 %167)
  %169 = load i64, i64* @_IOC_WRITE, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %12, align 4
  %172 = load %struct.v4l2_ioctl_info*, %struct.v4l2_ioctl_info** %14, align 8
  %173 = icmp ne %struct.v4l2_ioctl_info* %172, %13
  br i1 %173, label %174, label %184

174:                                              ; preds = %166
  %175 = load %struct.v4l2_ioctl_info*, %struct.v4l2_ioctl_info** %14, align 8
  %176 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %175, i32 0, i32 2
  %177 = load i64 (%struct.v4l2_ioctl_ops*, %struct.file.1*, i8*, i8*)*, i64 (%struct.v4l2_ioctl_ops*, %struct.file.1*, i8*, i8*)** %176, align 8
  %178 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %11, align 8
  %179 = load %struct.file*, %struct.file** %5, align 8
  %180 = bitcast %struct.file* %179 to %struct.file.1*
  %181 = load i8*, i8** %15, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = call i64 %177(%struct.v4l2_ioctl_ops* %178, %struct.file.1* %180, i8* %181, i8* %182)
  store i64 %183, i64* %18, align 8
  br label %218

184:                                              ; preds = %166
  %185 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %11, align 8
  %186 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %185, i32 0, i32 0
  %187 = load i64 (%struct.file.0*, i8*, i32, i32, i8*)*, i64 (%struct.file.0*, i8*, i32, i32, i8*)** %186, align 8
  %188 = icmp ne i64 (%struct.file.0*, i8*, i32, i32, i8*)* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i64, i64* @ENOTTY, align 8
  %191 = sub nsw i64 0, %190
  store i64 %191, i64* %18, align 8
  br label %217

192:                                              ; preds = %184
  %193 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %11, align 8
  %194 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %193, i32 0, i32 0
  %195 = load i64 (%struct.file.0*, i8*, i32, i32, i8*)*, i64 (%struct.file.0*, i8*, i32, i32, i8*)** %194, align 8
  %196 = load %struct.file*, %struct.file** %5, align 8
  %197 = bitcast %struct.file* %196 to %struct.file.0*
  %198 = load i8*, i8** %15, align 8
  %199 = load %struct.v4l2_fh*, %struct.v4l2_fh** %16, align 8
  %200 = icmp ne %struct.v4l2_fh* %199, null
  br i1 %200, label %201, label %211

201:                                              ; preds = %192
  %202 = load %struct.video_device*, %struct.video_device** %8, align 8
  %203 = getelementptr inbounds %struct.video_device, %struct.video_device* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.v4l2_fh*, %struct.v4l2_fh** %16, align 8
  %206 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @v4l2_prio_check(i32 %204, i32 %207)
  %209 = icmp sge i64 %208, 0
  %210 = zext i1 %209 to i32
  br label %212

211:                                              ; preds = %192
  br label %212

212:                                              ; preds = %211, %201
  %213 = phi i32 [ %210, %201 ], [ 0, %211 ]
  %214 = load i32, i32* %6, align 4
  %215 = load i8*, i8** %7, align 8
  %216 = call i64 %195(%struct.file.0* %197, i8* %198, i32 %213, i32 %214, i8* %215)
  store i64 %216, i64* %18, align 8
  br label %217

217:                                              ; preds = %212, %189
  br label %218

218:                                              ; preds = %217, %174
  br label %219

219:                                              ; preds = %218, %158, %137
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* @V4L2_DEV_DEBUG_IOCTL, align 4
  %222 = load i32, i32* @V4L2_DEV_DEBUG_IOCTL_ARG, align 4
  %223 = or i32 %221, %222
  %224 = and i32 %220, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %279

226:                                              ; preds = %219
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* @V4L2_DEV_DEBUG_STREAMING, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %226
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @VIDIOC_QBUF, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @VIDIOC_DQBUF, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235, %231
  br label %280

240:                                              ; preds = %235, %226
  %241 = load %struct.video_device*, %struct.video_device** %8, align 8
  %242 = call i32 @video_device_node_name(%struct.video_device* %241)
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @v4l_printk_ioctl(i32 %242, i32 %243)
  %245 = load i64, i64* %18, align 8
  %246 = icmp slt i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load i64, i64* %18, align 8
  %249 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %248)
  br label %250

250:                                              ; preds = %247, %240
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* @V4L2_DEV_DEBUG_IOCTL_ARG, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %250
  %256 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %278

257:                                              ; preds = %250
  %258 = load i32, i32* %6, align 4
  %259 = call i64 @_IOC_DIR(i32 %258)
  %260 = load i64, i64* @_IOC_NONE, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load %struct.v4l2_ioctl_info*, %struct.v4l2_ioctl_info** %14, align 8
  %264 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %263, i32 0, i32 3
  %265 = load i32 (i8*, i32)*, i32 (i8*, i32)** %264, align 8
  %266 = load i8*, i8** %7, align 8
  %267 = load i32, i32* %12, align 4
  %268 = call i32 %265(i8* %266, i32 %267)
  br label %277

269:                                              ; preds = %257
  %270 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %271 = load %struct.v4l2_ioctl_info*, %struct.v4l2_ioctl_info** %14, align 8
  %272 = getelementptr inbounds %struct.v4l2_ioctl_info, %struct.v4l2_ioctl_info* %271, i32 0, i32 3
  %273 = load i32 (i8*, i32)*, i32 (i8*, i32)** %272, align 8
  %274 = load i8*, i8** %7, align 8
  %275 = load i32, i32* %12, align 4
  %276 = call i32 %273(i8* %274, i32 %275)
  br label %277

277:                                              ; preds = %269, %262
  br label %278

278:                                              ; preds = %277, %255
  br label %279

279:                                              ; preds = %278, %219
  br label %280

280:                                              ; preds = %279, %239, %103
  %281 = load %struct.mutex*, %struct.mutex** %10, align 8
  %282 = icmp ne %struct.mutex* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load %struct.mutex*, %struct.mutex** %10, align 8
  %285 = call i32 @mutex_unlock(%struct.mutex* %284)
  br label %286

286:                                              ; preds = %283, %280
  %287 = load %struct.mutex*, %struct.mutex** %9, align 8
  %288 = icmp ne %struct.mutex* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load %struct.mutex*, %struct.mutex** %9, align 8
  %291 = call i32 @mutex_unlock(%struct.mutex* %290)
  br label %292

292:                                              ; preds = %289, %286
  %293 = load i64, i64* %18, align 8
  store i64 %293, i64* %4, align 8
  br label %294

294:                                              ; preds = %292, %96, %74, %35
  %295 = load i64, i64* %4, align 8
  ret i64 %295
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i64 @v4l2_device_supports_requests(%struct.TYPE_4__*) #1

declare dso_local i64 @mutex_lock_interruptible(%struct.mutex*) #1

declare dso_local %struct.mutex* @v4l2_ioctl_get_lock(%struct.video_device*, %struct.v4l2_fh*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @video_is_registered(%struct.video_device*) #1

declare dso_local i64 @v4l2_is_known_ioctl(i32) #1

declare dso_local i64 @_IOC_NR(i32) #1

declare dso_local i64 @v4l2_prio_check(i32, i32) #1

declare dso_local i32 @v4l_print_default(i8*, i32) #1

declare dso_local i64 @_IOC_DIR(i32) #1

declare dso_local i32 @v4l_printk_ioctl(i32, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
