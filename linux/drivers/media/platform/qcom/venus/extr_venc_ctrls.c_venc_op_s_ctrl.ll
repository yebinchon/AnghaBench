; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc_ctrls.c_venc_op_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc_ctrls.c_venc_op_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_enable = type { i32, i32, i32 }
%struct.v4l2_ctrl = type { i32, i32 }
%struct.venus_inst = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.venc_controls }
%struct.venc_controls = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.hfi_bitrate = type { i32, i32, i32 }

@__const.venc_op_s_ctrl.en = private unnamed_addr constant %struct.hfi_enable { i32 1, i32 0, i32 0 }, align 4
@HFI_PROPERTY_CONFIG_VENC_TARGET_BITRATE = common dso_local global i32 0, align 4
@HFI_PROPERTY_CONFIG_VENC_REQUEST_SYNC_FRAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @venc_op_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_op_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.venc_controls*, align 8
  %6 = alloca %struct.hfi_enable, align 4
  %7 = alloca %struct.hfi_bitrate, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = call %struct.venus_inst* @ctrl_to_inst(%struct.v4l2_ctrl* %11)
  store %struct.venus_inst* %12, %struct.venus_inst** %4, align 8
  %13 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.venc_controls* %15, %struct.venc_controls** %5, align 8
  %16 = bitcast %struct.hfi_enable* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.hfi_enable* @__const.venc_op_s_ctrl.en to i8*), i64 12, i1 false)
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %287 [
    i32 156, label %20
    i32 157, label %26
    i32 155, label %67
    i32 149, label %73
    i32 134, label %79
    i32 140, label %86
    i32 136, label %93
    i32 130, label %100
    i32 135, label %107
    i32 146, label %114
    i32 137, label %121
    i32 148, label %128
    i32 139, label %134
    i32 150, label %140
    i32 141, label %146
    i32 142, label %152
    i32 131, label %158
    i32 133, label %164
    i32 132, label %170
    i32 145, label %176
    i32 144, label %182
    i32 143, label %188
    i32 138, label %194
    i32 153, label %200
    i32 151, label %201
    i32 147, label %221
    i32 128, label %227
    i32 129, label %233
    i32 154, label %239
    i32 152, label %257
  ]

20:                                               ; preds = %1
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %25 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %24, i32 0, i32 23
  store i32 %23, i32* %25, align 4
  br label %290

