; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_try_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_try_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_fmt = type { i32, i32*, i32*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.mtk_mdp_ctx = type { i32, i32, i32, i32, i32, %struct.mtk_mdp_dev* }
%struct.mtk_mdp_dev = type { %struct.TYPE_9__*, %struct.mtk_mdp_variant* }
%struct.TYPE_9__ = type { i32 }
%struct.mtk_mdp_variant = type { %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"pixelformat format 0x%X invalid\0A\00", align 1
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"[%d] type:%d, wxh:%ux%u, align:%ux%u, max:%ux%u\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"[%d] size change:%ux%u to %ux%u\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"[%d] p%d, bpl:%d, sizeimage:%u (%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_mdp_fmt* (%struct.mtk_mdp_ctx*, %struct.v4l2_format*)* @mtk_mdp_try_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_mdp_fmt* @mtk_mdp_try_fmt_mplane(%struct.mtk_mdp_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.mtk_mdp_fmt*, align 8
  %4 = alloca %struct.mtk_mdp_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.mtk_mdp_dev*, align 8
  %7 = alloca %struct.mtk_mdp_variant*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.mtk_mdp_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %21 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %21, i32 0, i32 5
  %23 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %22, align 8
  store %struct.mtk_mdp_dev* %23, %struct.mtk_mdp_dev** %6, align 8
  %24 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %6, align 8
  %25 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %24, i32 0, i32 1
  %26 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %25, align 8
  store %struct.mtk_mdp_variant* %26, %struct.mtk_mdp_variant** %7, align 8
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %29, %struct.v4l2_pix_format_mplane** %8, align 8
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.mtk_mdp_fmt* @mtk_mdp_find_fmt(i32 %32, i32 %35)
  store %struct.mtk_mdp_fmt* %36, %struct.mtk_mdp_fmt** %9, align 8
  %37 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %38 = icmp ne %struct.mtk_mdp_fmt* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %2
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.mtk_mdp_fmt* @mtk_mdp_find_fmt_by_index(i32 0, i32 %42)
  store %struct.mtk_mdp_fmt* %43, %struct.mtk_mdp_fmt** %9, align 8
  br label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %46 = icmp ne %struct.mtk_mdp_fmt* %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %48, i32 0, i32 5
  %50 = load %struct.mtk_mdp_dev*, %struct.mtk_mdp_dev** %49, align 8
  %51 = getelementptr inbounds %struct.mtk_mdp_dev, %struct.mtk_mdp_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56)
  store %struct.mtk_mdp_fmt* null, %struct.mtk_mdp_fmt** %3, align 8
  br label %319

58:                                               ; preds = %44
  %59 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %60 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  %62 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %63 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 4
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %58
  %73 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %72, %58
  %94 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memset(i32 %96, i32 0, i32 4)
  %98 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %7, align 8
  %99 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %98, i32 0, i32 2
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %7, align 8
  %104 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %103, i32 0, i32 2
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %11, align 4
  %108 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %109 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %108, i32 0, i32 3
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = icmp eq %struct.TYPE_12__* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %93
  %113 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %7, align 8
  %114 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %12, align 4
  %118 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %7, align 8
  %119 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %13, align 4
  br label %134

123:                                              ; preds = %93
  %124 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %125 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %124, i32 0, i32 3
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %12, align 4
  %129 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %130 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %129, i32 0, i32 3
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %123, %112
  %135 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %136 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %7, align 8
  %142 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %141, i32 0, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %14, align 4
  %146 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %7, align 8
  %147 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %15, align 4
  br label %162

151:                                              ; preds = %134
  %152 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %7, align 8
  %153 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %152, i32 0, i32 0
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %14, align 4
  %157 = load %struct.mtk_mdp_variant*, %struct.mtk_mdp_variant** %7, align 8
  %158 = getelementptr inbounds %struct.mtk_mdp_variant, %struct.mtk_mdp_variant* %157, i32 0, i32 0
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %151, %140
  %163 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %164 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %167 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %170 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %173 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %165, i32 %168, i32 %171, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %181 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %16, align 4
  %183 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %184 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %17, align 4
  %186 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %187 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %186, i32 0, i32 0
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %192 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %191, i32 0, i32 1
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @mtk_mdp_bound_align_image(i32* %187, i32 %188, i32 %189, i32 %190, i32* %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %16, align 4
  %198 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %199 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %197, %200
  br i1 %201, label %208, label %202

202:                                              ; preds = %162
  %203 = load i32, i32* %17, align 4
  %204 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %205 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %203, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %202, %162
  %209 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %210 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %215 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %218 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @mtk_mdp_dbg(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %211, i32 %212, i32 %213, i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %208, %202
  %222 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %223 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %226 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  store i32 0, i32* %18, align 4
  br label %227

227:                                              ; preds = %314, %221
  %228 = load i32, i32* %18, align 4
  %229 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %230 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %317

233:                                              ; preds = %227
  %234 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %235 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %238 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = mul nsw i32 %236, %243
  %245 = sdiv i32 %244, 8
  store i32 %245, i32* %19, align 4
  %246 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %247 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %250 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = mul nsw i32 %248, %251
  %253 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  %254 = getelementptr inbounds %struct.mtk_mdp_fmt, %struct.mtk_mdp_fmt* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %18, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %252, %259
  %261 = sdiv i32 %260, 8
  store i32 %261, i32* %20, align 4
  %262 = load i32, i32* %19, align 4
  %263 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %264 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %263, i32 0, i32 3
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %264, align 8
  %266 = load i32, i32* %18, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  store i32 %262, i32* %269, align 4
  %270 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %271 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %270, i32 0, i32 3
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %271, align 8
  %273 = load i32, i32* %18, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %20, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %289

280:                                              ; preds = %233
  %281 = load i32, i32* %20, align 4
  %282 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %283 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %282, i32 0, i32 3
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  store i32 %281, i32* %288, align 4
  br label %289

289:                                              ; preds = %280, %233
  %290 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %291 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %290, i32 0, i32 3
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %291, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @memset(i32 %297, i32 0, i32 4)
  %299 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %300 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %19, align 4
  %304 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %305 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %304, i32 0, i32 3
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %305, align 8
  %307 = load i32, i32* %18, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %20, align 4
  %313 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @mtk_mdp_dbg(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %301, i32 %302, i32 %303, i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %289
  %315 = load i32, i32* %18, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %18, align 4
  br label %227

317:                                              ; preds = %227
  %318 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %9, align 8
  store %struct.mtk_mdp_fmt* %318, %struct.mtk_mdp_fmt** %3, align 8
  br label %319

319:                                              ; preds = %317, %47
  %320 = load %struct.mtk_mdp_fmt*, %struct.mtk_mdp_fmt** %3, align 8
  ret %struct.mtk_mdp_fmt* %320
}

declare dso_local %struct.mtk_mdp_fmt* @mtk_mdp_find_fmt(i32, i32) #1

declare dso_local %struct.mtk_mdp_fmt* @mtk_mdp_find_fmt_by_index(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mtk_mdp_dbg(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @mtk_mdp_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
