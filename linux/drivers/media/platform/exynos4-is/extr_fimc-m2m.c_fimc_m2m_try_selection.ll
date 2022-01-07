; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_try_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_m2m_try_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, %struct.fimc_dev* }
%struct.fimc_frame = type { i64, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64*, i32 }
%struct.fimc_dev = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_selection = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"doesn't support negative values for top & left\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_COMPOSE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"l:%d, t:%d, w:%d, h:%d, f_w: %d, f_h: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_ctx*, %struct.v4l2_selection*)* @fimc_m2m_try_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_m2m_try_selection(%struct.fimc_ctx* %0, %struct.v4l2_selection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_ctx*, align 8
  %5 = alloca %struct.v4l2_selection*, align 8
  %6 = alloca %struct.fimc_dev*, align 8
  %7 = alloca %struct.fimc_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fimc_ctx* %0, %struct.fimc_ctx** %4, align 8
  store %struct.v4l2_selection* %1, %struct.v4l2_selection** %5, align 8
  %12 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %12, i32 0, i32 2
  %14 = load %struct.fimc_dev*, %struct.fimc_dev** %13, align 8
  store %struct.fimc_dev* %14, %struct.fimc_dev** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20, %2
  %27 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %28 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @v4l2_err(i32* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %264

33:                                               ; preds = %20
  %34 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %40, i32 0, i32 1
  store %struct.fimc_frame* %41, %struct.fimc_frame** %7, align 8
  %42 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %264

50:                                               ; preds = %39
  br label %73

51:                                               ; preds = %33
  %52 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %58, i32 0, i32 0
  store %struct.fimc_frame* %59, %struct.fimc_frame** %7, align 8
  %60 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %264

68:                                               ; preds = %57
  br label %72

69:                                               ; preds = %51
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %264

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %50
  %74 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %75 = load %struct.fimc_ctx*, %struct.fimc_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %75, i32 0, i32 0
  %77 = icmp eq %struct.fimc_frame* %74, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %80 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  br label %90

84:                                               ; preds = %73
  %85 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %86 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %84, %78
  %91 = phi i32 [ %83, %78 ], [ %89, %84 ]
  store i32 %91, i32* %8, align 4
  %92 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %93 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %100 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %99, i32 0, i32 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @fimc_fmt_is_rgb(i32 %103)
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 0, i32 1
  store i32 %107, i32* %9, align 4
  br label %116

108:                                              ; preds = %90
  %109 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %110 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ffs(i32 %113)
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %108, %98
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %139, %116
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %120 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %119, i32 0, i32 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %118, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %117
  %126 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %127 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %126, i32 0, i32 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %125
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %117

142:                                              ; preds = %117
  %143 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %144 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %148 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @ffs(i32 %150)
  %152 = sub nsw i32 %151, 1
  %153 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %154 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %158 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @ALIGN(i32 %161, i32 8)
  %163 = sdiv i32 64, %162
  %164 = call i32 @v4l_bound_align_image(i64* %145, i32 %146, i64 %149, i32 %152, i64* %155, i32 %156, i64 %159, i32 %160, i32 %163)
  %165 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %166 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %170 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %168, %172
  %174 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %175 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %173, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %142
  %179 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %180 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %183 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = sub nsw i64 %181, %185
  %187 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %188 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i64 %186, i64* %189, align 8
  br label %190

190:                                              ; preds = %178, %142
  %191 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %192 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %196 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %194, %198
  %200 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %201 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp sgt i64 %199, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %190
  %205 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %206 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %209 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 %207, %211
  %213 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %214 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i64 %212, i64* %215, align 8
  br label %216

216:                                              ; preds = %204, %190
  %217 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %218 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i8* @round_down(i64 %220, i32 %221)
  %223 = ptrtoint i8* %222 to i64
  %224 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %225 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  store i64 %223, i64* %226, align 8
  %227 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %228 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.fimc_dev*, %struct.fimc_dev** %6, align 8
  %232 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %231, i32 0, i32 0
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @round_down(i64 %230, i32 %235)
  %237 = ptrtoint i8* %236 to i64
  %238 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %239 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  store i64 %237, i64* %240, align 8
  %241 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %242 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %246 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %250 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.v4l2_selection*, %struct.v4l2_selection** %5, align 8
  %254 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %258 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %261 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %244, i64 %248, i64 %252, i64 %256, i32 %259, i32 %262)
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %216, %69, %65, %47, %26
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i64 @fimc_fmt_is_rgb(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @v4l_bound_align_image(i64*, i32, i64, i32, i64*, i32, i64, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @round_down(i64, i32) #1

declare dso_local i32 @dbg(i8*, i64, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
