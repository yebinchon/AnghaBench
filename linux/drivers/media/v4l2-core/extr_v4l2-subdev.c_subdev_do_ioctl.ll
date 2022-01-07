; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-subdev.c_subdev_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.video_device = type { i32 }
%struct.v4l2_subdev = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@subscribe_event = common dso_local global i32 0, align 4
@unsubscribe_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s: =================  START STATUS  =================\0A\00", align 1
@log_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: ==================  END STATUS  ==================\0A\00", align 1
@ioctl = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@V4L2_CHIP_FL_READABLE = common dso_local global i32 0, align 4
@V4L2_CHIP_FL_WRITABLE = common dso_local global i32 0, align 4
@V4L2_CHIP_MATCH_SUBDEV = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i8* null, align 8
@dv_timings_cap = common dso_local global i32 0, align 4
@enum_dv_timings = common dso_local global i32 0, align 4
@enum_frame_interval = common dso_local global i32 0, align 4
@enum_frame_size = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@g_dv_timings = common dso_local global i32 0, align 4
@g_frame_interval = common dso_local global i32 0, align 4
@g_register = common dso_local global i32 0, align 4
@g_std = common dso_local global i32 0, align 4
@g_tvnorms = common dso_local global i32 0, align 4
@get_edid = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@get_selection = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@query_dv_timings = common dso_local global i32 0, align 4
@querystd = common dso_local global i32 0, align 4
@s_dv_timings = common dso_local global i32 0, align 4
@s_frame_interval = common dso_local global i32 0, align 4
@s_register = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@set_edid = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@set_selection = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @subdev_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @subdev_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.v4l2_fh*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %8, align 8
  %14 = load %struct.video_device*, %struct.video_device** %8, align 8
  %15 = call %struct.v4l2_subdev* @vdev_to_v4l2_subdev(%struct.video_device* %14)
  store %struct.v4l2_subdev* %15, %struct.v4l2_subdev** %9, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = load %struct.v4l2_fh*, %struct.v4l2_fh** %17, align 8
  store %struct.v4l2_fh* %18, %struct.v4l2_fh** %10, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %201 [
    i32 156, label %20
    i32 154, label %34
    i32 155, label %48
    i32 160, label %62
    i32 132, label %76
    i32 158, label %91
    i32 130, label %111
    i32 129, label %132
    i32 161, label %152
    i32 133, label %171
    i32 128, label %178
    i32 157, label %185
  ]

20:                                               ; preds = %3
  %21 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %22 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @ENOTTY, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %208

28:                                               ; preds = %20
  %29 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %30 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @v4l2_queryctrl(i32 %31, i8* %32)
  store i64 %33, i64* %4, align 8
  br label %208

34:                                               ; preds = %3
  %35 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %36 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @ENOTTY, align 8
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %4, align 8
  br label %208

42:                                               ; preds = %34
  %43 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %44 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @v4l2_query_ext_ctrl(i32 %45, i8* %46)
  store i64 %47, i64* %4, align 8
  br label %208

48:                                               ; preds = %3
  %49 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %50 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* @ENOTTY, align 8
  %55 = sub nsw i64 0, %54
  store i64 %55, i64* %4, align 8
  br label %208

56:                                               ; preds = %48
  %57 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %58 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @v4l2_querymenu(i32 %59, i8* %60)
  store i64 %61, i64* %4, align 8
  br label %208

62:                                               ; preds = %3
  %63 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %64 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* @ENOTTY, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %4, align 8
  br label %208

70:                                               ; preds = %62
  %71 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %72 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i64 @v4l2_g_ctrl(i32 %73, i8* %74)
  store i64 %75, i64* %4, align 8
  br label %208

76:                                               ; preds = %3
  %77 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %78 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* @ENOTTY, align 8
  %83 = sub nsw i64 0, %82
  store i64 %83, i64* %4, align 8
  br label %208

84:                                               ; preds = %76
  %85 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %86 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %87 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i64 @v4l2_s_ctrl(%struct.v4l2_fh* %85, i32 %88, i8* %89)
  store i64 %90, i64* %4, align 8
  br label %208

91:                                               ; preds = %3
  %92 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %93 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i64, i64* @ENOTTY, align 8
  %98 = sub nsw i64 0, %97
  store i64 %98, i64* %4, align 8
  br label %208

99:                                               ; preds = %91
  %100 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %101 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.video_device*, %struct.video_device** %8, align 8
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %105 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = call i64 @v4l2_g_ext_ctrls(i32 %102, %struct.video_device* %103, i32 %108, i8* %109)
  store i64 %110, i64* %4, align 8
  br label %208

