; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.vicodec_ctx = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format }
%struct.v4l2_pix_format_mplane = type { %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32 }
%struct.vicodec_q_data = type { %struct.TYPE_9__*, i32, i32, i32 }
%struct.vb2_queue = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_FWHT = common dso_local global i32 0, align 4
@pixfmt_fwht = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@V4L2_PIX_FMT_FWHT_STATELESS = common dso_local global i32 0, align 4
@pixfmt_stateless_fwht = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [62 x i8] c"Setting format for type %d, coded wxh: %dx%d, fourcc: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vicodec_ctx*, %struct.v4l2_format*)* @vidioc_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt(%struct.vicodec_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vicodec_ctx*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.vicodec_q_data*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  store i32 1, i32* %8, align 4
  %11 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %14, i32 %17)
  store %struct.vb2_queue* %18, %struct.vb2_queue** %7, align 8
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %20 = icmp ne %struct.vb2_queue* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %266

24:                                               ; preds = %2
  %25 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %25, i32 %28)
  store %struct.vicodec_q_data* %29, %struct.vicodec_q_data** %6, align 8
  %30 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %31 = icmp ne %struct.vicodec_q_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %266

35:                                               ; preds = %24
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %244 [
    i32 131, label %39
    i32 129, label %39
    i32 130, label %140
    i32 128, label %140
  ]

39:                                               ; preds = %35, %35
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store %struct.v4l2_pix_format* %42, %struct.v4l2_pix_format** %10, align 8
  %43 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %39
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @V4L2_TYPE_IS_OUTPUT(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %47
  %54 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %55 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %60 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %84, label %68

68:                                               ; preds = %58
  %69 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %70 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %78 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  br label %84

84:                                               ; preds = %76, %68, %58, %53
  %85 = phi i1 [ true, %68 ], [ true, %58 ], [ true, %53 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %47, %39
  %88 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %89 = call i32 @vb2_is_busy(%struct.vb2_queue* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %266

97:                                               ; preds = %91, %87
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @V4L2_PIX_FMT_FWHT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %105 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %104, i32 0, i32 0
  store %struct.TYPE_9__* @pixfmt_fwht, %struct.TYPE_9__** %105, align 8
  br label %124

106:                                              ; preds = %97
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @V4L2_PIX_FMT_FWHT_STATELESS, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %114 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %113, i32 0, i32 0
  store %struct.TYPE_9__* @pixfmt_stateless_fwht, %struct.TYPE_9__** %114, align 8
  br label %123

115:                                              ; preds = %106
  %116 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @find_fmt(i32 %118)
  %120 = bitcast i8* %119 to %struct.TYPE_9__*
  %121 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %122 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %121, i32 0, i32 0
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %122, align 8
  br label %123

123:                                              ; preds = %115, %112
  br label %124

124:                                              ; preds = %123, %103
  %125 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %129 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %131 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %134 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %136 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %139 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  br label %247

140:                                              ; preds = %35, %35
  %141 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %142 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %143, %struct.v4l2_pix_format_mplane** %9, align 8
  %144 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %145 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %188

148:                                              ; preds = %140
  %149 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @V4L2_TYPE_IS_OUTPUT(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %188

154:                                              ; preds = %148
  %155 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %156 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = icmp ne %struct.TYPE_9__* %157, null
  br i1 %158, label %159, label %185

159:                                              ; preds = %154
  %160 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %161 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %166 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %164, %167
  br i1 %168, label %185, label %169

169:                                              ; preds = %159
  %170 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %171 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %174 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %172, %175
  br i1 %176, label %185, label %177

177:                                              ; preds = %169
  %178 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %179 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %182 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %180, %183
  br label %185

185:                                              ; preds = %177, %169, %159, %154
  %186 = phi i1 [ true, %169 ], [ true, %159 ], [ true, %154 ], [ %184, %177 ]
  %187 = zext i1 %186 to i32
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %185, %148, %140
  %189 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %190 = call i32 @vb2_is_busy(%struct.vb2_queue* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* @EBUSY, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %266

198:                                              ; preds = %192, %188
  %199 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %200 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @V4L2_PIX_FMT_FWHT, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %206 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %205, i32 0, i32 0
  store %struct.TYPE_9__* @pixfmt_fwht, %struct.TYPE_9__** %206, align 8
  br label %225

207:                                              ; preds = %198
  %208 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %209 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @V4L2_PIX_FMT_FWHT_STATELESS, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %215 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %214, i32 0, i32 0
  store %struct.TYPE_9__* @pixfmt_stateless_fwht, %struct.TYPE_9__** %215, align 8
  br label %224

216:                                              ; preds = %207
  %217 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %218 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @find_fmt(i32 %219)
  %221 = bitcast i8* %220 to %struct.TYPE_9__*
  %222 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %223 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %222, i32 0, i32 0
  store %struct.TYPE_9__* %221, %struct.TYPE_9__** %223, align 8
  br label %224

224:                                              ; preds = %216, %213
  br label %225

225:                                              ; preds = %224, %204
  %226 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %227 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %230 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 4
  %231 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %232 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %235 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 8
  %236 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %237 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %236, i32 0, i32 0
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i64 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %243 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 8
  br label %247

244:                                              ; preds = %35
  %245 = load i32, i32* @EINVAL, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %3, align 4
  br label %266

247:                                              ; preds = %225, %124
  %248 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %4, align 8
  %249 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %252 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %255 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %258 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %6, align 8
  %261 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %260, i32 0, i32 0
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @dprintk(i32 %250, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %253, i32 %256, i32 %259, i32 %264)
  store i32 0, i32* %3, align 4
  br label %266

266:                                              ; preds = %247, %244, %195, %94, %32, %21
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local i32 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i8* @find_fmt(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
