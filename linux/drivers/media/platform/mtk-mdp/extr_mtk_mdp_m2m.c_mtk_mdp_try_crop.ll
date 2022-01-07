; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_try_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_try_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { i32, %struct.TYPE_10__, %struct.mtk_mdp_dev* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.mtk_mdp_dev = type { %struct.TYPE_6__*, %struct.mtk_mdp_variant* }
%struct.TYPE_6__ = type { i32 }
%struct.mtk_mdp_variant = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.v4l2_rect = type { i64, i64, i64, i64 }
%struct.mtk_mdp_frame = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"doesn't support negative values for top & left\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"[%d] type:%d, set wxh:%dx%d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"[%d] align:%dx%d, min:%dx%d, new:%dx%d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"[%d] crop l,t,w,h:%d,%d,%d,%d, max:%dx%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_mdp_ctx*, i64, %struct.v4l2_rect*)* @mtk_mdp_try_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_mdp_try_crop(%struct.mtk_mdp_ctx* %0, i64 %1, %struct.v4l2_rect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_mdp_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca %struct.mtk_mdp_frame*, align 8
  %9 = alloca %struct.mtk_mdp_dev*, align 8
  %10 = alloca %struct.mtk_mdp_variant*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %7, align 8
  %19 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %19, i32 0, i32 2
  %21 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %20, align 8
  store %struct.mtk_mdp_dev* %21, %struct.mtk_mdp_dev** %9, align 8
  %22 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %9, align 8
  %23 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %22, i32 0, i32 1
  %24 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %23, align 8
  store %struct.mtk_mdp_variant* %24, %struct.mtk_mdp_variant** %10, align 8
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29, %3
  %35 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %35, i32 0, i32 2
  %37 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %36, align 8
  %38 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %247

44:                                               ; preds = %29
  %45 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, i32, i64, i64, i64, ...) @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %48, i64 %51, i64 %54)
  %56 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx* %56, i64 %57)
  store %struct.mtk_mdp_frame* %58, %struct.mtk_mdp_frame** %8, align 8
  %59 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %60 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %17, align 8
  %62 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %63 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %18, align 8
  %65 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %13, align 8
  %68 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %44
  store i64 1, i64* %11, align 8
  store i64 1, i64* %12, align 8
  store i64 64, i64* %15, align 8
  store i64 32, i64* %16, align 8
  br label %136

75:                                               ; preds = %44
  %76 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %10, align 8
  %77 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %11, align 8
  %81 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %10, align 8
  %82 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %12, align 8
  %86 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 90
  br i1 %92, label %101, label %93

93:                                               ; preds = %75
  %94 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 270
  br i1 %100, label %101, label %124

101:                                              ; preds = %93, %75
  %102 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %103 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %17, align 8
  %105 = load %struct.mtk_mdp_frame*, %struct.mtk_mdp_frame** %8, align 8
  %106 = getelementptr inbounds %struct.mtk_mdp_frame, %struct.mtk_mdp_frame* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %18, align 8
  %108 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %10, align 8
  %109 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %15, align 8
  %113 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %10, align 8
  %114 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %16, align 8
  %118 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %119 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %13, align 8
  %121 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %14, align 8
  br label %135

124:                                              ; preds = %93
  %125 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %10, align 8
  %126 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %15, align 8
  %130 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %10, align 8
  %131 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %16, align 8
  br label %135

135:                                              ; preds = %124, %101
  br label %136

136:                                              ; preds = %135, %74
  %137 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %138 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %16, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* %14, align 8
  %146 = call i32 (i32, i8*, i32, i64, i64, i64, ...) @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @mtk_mdp_bound_align_image(i64* %13, i64 %147, i64 %148, i64 %149, i64* %14, i64 %150, i64 %151, i64 %152)
  %154 = load i64, i64* %6, align 8
  %155 = call i64 @V4L2_TYPE_IS_OUTPUT(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %181, label %157

157:                                              ; preds = %136
  %158 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %159 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 90
  br i1 %164, label %173, label %165

165:                                              ; preds = %157
  %166 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %167 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 270
  br i1 %172, label %173, label %181

173:                                              ; preds = %165, %157
  %174 = load i64, i64* %14, align 8
  %175 = load i64, i64* %13, align 8
  %176 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %177 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %176, i32 0, i32 2
  %178 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %179 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %178, i32 0, i32 3
  %180 = call i32 @mtk_mdp_check_crop_change(i64 %174, i64 %175, i64* %177, i64* %179)
  br label %189

181:                                              ; preds = %165, %136
  %182 = load i64, i64* %13, align 8
  %183 = load i64, i64* %14, align 8
  %184 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %185 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %184, i32 0, i32 2
  %186 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %187 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %186, i32 0, i32 3
  %188 = call i32 @mtk_mdp_check_crop_change(i64 %182, i64 %183, i64* %185, i64* %187)
  br label %189

189:                                              ; preds = %181, %173
  %190 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %191 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %13, align 8
  %194 = add nsw i64 %192, %193
  %195 = load i64, i64* %17, align 8
  %196 = icmp sgt i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %189
  %198 = load i64, i64* %17, align 8
  %199 = load i64, i64* %13, align 8
  %200 = sub nsw i64 %198, %199
  %201 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %202 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %197, %189
  %204 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %205 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %14, align 8
  %208 = add nsw i64 %206, %207
  %209 = load i64, i64* %18, align 8
  %210 = icmp sgt i64 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %203
  %212 = load i64, i64* %18, align 8
  %213 = load i64, i64* %14, align 8
  %214 = sub nsw i64 %212, %213
  %215 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %216 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  br label %217

217:                                              ; preds = %211, %203
  %218 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %219 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = and i64 %220, 1
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %225 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = sub nsw i64 %226, 1
  store i64 %227, i64* %225, align 8
  br label %228

228:                                              ; preds = %223, %217
  %229 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %5, align 8
  %230 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %233 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %236 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %239 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %242 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %17, align 8
  %245 = load i64, i64* %18, align 8
  %246 = call i32 (i32, i8*, i32, i64, i64, i64, ...) @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %231, i64 %234, i64 %237, i64 %240, i64 %243, i64 %244, i64 %245)
  store i32 0, i32* %4, align 4
  br label %247

247:                                              ; preds = %228, %34
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32, i64, i64, i64, ...) #1

declare dso_local %struct.mtk_mdp_frame* @mtk_mdp_ctx_get_frame(%struct.mtk_mdp_ctx*, i64) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i64) #1

declare dso_local i32 @mtk_mdp_bound_align_image(i64*, i64, i64, i64, i64*, i64, i64, i64) #1

declare dso_local i32 @mtk_mdp_check_crop_change(i64, i64, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
