; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c___vpe_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c___vpe_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i64, i32, %struct.v4l2_plane_pix_format*, i32, i32 }
%struct.v4l2_plane_pix_format = type { i32, i32 }
%struct.vpe_q_data = type { i32, i64, i32, i32, i32*, %struct.TYPE_8__*, i32, %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.vb2_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"queue busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@Q_DATA_INTERLACED_ALTERNATE = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i64 0, align 8
@Q_DATA_INTERLACED_SEQ_TB = common dso_local global i32 0, align 4
@Q_IS_INTERLACED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Setting format for type %d, wxh: %dx%d, fmt: %d bpl_y %d\00", align 1
@VPE_LUMA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c" bpl_uv %d\0A\00", align 1
@VPE_CHROMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpe_ctx*, %struct.v4l2_format*)* @__vpe_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vpe_s_fmt(%struct.vpe_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpe_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca %struct.v4l2_plane_pix_format*, align 8
  %8 = alloca %struct.vpe_q_data*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %11 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %13, %struct.v4l2_pix_format_mplane** %6, align 8
  %14 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %17, i32 %20)
  store %struct.vb2_queue* %21, %struct.vb2_queue** %9, align 8
  %22 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %23 = icmp ne %struct.vb2_queue* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %217

27:                                               ; preds = %2
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %29 = call i64 @vb2_is_busy(%struct.vb2_queue* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vpe_err(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %217

38:                                               ; preds = %27
  %39 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx* %39, i32 %42)
  store %struct.vpe_q_data* %43, %struct.vpe_q_data** %8, align 8
  %44 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %45 = icmp ne %struct.vpe_q_data* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %217

49:                                               ; preds = %38
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %51 = call %struct.TYPE_8__* @find_format(%struct.v4l2_format* %50)
  %52 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %53 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %52, i32 0, i32 5
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %58 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %63 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %68 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 8
  %69 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %73 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %78 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %110, %49
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %79
  %86 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %86, i32 0, i32 3
  %88 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %88, i64 %90
  store %struct.v4l2_plane_pix_format* %91, %struct.v4l2_plane_pix_format** %7, align 8
  %92 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %96 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.v4l2_plane_pix_format*, %struct.v4l2_plane_pix_format** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_plane_pix_format, %struct.v4l2_plane_pix_format* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %105 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %104, i32 0, i32 8
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %85
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %79

113:                                              ; preds = %79
  %114 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %115 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %118 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %121 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %124 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %127 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %130 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %133 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %113
  %138 = load i32, i32* @Q_DATA_INTERLACED_ALTERNATE, align 4
  %139 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %140 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %163

143:                                              ; preds = %113
  %144 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %145 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @V4L2_FIELD_SEQ_TB, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load i32, i32* @Q_DATA_INTERLACED_SEQ_TB, align 4
  %151 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %152 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %162

155:                                              ; preds = %143
  %156 = load i32, i32* @Q_IS_INTERLACED, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %159 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %155, %149
  br label %163

163:                                              ; preds = %162, %137
  %164 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %165 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @Q_DATA_INTERLACED_SEQ_TB, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %172 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sdiv i32 %174, 2
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %163
  %177 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %178 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %181 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %184 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %187 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %190 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %189, i32 0, i32 5
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %195 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @VPE_LUMA, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i32, i8*, i32, ...) @vpe_dbg(i32 %179, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %182, i32 %185, i32 %188, i32 %193, i32 %199)
  %201 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %202 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 2
  br i1 %204, label %205, label %216

205:                                              ; preds = %176
  %206 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %207 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.vpe_q_data*, %struct.vpe_q_data** %8, align 8
  %210 = getelementptr inbounds %struct.vpe_q_data, %struct.vpe_q_data* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @VPE_CHROMA, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i32, i8*, i32, ...) @vpe_dbg(i32 %208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %205, %176
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %46, %31, %24
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @vpe_err(i32, i8*) #1

declare dso_local %struct.vpe_q_data* @get_q_data(%struct.vpe_ctx*, i32) #1

declare dso_local %struct.TYPE_8__* @find_format(%struct.v4l2_format*) #1

declare dso_local i32 @vpe_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
