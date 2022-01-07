; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_try_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_try_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { %struct.TYPE_10__, %struct.gsc_frame, %struct.gsc_frame, %struct.gsc_dev* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.gsc_frame = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.gsc_dev = type { %struct.gsc_variant* }
%struct.gsc_variant = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.v4l2_selection = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"doesn't support negative values for top & left\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"user put w: %d, h: %d\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"mod_x: %d, mod_y: %d, min_w: %d, min_h = %d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"tmp_w : %d, tmp_h : %d\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Aligned l:%d, t:%d, w:%d, h:%d, f_w: %d, f_h: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_try_selection(%struct.gsc_ctx* %0, %struct.v4l2_selection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsc_ctx*, align 8
  %5 = alloca %struct.v4l2_selection*, align 8
  %6 = alloca %struct.gsc_frame*, align 8
  %7 = alloca %struct.gsc_dev*, align 8
  %8 = alloca %struct.gsc_variant*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %4, align 8
  store %struct.v4l2_selection* %1, %struct.v4l2_selection** %5, align 8
  %17 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %17, i32 0, i32 3
  %19 = load %struct.gsc_dev*, %struct.gsc_dev** %18, align 8
  store %struct.gsc_dev* %19, %struct.gsc_dev** %7, align 8
  %20 = load %struct.gsc_dev*, %struct.gsc_dev** %7, align 8
  %21 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %20, i32 0, i32 0
  %22 = load %struct.gsc_variant*, %struct.gsc_variant** %21, align 8
  store %struct.gsc_variant* %22, %struct.gsc_variant** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %2
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %376

38:                                               ; preds = %28
  %39 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %47)
  %49 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %55, i32 0, i32 2
  store %struct.gsc_frame* %56, %struct.gsc_frame** %6, align 8
  br label %70

57:                                               ; preds = %38
  %58 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %64, i32 0, i32 1
  store %struct.gsc_frame* %65, %struct.gsc_frame** %6, align 8
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %376

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %54
  %71 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %72 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %15, align 8
  %74 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %75 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %16, align 8
  %77 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %78 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %11, align 8
  %81 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %12, align 8
  %85 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %141

90:                                               ; preds = %70
  %91 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %92 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %91, i32 0, i32 2
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @is_yuv422(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %100 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %99, i32 0, i32 2
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %113, label %105

105:                                              ; preds = %98, %90
  %106 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %107 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %106, i32 0, i32 2
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @is_rgb(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105, %98
  store i64 32, i64* %13, align 8
  br label %115

114:                                              ; preds = %105
  store i64 64, i64* %13, align 8
  br label %115

115:                                              ; preds = %114, %113
  %116 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %117 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @is_yuv422(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %125 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %124, i32 0, i32 2
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %138, label %130

130:                                              ; preds = %123, %115
  %131 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %132 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %131, i32 0, i32 2
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @is_yuv420(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130, %123
  store i64 32, i64* %14, align 8
  br label %140

139:                                              ; preds = %130
  store i64 16, i64* %14, align 8
  br label %140

140:                                              ; preds = %139, %138
  br label %234

141:                                              ; preds = %70
  %142 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %143 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %142, i32 0, i32 2
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @is_yuv420(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %141
  %150 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %151 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %150, i32 0, i32 2
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @is_yuv422(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %149, %141
  %158 = load %struct.gsc_variant*, %struct.gsc_variant** %8, align 8
  %159 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %158, i32 0, i32 1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @ffs(i32 %162)
  %164 = sub nsw i64 %163, 1
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %157, %149
  %166 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %167 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %166, i32 0, i32 2
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @is_yuv420(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %165
  %174 = load %struct.gsc_variant*, %struct.gsc_variant** %8, align 8
  %175 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %174, i32 0, i32 1
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @ffs(i32 %178)
  %180 = sub nsw i64 %179, 1
  store i64 %180, i64* %10, align 8
  br label %181

181:                                              ; preds = %173, %165
  %182 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %183 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 90
  br i1 %188, label %197, label %189

189:                                              ; preds = %181
  %190 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %191 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 270
  br i1 %196, label %197, label %222

197:                                              ; preds = %189, %181
  %198 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %199 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %15, align 8
  %201 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %202 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %16, align 8
  %204 = load %struct.gsc_variant*, %struct.gsc_variant** %8, align 8
  %205 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %13, align 8
  %209 = load %struct.gsc_variant*, %struct.gsc_variant** %8, align 8
  %210 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %209, i32 0, i32 0
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %14, align 8
  %214 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %215 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %11, align 8
  %218 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %219 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %12, align 8
  br label %233

222:                                              ; preds = %189
  %223 = load %struct.gsc_variant*, %struct.gsc_variant** %8, align 8
  %224 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %223, i32 0, i32 0
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %13, align 8
  %228 = load %struct.gsc_variant*, %struct.gsc_variant** %8, align 8
  %229 = getelementptr inbounds %struct.gsc_variant, %struct.gsc_variant* %228, i32 0, i32 0
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %14, align 8
  br label %233

233:                                              ; preds = %222, %197
  br label %234

234:                                              ; preds = %233, %140
  %235 = load i64, i64* %9, align 8
  %236 = trunc i64 %235 to i32
  %237 = load i64, i64* %10, align 8
  %238 = load i64, i64* %13, align 8
  %239 = load i64, i64* %14, align 8
  %240 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %236, i64 %237, i64 %238, i64 %239)
  %241 = load i64, i64* %11, align 8
  %242 = trunc i64 %241 to i32
  %243 = load i64, i64* %12, align 8
  %244 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %242, i64 %243)
  %245 = load i64, i64* %13, align 8
  %246 = load i64, i64* %15, align 8
  %247 = load i64, i64* %9, align 8
  %248 = load i64, i64* %14, align 8
  %249 = load i64, i64* %16, align 8
  %250 = load i64, i64* %10, align 8
  %251 = call i32 @v4l_bound_align_image(i64* %11, i64 %245, i64 %246, i64 %247, i64* %12, i64 %248, i64 %249, i64 %250, i32 0)
  %252 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %253 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %283, label %257

257:                                              ; preds = %234
  %258 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %259 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 90
  br i1 %264, label %273, label %265

265:                                              ; preds = %257
  %266 = load %struct.gsc_ctx*, %struct.gsc_ctx** %4, align 8
  %267 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 270
  br i1 %272, label %273, label %283

273:                                              ; preds = %265, %257
  %274 = load i64, i64* %12, align 8
  %275 = load i64, i64* %11, align 8
  %276 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %277 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 2
  %279 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %280 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 3
  %282 = call i32 @gsc_check_crop_change(i64 %274, i64 %275, i64* %278, i64* %281)
  br label %293

283:                                              ; preds = %265, %234
  %284 = load i64, i64* %11, align 8
  %285 = load i64, i64* %12, align 8
  %286 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %287 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %290 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  %292 = call i32 @gsc_check_crop_change(i64 %284, i64 %285, i64* %288, i64* %291)
  br label %293

293:                                              ; preds = %283, %273
  %294 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %295 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = load i64, i64* %11, align 8
  %300 = add nsw i64 %298, %299
  %301 = load i64, i64* %15, align 8
  %302 = icmp sgt i64 %300, %301
  br i1 %302, label %303, label %311

303:                                              ; preds = %293
  %304 = load i64, i64* %15, align 8
  %305 = load i64, i64* %11, align 8
  %306 = sub nsw i64 %304, %305
  %307 = trunc i64 %306 to i32
  %308 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %309 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  store i32 %307, i32* %310, align 8
  br label %311

311:                                              ; preds = %303, %293
  %312 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %313 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* %12, align 8
  %317 = add nsw i64 %315, %316
  %318 = load i64, i64* %16, align 8
  %319 = icmp sgt i64 %317, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %311
  %321 = load i64, i64* %16, align 8
  %322 = load i64, i64* %12, align 8
  %323 = sub nsw i64 %321, %322
  %324 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %325 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 0
  store i64 %323, i64* %326, align 8
  br label %327

327:                                              ; preds = %320, %311
  %328 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %329 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %328, i32 0, i32 2
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i64 @is_yuv420(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %343, label %335

335:                                              ; preds = %327
  %336 = load %struct.gsc_frame*, %struct.gsc_frame** %6, align 8
  %337 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %336, i32 0, i32 2
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i64 @is_yuv422(i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %356

343:                                              ; preds = %335, %327
  %344 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %345 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %347, 1
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %343
  %351 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %352 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = sub nsw i32 %354, 1
  store i32 %355, i32* %353, align 8
  br label %356

356:                                              ; preds = %350, %343, %335
  %357 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %358 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %362 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %366 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %370 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* %15, align 8
  %374 = load i64, i64* %16, align 8
  %375 = call i32 (i8*, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %360, i64 %364, i64 %368, i64 %372, i64 %373, i64 %374)
  store i32 0, i32* %3, align 4
  br label %376

376:                                              ; preds = %356, %66, %34
  %377 = load i32, i32* %3, align 4
  ret i32 %377
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, ...) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i64) #1

declare dso_local i64 @is_yuv422(i32) #1

declare dso_local i64 @is_rgb(i32) #1

declare dso_local i64 @is_yuv420(i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @v4l_bound_align_image(i64*, i64, i64, i64, i64*, i64, i64, i64, i32) #1

declare dso_local i32 @gsc_check_crop_change(i64, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
