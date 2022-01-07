; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_configure_dglort_map_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_configure_dglort_map_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_dglort_cfg = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_MAX_QUEUES = common dso_local global i64 0, align 8
@FM10K_TXQCTL_PC_MASK = common dso_local global i64 0, align 8
@FM10K_TXQCTL_PC_SHIFT = common dso_local global i64 0, align 8
@FM10K_DGLORTDEC_RSSLENGTH_SHIFT = common dso_local global i64 0, align 8
@FM10K_DGLORTDEC_QBASE_SHIFT = common dso_local global i64 0, align 8
@FM10K_DGLORTDEC_PCLENGTH_SHIFT = common dso_local global i64 0, align 8
@FM10K_DGLORTDEC_VSIBASE_SHIFT = common dso_local global i64 0, align 8
@FM10K_DGLORTDEC_VSILENGTH_SHIFT = common dso_local global i64 0, align 8
@FM10K_DGLORTDEC_INNERRSS_ENABLE = common dso_local global i64 0, align 8
@fm10k_dglort_default = common dso_local global i32 0, align 4
@FM10K_DGLORTMAP_ANY = common dso_local global i64 0, align 8
@FM10K_DGLORTMAP_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, %struct.fm10k_dglort_cfg*)* @fm10k_configure_dglort_map_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_configure_dglort_map_pf(%struct.fm10k_hw* %0, %struct.fm10k_dglort_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_dglort_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_dglort_cfg* %1, %struct.fm10k_dglort_cfg** %5, align 8
  %17 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %18 = icmp ne %struct.fm10k_dglort_cfg* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %20, i32* %3, align 4
  br label %277

21:                                               ; preds = %2
  %22 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 7
  br i1 %25, label %56, label %26

26:                                               ; preds = %21
  %27 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 7
  br i1 %30, label %56, label %31

31:                                               ; preds = %26
  %32 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %56, label %36

36:                                               ; preds = %31
  %37 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 6
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %43 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 64
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 8
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %53 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 256
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %46, %41, %36, %31, %26, %21
  %57 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %57, i32* %3, align 4
  br label %277

58:                                               ; preds = %51
  %59 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %60 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %63 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = call i64 @BIT(i32 %65)
  store i64 %66, i64* %7, align 8
  %67 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %71 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = call i64 @BIT(i32 %73)
  store i64 %74, i64* %8, align 8
  %75 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %76 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %6, align 8
  %78 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %79 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %82

82:                                               ; preds = %113, %58
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %82
  store i64 0, i64* %11, align 8
  br label %87

87:                                               ; preds = %107, %86
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @FM10K_MAX_QUEUES, align 8
  %94 = icmp sge i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %112

96:                                               ; preds = %91
  %97 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i32 @FM10K_TX_SGLORT(i64 %98)
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %97, i32 %99, i64 %100)
  %102 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @FM10K_RX_SGLORT(i64 %103)
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %102, i32 %104, i64 %105)
  br label %107

107:                                              ; preds = %96
  %108 = load i64, i64* %11, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %13, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %13, align 8
  br label %87

112:                                              ; preds = %95, %87
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %10, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %6, align 8
  br label %82

118:                                              ; preds = %82
  %119 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %120 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %123 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  %126 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %127 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %125, %128
  %130 = call i64 @BIT(i32 %129)
  store i64 %130, i64* %7, align 8
  %131 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %132 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @BIT(i32 %133)
  store i64 %134, i64* %9, align 8
  store i64 0, i64* %12, align 8
  br label %135

135:                                              ; preds = %181, %118
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp slt i64 %136, %137
  br i1 %138, label %139, label %184

139:                                              ; preds = %135
  %140 = load i64, i64* %12, align 8
  %141 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %142 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %140, %144
  store i64 %145, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %146

146:                                              ; preds = %177, %139
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %146
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* @FM10K_MAX_QUEUES, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %180