26:                                               ; preds = %1
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %31 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %30, i32 0, i32 22
  store i32 %29, i32* %31, align 4
  %32 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %33 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %36 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %26
  %40 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %41 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load i32, i32* @HFI_PROPERTY_CONFIG_VENC_TARGET_BITRATE, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %47 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %46, i32 0, i32 22
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %7, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.hfi_bitrate, %struct.hfi_bitrate* %7, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = bitcast %struct.hfi_bitrate* %7 to %struct.hfi_enable*
  %54 = call i32 @hfi_session_set_property(%struct.venus_inst* %51, i32 %52, %struct.hfi_enable* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %59 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %2, align 4
  br label %291

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %39, %26
  %64 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %65 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  br label %290

67:                                               ; preds = %1
  %68 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %69 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %72 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %71, i32 0, i32 21
  store i32 %70, i32* %72, align 4
  br label %290

73:                                               ; preds = %1
  %74 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %75 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %78 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %77, i32 0, i32 20
  store i32 %76, i32* %78, align 4
  br label %290

79:                                               ; preds = %1
  %80 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %84 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %83, i32 0, i32 19
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  br label %290

86:                                               ; preds = %1
  %87 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %88 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %91 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %90, i32 0, i32 19
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  br label %290

93:                                               ; preds = %1
  %94 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %95 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %98 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %97, i32 0, i32 19
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  br label %290

100:                                              ; preds = %1
  %101 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %102 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %105 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %104, i32 0, i32 19
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  br label %290

107:                                              ; preds = %1
  %108 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %109 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %112 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %111, i32 0, i32 18
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  br label %290

114:                                              ; preds = %1
  %115 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %116 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %119 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %118, i32 0, i32 18
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  br label %290

121:                                              ; preds = %1
  %122 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %123 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %126 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %125, i32 0, i32 18
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  br label %290

128:                                              ; preds = %1
  %129 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %130 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %133 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %132, i32 0, i32 17
  store i32 %131, i32* %133, align 4
  br label %290

134:                                              ; preds = %1
  %135 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %136 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %139 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %138, i32 0, i32 16
  store i32 %137, i32* %139, align 4
  br label %290

140:                                              ; preds = %1
  %141 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %142 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %145 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %144, i32 0, i32 15
  store i32 %143, i32* %145, align 4
  br label %290

146:                                              ; preds = %1
  %147 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %148 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %151 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %150, i32 0, i32 14
  store i32 %149, i32* %151, align 4
  br label %290

152:                                              ; preds = %1
  %153 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %154 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %157 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %156, i32 0, i32 13
  store i32 %155, i32* %157, align 4
  br label %290

158:                                              ; preds = %1
  %159 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %160 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %163 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %162, i32 0, i32 12
  store i32 %161, i32* %163, align 4
  br label %290

164:                                              ; preds = %1
  %165 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %166 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %169 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %168, i32 0, i32 11
  store i32 %167, i32* %169, align 4
  br label %290

170:                                              ; preds = %1
  %171 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %172 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %175 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %174, i32 0, i32 10
  store i32 %173, i32* %175, align 4
  br label %290

176:                                              ; preds = %1
  %177 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %178 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %181 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %180, i32 0, i32 9
  store i32 %179, i32* %181, align 4
  br label %290

182:                                              ; preds = %1
  %183 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %184 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %187 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 4
  br label %290

188:                                              ; preds = %1
  %189 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %190 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %193 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 4
  br label %290

194:                                              ; preds = %1
  %195 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %196 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %199 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %198, i32 0, i32 6
  store i32 %197, i32* %199, align 4
  br label %290

200:                                              ; preds = %1
  br label %290

201:                                              ; preds = %1
  %202 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %203 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %206 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %209 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %208, i32 0, i32 1
  %210 = call i32 @venc_calc_bpframes(i32 %204, i32 %207, i32* %8, i32* %209)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %201
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %2, align 4
  br label %291

215:                                              ; preds = %201
  %216 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %217 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %220 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 4
  br label %290

221:                                              ; preds = %1
  %222 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %223 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %226 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 4
  br label %290

227:                                              ; preds = %1
  %228 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %229 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %232 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 4
  br label %290

233:                                              ; preds = %1
  %234 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %235 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %238 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  br label %290

239:                                              ; preds = %1
  %240 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %241 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %244 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %247 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %246, i32 0, i32 1
  %248 = call i32 @venc_calc_bpframes(i32 %242, i32 %245, i32* %8, i32* %247)
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %239
  %252 = load i32, i32* %10, align 4
  store i32 %252, i32* %2, align 4
  br label %291

253:                                              ; preds = %239
  %254 = load i32, i32* %8, align 4
  %255 = load %struct.venc_controls*, %struct.venc_controls** %5, align 8
  %256 = getelementptr inbounds %struct.venc_controls, %struct.venc_controls* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 4
  br label %290

257:                                              ; preds = %1
  %258 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %259 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %258, i32 0, i32 0
  %260 = call i32 @mutex_lock(i32* %259)
  %261 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %262 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %283

265:                                              ; preds = %257
  %266 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %267 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %265
  %271 = load i32, i32* @HFI_PROPERTY_CONFIG_VENC_REQUEST_SYNC_FRAME, align 4
  store i32 %271, i32* %9, align 4
  %272 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %273 = load i32, i32* %9, align 4
  %274 = call i32 @hfi_session_set_property(%struct.venus_inst* %272, i32 %273, %struct.hfi_enable* %6)
  store i32 %274, i32* %10, align 4
  %275 = load i32, i32* %10, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %270
  %278 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %279 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %278, i32 0, i32 0
  %280 = call i32 @mutex_unlock(i32* %279)
  %281 = load i32, i32* %10, align 4
  store i32 %281, i32* %2, align 4
  br label %291

282:                                              ; preds = %270
  br label %283

283:                                              ; preds = %282, %265, %257
  %284 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %285 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %284, i32 0, i32 0
  %286 = call i32 @mutex_unlock(i32* %285)
  br label %290

287:                                              ; preds = %1
  %288 = load i32, i32* @EINVAL, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %2, align 4
  br label %291

290:                                              ; preds = %283, %253, %233, %227, %221, %215, %200, %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %121, %114, %107, %100, %93, %86, %79, %73, %67, %63, %20
  store i32 0, i32* %2, align 4
  br label %291

291:                                              ; preds = %290, %287, %277, %251, %213, %57
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local %struct.venus_inst* @ctrl_to_inst(%struct.v4l2_ctrl*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hfi_session_set_property(%struct.venus_inst*, i32, %struct.hfi_enable*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @venc_calc_bpframes(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
