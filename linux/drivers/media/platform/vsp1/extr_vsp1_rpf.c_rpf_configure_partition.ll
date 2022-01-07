; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_rpf_configure_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_rpf_configure_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_rwpf = type { %struct.TYPE_6__, %struct.v4l2_pix_format_mplane, %struct.vsp1_format_info*, %struct.vsp1_rwpf_memory }
%struct.TYPE_6__ = type { i32, %struct.vsp1_device* }
%struct.vsp1_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.v4l2_pix_format_mplane = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.vsp1_format_info = type { i32*, i32, i64, i32 }
%struct.vsp1_rwpf_memory = type { i32* }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@VI6_RPF_SRC_BSIZE = common dso_local global i32 0, align 4
@VI6_RPF_SRC_BSIZE_BHSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_SRC_BSIZE_BVSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_SRC_ESIZE = common dso_local global i32 0, align 4
@VI6_RPF_SRC_ESIZE_EHSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_SRC_ESIZE_EVSIZE_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_SRCM_ADDR_Y = common dso_local global i32 0, align 4
@VI6_RPF_SRCM_ADDR_C0 = common dso_local global i32 0, align 4
@VI6_RPF_SRCM_ADDR_C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @rpf_configure_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpf_configure_partition(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_rwpf*, align 8
  %10 = alloca %struct.vsp1_rwpf_memory, align 8
  %11 = alloca %struct.vsp1_device*, align 8
  %12 = alloca %struct.vsp1_format_info*, align 8
  %13 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %14 = alloca %struct.v4l2_rect, align 4
  %15 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %16 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %17 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %16, i32 0, i32 0
  %18 = call %struct.vsp1_rwpf* @to_rwpf(i32* %17)
  store %struct.vsp1_rwpf* %18, %struct.vsp1_rwpf** %9, align 8
  %19 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %20 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %19, i32 0, i32 3
  %21 = bitcast %struct.vsp1_rwpf_memory* %10 to i8*
  %22 = bitcast %struct.vsp1_rwpf_memory* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %24 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.vsp1_device*, %struct.vsp1_device** %25, align 8
  store %struct.vsp1_device* %26, %struct.vsp1_device** %11, align 8
  %27 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %28 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %27, i32 0, i32 2
  %29 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %28, align 8
  store %struct.vsp1_format_info* %29, %struct.vsp1_format_info** %12, align 8
  %30 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %31 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %30, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %31, %struct.v4l2_pix_format_mplane** %13, align 8
  %32 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %33 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %34 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.v4l2_rect* @vsp1_rwpf_get_crop(%struct.vsp1_rwpf* %32, i32 %36)
  %38 = bitcast %struct.v4l2_rect* %14 to i8*
  %39 = bitcast %struct.v4l2_rect* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 16, i1 false)
  %40 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %41 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %63

44:                                               ; preds = %4
  %45 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %46 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %53 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %57
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %44, %4
  %64 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %65 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 2
  %72 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %12, align 8
  %73 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @round_down(i32 %71, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 2
  %81 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %12, align 8
  %82 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @round_down(i32 %80, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 3
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %68, %63
  %88 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %89 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %90 = load i32, i32* @VI6_RPF_SRC_BSIZE, align 4
  %91 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @VI6_RPF_SRC_BSIZE_BHSIZE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @VI6_RPF_SRC_BSIZE_BVSIZE_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %94, %98
  %100 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %88, %struct.vsp1_dl_body* %89, i32 %90, i32 %99)
  %101 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %102 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %103 = load i32, i32* @VI6_RPF_SRC_ESIZE, align 4
  %104 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @VI6_RPF_SRC_ESIZE_EHSIZE_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @VI6_RPF_SRC_ESIZE_EVSIZE_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = or i32 %107, %111
  %113 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %101, %struct.vsp1_dl_body* %102, i32 %103, i32 %112)
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %115, %121
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %12, align 8
  %126 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %124, %129
  %131 = sdiv i32 %130, 8
  %132 = add nsw i32 %122, %131
  %133 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %10, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %135, align 4
  %138 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %139 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %178

142:                                              ; preds = %87
  %143 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %146 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %144, %150
  %152 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %12, align 8
  %155 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sdiv i32 %153, %156
  %158 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %12, align 8
  %159 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %157, %162
  %164 = sdiv i32 %163, 8
  %165 = add nsw i32 %151, %164
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %10, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %15, align 4
  %173 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %10, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, %172
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %142, %87
  %179 = load %struct.vsp1_device*, %struct.vsp1_device** %11, align 8
  %180 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 3
  br i1 %184, label %185, label %205

185:                                              ; preds = %178
  %186 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %13, align 8
  %187 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 3
  br i1 %189, label %190, label %205

190:                                              ; preds = %185
  %191 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %12, align 8
  %192 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %10, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %10, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @swap(i32 %199, i32 %203)
  br label %205

205:                                              ; preds = %195, %190, %185, %178
  %206 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %207 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %212 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %7, align 8
  %213 = call i32 @vsp1_rpf_configure_autofld(%struct.vsp1_rwpf* %211, %struct.vsp1_dl_list* %212)
  br label %239

214:                                              ; preds = %205
  %215 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %216 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %217 = load i32, i32* @VI6_RPF_SRCM_ADDR_Y, align 4
  %218 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %10, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %215, %struct.vsp1_dl_body* %216, i32 %217, i32 %221)
  %223 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %224 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %225 = load i32, i32* @VI6_RPF_SRCM_ADDR_C0, align 4
  %226 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %10, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %223, %struct.vsp1_dl_body* %224, i32 %225, i32 %229)
  %231 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %232 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %233 = load i32, i32* @VI6_RPF_SRCM_ADDR_C1, align 4
  %234 = getelementptr inbounds %struct.vsp1_rwpf_memory, %struct.vsp1_rwpf_memory* %10, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %231, %struct.vsp1_dl_body* %232, i32 %233, i32 %237)
  br label %239

239:                                              ; preds = %214, %210
  ret void
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.v4l2_rect* @vsp1_rwpf_get_crop(%struct.vsp1_rwpf*, i32) #1

declare dso_local i8* @round_down(i32, i32) #1

declare dso_local i32 @vsp1_rpf_write(%struct.vsp1_rwpf*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @vsp1_rpf_configure_autofld(%struct.vsp1_rwpf*, %struct.vsp1_dl_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