111:                                              ; preds = %3
  %112 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %113 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load i64, i64* @ENOTTY, align 8
  %118 = sub nsw i64 0, %117
  store i64 %118, i64* %4, align 8
  br label %208

119:                                              ; preds = %111
  %120 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %121 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %122 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.video_device*, %struct.video_device** %8, align 8
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %126 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = call i64 @v4l2_s_ext_ctrls(%struct.v4l2_fh* %120, i32 %123, %struct.video_device* %124, i32 %129, i8* %130)
  store i64 %131, i64* %4, align 8
  br label %208

132:                                              ; preds = %3
  %133 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %134 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i64, i64* @ENOTTY, align 8
  %139 = sub nsw i64 0, %138
  store i64 %139, i64* %4, align 8
  br label %208

140:                                              ; preds = %132
  %141 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %142 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.video_device*, %struct.video_device** %8, align 8
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %146 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %145, i32 0, i32 3
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @v4l2_try_ext_ctrls(i32 %143, %struct.video_device* %144, i32 %149, i8* %150)
  store i64 %151, i64* %4, align 8
  br label %208

152:                                              ; preds = %3
  %153 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %154 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %152
  %160 = load i64, i64* @ENOIOCTLCMD, align 8
  %161 = sub nsw i64 0, %160
  store i64 %161, i64* %4, align 8
  br label %208

162:                                              ; preds = %152
  %163 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load %struct.file*, %struct.file** %5, align 8
  %166 = getelementptr inbounds %struct.file, %struct.file* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @O_NONBLOCK, align 4
  %169 = and i32 %167, %168
  %170 = call i64 @v4l2_event_dequeue(%struct.v4l2_fh* %163, i8* %164, i32 %169)
  store i64 %170, i64* %4, align 8
  br label %208

171:                                              ; preds = %3
  %172 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %173 = load i32, i32* @core, align 4
  %174 = load i32, i32* @subscribe_event, align 4
  %175 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = call i64 (%struct.v4l2_subdev*, i32, i32, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %172, i32 %173, i32 %174, %struct.v4l2_fh* %175, i8* %176)
  store i64 %177, i64* %4, align 8
  br label %208

178:                                              ; preds = %3
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %180 = load i32, i32* @core, align 4
  %181 = load i32, i32* @unsubscribe_event, align 4
  %182 = load %struct.v4l2_fh*, %struct.v4l2_fh** %10, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = call i64 (%struct.v4l2_subdev*, i32, i32, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %179, i32 %180, i32 %181, %struct.v4l2_fh* %182, i8* %183)
  store i64 %184, i64* %4, align 8
  br label %208

185:                                              ; preds = %3
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %187 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %188)
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %191 = load i32, i32* @core, align 4
  %192 = load i32, i32* @log_status, align 4
  %193 = call i64 (%struct.v4l2_subdev*, i32, i32, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %190, i32 %191, i32 %192)
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %11, align 4
  %195 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %196 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %4, align 8
  br label %208

201:                                              ; preds = %3
  %202 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %203 = load i32, i32* @core, align 4
  %204 = load i32, i32* @ioctl, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = call i64 (%struct.v4l2_subdev*, i32, i32, ...) @v4l2_subdev_call(%struct.v4l2_subdev* %202, i32 %203, i32 %204, i32 %205, i8* %206)
  store i64 %207, i64* %4, align 8
  br label %208

208:                                              ; preds = %201, %185, %178, %171, %162, %159, %140, %137, %119, %116, %99, %96, %84, %81, %70, %67, %56, %53, %42, %39, %28, %25
  %209 = load i64, i64* %4, align 8
  ret i64 %209
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.v4l2_subdev* @vdev_to_v4l2_subdev(%struct.video_device*) #1

declare dso_local i64 @v4l2_queryctrl(i32, i8*) #1

declare dso_local i64 @v4l2_query_ext_ctrl(i32, i8*) #1

declare dso_local i64 @v4l2_querymenu(i32, i8*) #1

declare dso_local i64 @v4l2_g_ctrl(i32, i8*) #1

declare dso_local i64 @v4l2_s_ctrl(%struct.v4l2_fh*, i32, i8*) #1

declare dso_local i64 @v4l2_g_ext_ctrls(i32, %struct.video_device*, i32, i8*) #1

declare dso_local i64 @v4l2_s_ext_ctrls(%struct.v4l2_fh*, i32, %struct.video_device*, i32, i8*) #1

declare dso_local i64 @v4l2_try_ext_ctrls(i32, %struct.video_device*, i32, i8*) #1

declare dso_local i64 @v4l2_event_dequeue(%struct.v4l2_fh*, i8*, i32) #1

declare dso_local i64 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, ...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
