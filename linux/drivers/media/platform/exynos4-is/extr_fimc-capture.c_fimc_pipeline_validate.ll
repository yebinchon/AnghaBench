; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_pipeline_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_pipeline_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { %struct.fimc_vid_cap }
%struct.fimc_vid_cap = type { %struct.TYPE_9__*, %struct.v4l2_subdev, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.fimc_frame, %struct.fimc_frame }
%struct.fimc_frame = type { i64, i64, i64*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.v4l2_subdev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.media_pad* }
%struct.media_pad = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.fimc_pipeline = type { %struct.v4l2_subdev** }
%struct.v4l2_plane_pix_format = type { i64 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i8* null, align 8
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@IDX_SENSOR = common dso_local global i64 0, align 8
@FIMC_MAX_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_dev*)* @fimc_pipeline_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_pipeline_validate(%struct.fimc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca %struct.v4l2_subdev_format, align 8
  %5 = alloca %struct.v4l2_subdev_format, align 8
  %6 = alloca %struct.fimc_vid_cap*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.fimc_pipeline*, align 8
  %9 = alloca %struct.media_pad*, align 8
  %10 = alloca %struct.media_pad*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.media_pad*, align 8
  %14 = alloca %struct.fimc_frame*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.fimc_frame*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  %20 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %20, i32 0, i32 0
  store %struct.fimc_vid_cap* %21, %struct.fimc_vid_cap** %6, align 8
  %22 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %23 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %22, i32 0, i32 1
  store %struct.v4l2_subdev* %23, %struct.v4l2_subdev** %7, align 8
  %24 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %25 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.fimc_pipeline* @to_fimc_pipeline(i32 %27)
  store %struct.fimc_pipeline* %28, %struct.fimc_pipeline** %8, align 8
  br label %29

29:                                               ; preds = %1, %253
  store %struct.media_pad* null, %struct.media_pad** %10, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %30
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.media_pad*, %struct.media_pad** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %41, i64 %43
  store %struct.media_pad* %44, %struct.media_pad** %13, align 8
  %45 = load %struct.media_pad*, %struct.media_pad** %13, align 8
  %46 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %37
  %52 = load %struct.media_pad*, %struct.media_pad** %13, align 8
  store %struct.media_pad* %52, %struct.media_pad** %9, align 8
  %53 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %54 = call %struct.media_pad* @media_entity_remote_pad(%struct.media_pad* %53)
  store %struct.media_pad* %54, %struct.media_pad** %10, align 8
  %55 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %56 = icmp ne %struct.media_pad* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %63

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %30

63:                                               ; preds = %57, %30
  %64 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %65 = icmp ne %struct.media_pad* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %68 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @is_media_entity_v4l2_subdev(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66, %63
  br label %254

73:                                               ; preds = %66
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %75 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %76 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %75, i32 0, i32 1
  %77 = icmp eq %struct.v4l2_subdev* %74, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %73
  %79 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %80 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store %struct.fimc_frame* %82, %struct.fimc_frame** %14, align 8
  %83 = load %struct.fimc_frame*, %struct.fimc_frame** %14, align 8
  %84 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.fimc_frame*, %struct.fimc_frame** %14, align 8
  %89 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.fimc_frame*, %struct.fimc_frame** %14, align 8
  %94 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = icmp ne %struct.TYPE_10__* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %78
  %98 = load %struct.fimc_frame*, %struct.fimc_frame** %14, align 8
  %99 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %98, i32 0, i32 3
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  br label %104

103:                                              ; preds = %78
  br label %104

104:                                              ; preds = %103, %97
  %105 = phi i64 [ %102, %97 ], [ 0, %103 ]
  %106 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  br label %130

108:                                              ; preds = %73
  %109 = load %struct.media_pad*, %struct.media_pad** %9, align 8
  %110 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = load i8*, i8** @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 1
  store i8* %113, i8** %114, align 8
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %116 = load i32, i32* @pad, align 4
  %117 = load i32, i32* @get_fmt, align 4
  %118 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %115, i32 %116, i32 %117, i32* null, %struct.v4l2_subdev_format* %4)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %108
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @ENOIOCTLCMD, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp ne i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EPIPE, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %255

129:                                              ; preds = %121, %108
  br label %130

130:                                              ; preds = %129, %104
  %131 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %132 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32 %133)
  store %struct.v4l2_subdev* %134, %struct.v4l2_subdev** %7, align 8
  %135 = load %struct.media_pad*, %struct.media_pad** %10, align 8
  %136 = getelementptr inbounds %struct.media_pad, %struct.media_pad* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 2
  store i32 %137, i32* %138, align 8
  %139 = load i8*, i8** @V4L2_SUBDEV_FORMAT_ACTIVE, align 8
  %140 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  %141 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %142 = load i32, i32* @pad, align 4
  %143 = load i32, i32* @get_fmt, align 4
  %144 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %141, i32 %142, i32 %143, i32* null, %struct.v4l2_subdev_format* %5)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %130
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @ENOIOCTLCMD, align 4
  %150 = sub nsw i32 0, %149
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @EPIPE, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %255