155:                                              ; preds = %150
  %156 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @FM10K_TXQCTL(i64 %157)
  %159 = call i64 @fm10k_read_reg(%struct.fm10k_hw* %156, i32 %158)
  store i64 %159, i64* %14, align 8
  %160 = load i64, i64* @FM10K_TXQCTL_PC_MASK, align 8
  %161 = xor i64 %160, -1
  %162 = load i64, i64* %14, align 8
  %163 = and i64 %162, %161
  store i64 %163, i64* %14, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* @FM10K_TXQCTL_PC_SHIFT, align 8
  %166 = shl i64 %164, %165
  %167 = load i64, i64* %14, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %14, align 8
  %169 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %170 = load i64, i64* %13, align 8
  %171 = call i32 @FM10K_TXQCTL(i64 %170)
  %172 = load i64, i64* %14, align 8
  %173 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %169, i32 %171, i64 %172)
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %13, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %13, align 8
  br label %177

177:                                              ; preds = %155
  %178 = load i64, i64* %11, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %11, align 8
  br label %146

180:                                              ; preds = %154, %146
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %12, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %12, align 8
  br label %135

184:                                              ; preds = %135
  %185 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %186 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* @FM10K_DGLORTDEC_RSSLENGTH_SHIFT, align 8
  %190 = shl i64 %188, %189
  %191 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %192 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* @FM10K_DGLORTDEC_QBASE_SHIFT, align 8
  %196 = shl i64 %194, %195
  %197 = or i64 %190, %196
  %198 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %199 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* @FM10K_DGLORTDEC_PCLENGTH_SHIFT, align 8
  %203 = shl i64 %201, %202
  %204 = or i64 %197, %203
  %205 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %206 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* @FM10K_DGLORTDEC_VSIBASE_SHIFT, align 8
  %210 = shl i64 %208, %209
  %211 = or i64 %204, %210
  %212 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %213 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* @FM10K_DGLORTDEC_VSILENGTH_SHIFT, align 8
  %217 = shl i64 %215, %216
  %218 = or i64 %211, %217
  %219 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %220 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = or i64 %218, %222
  store i64 %223, i64* %15, align 8
  %224 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %225 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %224, i32 0, i32 9
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %184
  %229 = load i64, i64* @FM10K_DGLORTDEC_INNERRSS_ENABLE, align 8
  %230 = load i64, i64* %15, align 8
  %231 = or i64 %230, %229
  store i64 %231, i64* %15, align 8
  br label %232

232:                                              ; preds = %228, %184
  %233 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %234 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @fm10k_dglort_default, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i64, i64* @FM10K_DGLORTMAP_ANY, align 8
  br label %242

240:                                              ; preds = %232
  %241 = load i64, i64* @FM10K_DGLORTMAP_ZERO, align 8
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i64 [ %239, %238 ], [ %241, %240 ]
  store i64 %243, i64* %16, align 8
  %244 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %245 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %248 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %246, %249
  %251 = sext i32 %250 to i64
  %252 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %253 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %252, i32 0, i32 8
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %251, %254
  %256 = load i64, i64* %16, align 8
  %257 = shl i64 %256, %255
  store i64 %257, i64* %16, align 8
  %258 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %259 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %258, i32 0, i32 7
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %16, align 8
  %262 = or i64 %261, %260
  store i64 %262, i64* %16, align 8
  %263 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %264 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %265 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @FM10K_DGLORTDEC(i32 %266)
  %268 = load i64, i64* %15, align 8
  %269 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %263, i32 %267, i64 %268)
  %270 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %271 = load %struct.fm10k_dglort_cfg*, %struct.fm10k_dglort_cfg** %5, align 8
  %272 = getelementptr inbounds %struct.fm10k_dglort_cfg, %struct.fm10k_dglort_cfg* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @FM10K_DGLORTMAP(i32 %273)
  %275 = load i64, i64* %16, align 8
  %276 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %270, i32 %274, i64 %275)
  store i32 0, i32* %3, align 4
  br label %277

277:                                              ; preds = %242, %56, %19
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i64) #1

declare dso_local i32 @FM10K_TX_SGLORT(i64) #1

declare dso_local i32 @FM10K_RX_SGLORT(i64) #1

declare dso_local i64 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_TXQCTL(i64) #1

declare dso_local i32 @FM10K_DGLORTDEC(i32) #1

declare dso_local i32 @FM10K_DGLORTMAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
