; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vdec_vp9_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vdec_vp9_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_mem = type { i32, i64 }
%struct.vdec_fb = type { i32 }
%struct.vdec_vp9_inst = type { i32, %struct.vdec_fb*, i32, %struct.TYPE_6__, %struct.vdec_vp9_vsi* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.vdec_vp9_vsi = type { i8*, i32, i32, i64, i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_10__*, i64, i32, %struct.TYPE_7__*, i32*, i64*, i32, %struct.vdec_fb, %struct.mtk_vcodec_mem }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.vdec_fb* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.vdec_fb }

@.str = private unnamed_addr constant [6 x i8] c"[EOS]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bs == NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Input BS Size = %zu\00", align 1
@VP9_SUPER_FRAME_BS_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"vpu_dec_start failed\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid values from VPU.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"[#pic %d]\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"drv->new_fb_idx=%d, drv->frm_to_show_idx=%d\00", align 1
@VP9_MAX_FRM_BUF_NUM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [56 x i8] c"Skip Decode drv->new_fb_idx=%d, drv->frm_to_show_idx=%d\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"VDEC_ST_RESOLUTION_CHANGED\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"vp9_decode_end_proc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.mtk_vcodec_mem*, %struct.vdec_fb*, i32*)* @vdec_vp9_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_vp9_decode(i8* %0, %struct.mtk_vcodec_mem* %1, %struct.vdec_fb* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mtk_vcodec_mem*, align 8
  %8 = alloca %struct.vdec_fb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vdec_vp9_inst*, align 8
  %12 = alloca %struct.vdec_vp9_vsi*, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vdec_fb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.mtk_vcodec_mem* %1, %struct.mtk_vcodec_mem** %7, align 8
  store %struct.vdec_fb* %2, %struct.vdec_fb** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.vdec_vp9_inst*
  store %struct.vdec_vp9_inst* %23, %struct.vdec_vp9_inst** %11, align 8
  %24 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %25 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %24, i32 0, i32 4
  %26 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %25, align 8
  store %struct.vdec_vp9_vsi* %26, %struct.vdec_vp9_vsi** %12, align 8
  %27 = load i32*, i32** %9, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %29 = icmp eq %struct.mtk_vcodec_mem* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %4
  %31 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %32 = icmp eq %struct.vdec_fb* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %35 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %37 = call i32 @vp9_reset(%struct.vdec_vp9_inst* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %391

39:                                               ; preds = %30, %4
  %40 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %41 = icmp eq %struct.mtk_vcodec_mem* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %44 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %391

47:                                               ; preds = %39
  %48 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %49 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %50 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %376
  store %struct.vdec_fb* null, %struct.vdec_fb** %15, align 8
  %54 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %55 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %61 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 4
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  %67 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %68 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %72, i32* %73, align 4
  %74 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %75 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %74, i32 0, i32 16
  %76 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %77 = bitcast %struct.mtk_vcodec_mem* %75 to i8*
  %78 = bitcast %struct.mtk_vcodec_mem* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  %79 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %80 = icmp ne %struct.vdec_fb* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %53
  %82 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %83 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %82, i32 0, i32 15
  %84 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %85 = bitcast %struct.vdec_fb* %83 to i8*
  %86 = bitcast %struct.vdec_fb* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  br label %87

87:                                               ; preds = %81, %53
  %88 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %89 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %88, i32 0, i32 14
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %131, label %92

92:                                               ; preds = %87
  %93 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %94 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @VP9_SUPER_FRAME_BS_SZ, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @VP9_SUPER_FRAME_BS_SZ, align 4
  br label %104

100:                                              ; preds = %92
  %101 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %102 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  br label %104

104:                                              ; preds = %100, %98
  %105 = phi i32 [ %99, %98 ], [ %103, %100 ]
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* @VP9_SUPER_FRAME_BS_SZ, align 4
  %107 = load i32, i32* %16, align 4
  %108 = sub i32 %106, %107
  store i32 %108, i32* %17, align 4
  %109 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %110 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %113 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = zext i32 %114 to i64
  %116 = add nsw i64 %111, %115
  %117 = load i32, i32* %16, align 4
  %118 = zext i32 %117 to i64
  %119 = sub nsw i64 %116, %118
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %18, align 8
  %121 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %122 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %17, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8* %126, i8** %19, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = load i8*, i8** %18, align 8
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @memcpy(i8* %127, i8* %128, i32 %129)
  br label %173

131:                                              ; preds = %87
  %132 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %133 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ugt i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %131
  %137 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %138 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %141 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ult i32 %139, %142
  br i1 %143, label %144, label %172

144:                                              ; preds = %136
  %145 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %146 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %20, align 4
  %148 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %149 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i8*
  %152 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %7, align 8
  %153 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %156 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %155, i32 0, i32 13
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %20, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %154, %161
  %163 = inttoptr i64 %162 to i8*
  %164 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %165 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %164, i32 0, i32 12
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @memcpy(i8* %151, i8* %163, i32 %170)
  br label %172

172:                                              ; preds = %144, %136, %131
  br label %173

173:                                              ; preds = %172, %104
  %174 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %175 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %179 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @memset(i32 %177, i32 0, i32 %181)
  %183 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %184 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %183, i32 0, i32 2
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %186 = call i32 @vpu_dec_start(i32* %184, i32* %185, i32 3)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %173
  %190 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %191 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %382

192:                                              ; preds = %173
  %193 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %194 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %195 = call i32 @validate_vsi_array_indexes(%struct.vdec_vp9_inst* %193, %struct.vdec_vp9_vsi* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %200 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %382

201:                                              ; preds = %192
  %202 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %203 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %208 = call i32 @vp9_alloc_work_buf(%struct.vdec_vp9_inst* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* @EIO, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %10, align 4
  br label %382

213:                                              ; preds = %206
  br label %214

214:                                              ; preds = %213, %201
  %215 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %216 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = icmp ugt i32 %217, 0
  br i1 %218, label %219, label %244

219:                                              ; preds = %214
  %220 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %221 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %220, i32 0, i32 11
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %224 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  store %struct.vdec_fb* %227, %struct.vdec_fb** %15, align 8
  %228 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %229 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %232 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = icmp ult i32 %230, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %219
  %236 = load %struct.vdec_fb*, %struct.vdec_fb** %15, align 8
  %237 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %238 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %237, i32 0, i32 1
  store %struct.vdec_fb* %236, %struct.vdec_fb** %238, align 8
  br label %243

239:                                              ; preds = %219
  %240 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %241 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %242 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %241, i32 0, i32 1
  store %struct.vdec_fb* %240, %struct.vdec_fb** %242, align 8
  br label %243

243:                                              ; preds = %239, %235
  br label %248

244:                                              ; preds = %214
  %245 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %246 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %247 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %246, i32 0, i32 1
  store %struct.vdec_fb* %245, %struct.vdec_fb** %247, align 8
  br label %248

248:                                              ; preds = %244, %243
  %249 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %250 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %249, i32 0, i32 1
  %251 = load %struct.vdec_fb*, %struct.vdec_fb** %250, align 8
  %252 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %253 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %252, i32 0, i32 7
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %256 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  store %struct.vdec_fb* %251, %struct.vdec_fb** %260, align 8
  %261 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %262 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %263 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %262, i32 0, i32 1
  %264 = load %struct.vdec_fb*, %struct.vdec_fb** %263, align 8
  %265 = call i32 @vp9_is_sf_ref_fb(%struct.vdec_vp9_inst* %261, %struct.vdec_fb* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %248
  %268 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %269 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %270 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %269, i32 0, i32 1
  %271 = load %struct.vdec_fb*, %struct.vdec_fb** %270, align 8
  %272 = call i32 @vp9_add_to_fb_use_list(%struct.vdec_vp9_inst* %268, %struct.vdec_fb* %271)
  br label %273

273:                                              ; preds = %267, %248
  %274 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %275 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %276 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %275, i32 0, i32 10
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %274, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %277)
  %279 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %280 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %279, i32 0, i32 9
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %273
  %284 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %285 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %286 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %289 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %288, i32 0, i32 5
  %290 = load i64, i64* %289, align 8
  %291 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %284, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %287, i64 %290)
  br label %292

292:                                              ; preds = %283, %273
  %293 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %294 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %293, i32 0, i32 9
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %319

297:                                              ; preds = %292
  %298 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %299 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %298, i32 0, i32 5
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @VP9_MAX_FRM_BUF_NUM, align 8
  %302 = icmp slt i64 %300, %301
  br i1 %302, label %303, label %319

303:                                              ; preds = %297
  %304 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %305 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %306 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %309 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %308, i32 0, i32 5
  %310 = load i64, i64* %309, align 8
  %311 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %304, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 %307, i64 %310)
  %312 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %313 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %314 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %313, i32 0, i32 4
  %315 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %316 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @vp9_ref_cnt_fb(%struct.vdec_vp9_inst* %312, i64* %314, i64 %317)
  br label %319

319:                                              ; preds = %303, %297, %292
  store i32 0, i32* %14, align 4
  br label %320

320:                                              ; preds = %350, %319
  %321 = load i32, i32* %14, align 4
  %322 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %323 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %322, i32 0, i32 8
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %323, align 8
  %325 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %324)
  %326 = icmp slt i32 %321, %325
  br i1 %326, label %327, label %353

327:                                              ; preds = %320
  %328 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %329 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %328, i32 0, i32 8
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %329, align 8
  %331 = load i32, i32* %14, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  store i32 %335, i32* %21, align 4
  %336 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %337 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %336, i32 0, i32 7
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %337, align 8
  %339 = load i32, i32* %21, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 0
  %343 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %344 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %343, i32 0, i32 8
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %344, align 8
  %346 = load i32, i32* %14, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 1
  store %struct.TYPE_8__* %342, %struct.TYPE_8__** %349, align 8
  br label %350

350:                                              ; preds = %327
  %351 = load i32, i32* %14, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %14, align 4
  br label %320

353:                                              ; preds = %320
  %354 = load %struct.vdec_vp9_vsi*, %struct.vdec_vp9_vsi** %12, align 8
  %355 = getelementptr inbounds %struct.vdec_vp9_vsi, %struct.vdec_vp9_vsi* %354, i32 0, i32 6
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %353
  %359 = load i32*, i32** %9, align 8
  store i32 1, i32* %359, align 4
  %360 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %361 = call i32 (%struct.vdec_vp9_inst*, i8*, ...) @mtk_vcodec_debug(%struct.vdec_vp9_inst* %360, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %382

362:                                              ; preds = %353
  %363 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %364 = call i32 @vp9_decode_end_proc(%struct.vdec_vp9_inst* %363)
  %365 = icmp ne i32 %364, 1
  br i1 %365, label %366, label %371

366:                                              ; preds = %362
  %367 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %368 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %367, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %369 = load i32, i32* @EINVAL, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %10, align 4
  br label %382

371:                                              ; preds = %362
  %372 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %373 = call i64 @vp9_is_last_sub_frm(%struct.vdec_vp9_inst* %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %371
  br label %377

376:                                              ; preds = %371
  br label %53

377:                                              ; preds = %375
  %378 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %379 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %379, align 8
  br label %382

382:                                              ; preds = %377, %366, %358, %210, %198, %189
  %383 = load i32, i32* %10, align 4
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %382
  %386 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %11, align 8
  %387 = load %struct.vdec_fb*, %struct.vdec_fb** %8, align 8
  %388 = call i32 @vp9_add_to_fb_free_list(%struct.vdec_vp9_inst* %386, %struct.vdec_fb* %387)
  br label %389

389:                                              ; preds = %385, %382
  %390 = load i32, i32* %10, align 4
  store i32 %390, i32* %5, align 4
  br label %391

391:                                              ; preds = %389, %42, %33
  %392 = load i32, i32* %5, align 4
  ret i32 %392
}

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_vp9_inst*, i8*, ...) #1

declare dso_local i32 @vp9_reset(%struct.vdec_vp9_inst*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp9_inst*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @vpu_dec_start(i32*, i32*, i32) #1

declare dso_local i32 @validate_vsi_array_indexes(%struct.vdec_vp9_inst*, %struct.vdec_vp9_vsi*) #1

declare dso_local i32 @vp9_alloc_work_buf(%struct.vdec_vp9_inst*) #1

declare dso_local i32 @vp9_is_sf_ref_fb(%struct.vdec_vp9_inst*, %struct.vdec_fb*) #1

declare dso_local i32 @vp9_add_to_fb_use_list(%struct.vdec_vp9_inst*, %struct.vdec_fb*) #1

declare dso_local i32 @vp9_ref_cnt_fb(%struct.vdec_vp9_inst*, i64*, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @vp9_decode_end_proc(%struct.vdec_vp9_inst*) #1

declare dso_local i64 @vp9_is_last_sub_frm(%struct.vdec_vp9_inst*) #1

declare dso_local i32 @vp9_add_to_fb_free_list(%struct.vdec_vp9_inst*, %struct.vdec_fb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