155:                                              ; preds = %147, %130
  %156 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %158, %161
  br i1 %162, label %179, label %163

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %4, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %174, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %171, %163, %155
  %180 = load i32, i32* @EPIPE, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %255

182:                                              ; preds = %171
  %183 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %184 = load %struct.fimc_pipeline*, %struct.fimc_pipeline** %8, align 8
  %185 = getelementptr inbounds %struct.fimc_pipeline, %struct.fimc_pipeline* %184, i32 0, i32 0
  %186 = load %struct.v4l2_subdev**, %struct.v4l2_subdev*** %185, align 8
  %187 = load i64, i64* @IDX_SENSOR, align 8
  %188 = getelementptr inbounds %struct.v4l2_subdev*, %struct.v4l2_subdev** %186, i64 %187
  %189 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %188, align 8
  %190 = icmp eq %struct.v4l2_subdev* %183, %189
  br i1 %190, label %191, label %253

191:                                              ; preds = %182
  %192 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %5, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @fimc_user_defined_mbus_fmt(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %253

197:                                              ; preds = %191
  %198 = load i32, i32* @FIMC_MAX_PLANES, align 4
  %199 = zext i32 %198 to i64
  %200 = call i8* @llvm.stacksave()
  store i8* %200, i8** %15, align 8
  %201 = alloca %struct.v4l2_plane_pix_format, i64 %199, align 16
  store i64 %199, i64* %16, align 8
  %202 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %6, align 8
  %203 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %202, i32 0, i32 0
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  store %struct.fimc_frame* %205, %struct.fimc_frame** %17, align 8
  %206 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %207 = load %struct.fimc_frame*, %struct.fimc_frame** %17, align 8
  %208 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %207, i32 0, i32 3
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @fimc_get_sensor_frame_desc(%struct.v4l2_subdev* %206, %struct.v4l2_plane_pix_format* %201, i32 %211, i32 0)
  store i32 %212, i32* %12, align 4
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %197
  %216 = load i32, i32* @EPIPE, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %249

218:                                              ; preds = %197
  store i32 0, i32* %18, align 4
  br label %219

219:                                              ; preds = %245, %218
  %220 = load i32, i32* %18, align 4
  %221 = load %struct.fimc_frame*, %struct.fimc_frame** %17, align 8
  %222 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %221, i32 0, i32 3
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp ult i32 %220, %225
  br i1 %226, label %227, label %248

227:                                              ; preds = %219
  %228 = load %struct.fimc_frame*, %struct.fimc_frame** %17, align 8
  %229 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %228, i32 0, i32 2
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %18, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* %18, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %201, i64 %236
  %238 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp slt i64 %234, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %227
  %242 = load i32, i32* @EPIPE, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %249

244:                                              ; preds = %227
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %18, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %18, align 4
  br label %219

248:                                              ; preds = %219
  store i32 0, i32* %19, align 4
  br label %249

249:                                              ; preds = %248, %241, %215
  %250 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %19, align 4
  switch i32 %251, label %257 [
    i32 0, label %252
    i32 1, label %255
  ]

252:                                              ; preds = %249
  br label %253

253:                                              ; preds = %252, %191, %182
  br label %29

254:                                              ; preds = %72
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %254, %249, %179, %152, %126
  %256 = load i32, i32* %2, align 4
  ret i32 %256

257:                                              ; preds = %249
  unreachable
}

declare dso_local %struct.fimc_pipeline* @to_fimc_pipeline(i32) #1

declare dso_local %struct.media_pad* @media_entity_remote_pad(%struct.media_pad*) #1

declare dso_local i32 @is_media_entity_v4l2_subdev(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local %struct.v4l2_subdev* @media_entity_to_v4l2_subdev(i32) #1

declare dso_local i64 @fimc_user_defined_mbus_fmt(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fimc_get_sensor_frame_desc(%struct.v4l2_subdev*, %struct.v4l2_plane_pix_format*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
