; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c___vpe_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c___vpe_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i64, i64, i32, i32, i32, %struct.v4l2_plane_pix_format*, i32, i64 }
%struct.v4l2_plane_pix_format = type { i32, i32, i32 }
%struct.vpe_fmt = type { i32, i64, %struct.TYPE_4__**, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Fourcc format (0x%08x) invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@V4L2_FIELD_SEQ_TB = common dso_local global i64 0, align 8
@VPE_LUMA = common dso_local global i64 0, align 8
@VPDMA_DESC_ALIGN = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@MAX_W = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@MAX_H = common dso_local global i32 0, align 4
@H_ALIGN = common dso_local global i32 0, align 4
@S_ALIGN = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB32 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_BGR32 = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SRGB = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_REC709 = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i64 0, align 8
@VPDMA_STRIDE_ALIGN = common dso_local global i32 0, align 4
@VPE_CHROMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpe_ctx*, %struct.v4l2_format*, %struct.vpe_fmt*, i32)* @__vpe_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vpe_try_fmt(%struct.vpe_ctx* %0, %struct.v4l2_format* %1, %struct.vpe_fmt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpe_ctx*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vpe_fmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %11 = alloca %struct.v4l2_plane_pix_format*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %6, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %7, align 8
  store %struct.vpe_fmt* %2, %struct.vpe_fmt** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %20, %struct.v4l2_pix_format_mplane** %10, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %22 = icmp ne %struct.vpe_fmt* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %25 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23, %4
  %31 = load %struct.vpe_ctx*, %struct.vpe_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @vpe_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %314

40:                                               ; preds = %23
  %41 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %42 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %60 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %52, %46, %40
  %63 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %64 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i64, i64* @VPE_LUMA, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = ashr i32 %71, 3
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  store i32 4, i32* %12, align 4
  br label %83

76:                                               ; preds = %62
  %77 = load i32, i32* @VPDMA_DESC_ALIGN, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sdiv i32 %77, %78
  %80 = call i32 @roundup_pow_of_two(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @ilog2(i32 %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %75
  %84 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %84, i32 0, i32 2
  %86 = load i32, i32* @MIN_W, align 4
  %87 = load i32, i32* @MAX_W, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %89, i32 0, i32 3
  %91 = load i32, i32* @MIN_H, align 4
  %92 = load i32, i32* @MAX_H, align 4
  %93 = load i32, i32* @H_ALIGN, align 4
  %94 = load i32, i32* @S_ALIGN, align 4
  %95 = call i32 @v4l_bound_align_image(i32* %85, i32 %86, i32 %87, i32 %88, i32* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %83
  %101 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %102 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 2, i32 1
  %107 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  br label %123

109:                                              ; preds = %83
  %110 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %116 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %120, i32 0, i32 4
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %114, %109
  br label %123

123:                                              ; preds = %122, %100
  %124 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %125 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %128 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %123
  %135 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %136 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 2
  store i32 %138, i32* %16, align 4
  br label %143

139:                                              ; preds = %123
  %140 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %141 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %139, %134
  %144 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %145 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %189, label %148

148:                                              ; preds = %143
  %149 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %150 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @V4L2_PIX_FMT_RGB24, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %172, label %154

154:                                              ; preds = %148
  %155 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %156 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @V4L2_PIX_FMT_BGR24, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %172, label %160

160:                                              ; preds = %154
  %161 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %162 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @V4L2_PIX_FMT_RGB32, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %168 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @V4L2_PIX_FMT_BGR32, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %166, %160, %154, %148
  %173 = load i64, i64* @V4L2_COLORSPACE_SRGB, align 8
  %174 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %175 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %174, i32 0, i32 7
  store i64 %173, i64* %175, align 8
  br label %188

176:                                              ; preds = %166
  %177 = load i32, i32* %16, align 4
  %178 = icmp sgt i32 %177, 1280
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i64, i64* @V4L2_COLORSPACE_REC709, align 8
  %181 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %182 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %181, i32 0, i32 7
  store i64 %180, i64* %182, align 8
  br label %187

183:                                              ; preds = %176
  %184 = load i64, i64* @V4L2_COLORSPACE_SMPTE170M, align 8
  %185 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %186 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %185, i32 0, i32 7
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %172
  br label %189

189:                                              ; preds = %188, %143
  %190 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %191 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @memset(i32 %192, i32 0, i32 4)
  store i32 0, i32* %13, align 4
  br label %194

194:                                              ; preds = %310, %189
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %197 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %313

200:                                              ; preds = %194
  %201 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %202 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %201, i32 0, i32 5
  %203 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %203, i64 %205
  store %struct.v4l2_plane_pix_format* %206, %struct.v4l2_plane_pix_format** %11, align 8
  %207 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %208 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %207, i32 0, i32 2
  %209 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %209, i64 %211
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %14, align 4
  %216 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %217 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %220 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %219, i32 0, i32 2
  %221 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %220, align 8
  %222 = load i64, i64* @VPE_LUMA, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %221, i64 %222
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %218, %226
  %228 = ashr i32 %227, 3
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %231 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ugt i32 %229, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %200
  %235 = load i32, i32* %17, align 4
  %236 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %237 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %234, %200
  %239 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %240 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @VPDMA_STRIDE_ALIGN, align 4
  %243 = call i32 @ALIGN(i32 %241, i32 %242)
  %244 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %245 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = load i64, i64* @VPE_LUMA, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %292

250:                                              ; preds = %238
  %251 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %252 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %255 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = mul i32 %253, %256
  %258 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %259 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %261 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %291

264:                                              ; preds = %250
  %265 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %266 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %291

269:                                              ; preds = %264
  %270 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %271 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %274 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = mul i32 %272, %275
  %277 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %278 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %277, i32 0, i32 2
  %279 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %278, align 8
  %280 = load i64, i64* @VPE_CHROMA, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %279, i64 %280
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = mul i32 %276, %284
  %286 = lshr i32 %285, 3
  %287 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %288 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = add i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %269, %264, %250
  br label %305

292:                                              ; preds = %238
  %293 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %10, align 8
  %294 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %297 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = mul i32 %295, %298
  %300 = load i32, i32* %14, align 4
  %301 = mul i32 %299, %300
  %302 = lshr i32 %301, 3
  %303 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %304 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 4
  br label %305

305:                                              ; preds = %292, %291
  %306 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %11, align 8
  %307 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @memset(i32 %308, i32 0, i32 4)
  br label %310

310:                                              ; preds = %305
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %13, align 4
  br label %194

313:                                              ; preds = %194
  store i32 0, i32* %5, align 4
  br label %314

314:                                              ; preds = %313, %30
  %315 = load i32, i32* %5, align 4
  ret i32 %315
}

declare dso_local i32 @vpe_err(i32, i8*, i64) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
