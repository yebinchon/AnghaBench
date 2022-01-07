; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_assign_resources_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_assign_resources_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@FM10K_TXQCTL_VID_SHIFT = common dso_local global i32 0, align 4
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_TC_CREDIT_CREDIT_MASK = common dso_local global i32 0, align 4
@FM10K_VFMBMEM_LEN = common dso_local global i32 0, align 4
@FM10K_MAX_QUEUES_PF = common dso_local global i32 0, align 4
@FM10K_TXQCTL_PF = common dso_local global i32 0, align 4
@FM10K_TXQCTL_UNLIMITED_BW = common dso_local global i32 0, align 4
@FM10K_RXQCTL_PF = common dso_local global i32 0, align 4
@FM10K_ITR_REG_COUNT_PF = common dso_local global i32 0, align 4
@FM10K_ITR_REG_COUNT = common dso_local global i32 0, align 4
@FM10K_TXQCTL_TC_SHIFT = common dso_local global i32 0, align 4
@FM10K_TXQCTL_VF = common dso_local global i32 0, align 4
@FM10K_RXDCTL_WRITE_BACK_MIN_DELAY = common dso_local global i32 0, align 4
@FM10K_RXDCTL_DROP_ON_EMPTY = common dso_local global i32 0, align 4
@FM10K_RXQCTL_VF_SHIFT = common dso_local global i32 0, align 4
@FM10K_RXQCTL_VF = common dso_local global i32 0, align 4
@FM10K_TQMAP_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i32, i32)* @fm10k_iov_assign_resources_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_iov_assign_resources_pf(%struct.fm10k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %18 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FM10K_TXQCTL_VID_SHIFT, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 64
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %26, i32* %4, align 4
  br label %270

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %34 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %27
  %39 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %39, i32* %4, align 4
  br label %270

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %43 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %47 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 8
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 32, i32 256
  store i32 %52, i32* %8, align 4
  %53 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %54 = call i32 @fm10k_queues_per_pool(%struct.fm10k_hw* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %56 = call i32 @fm10k_vectors_per_pool(%struct.fm10k_hw* %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %58 = call i32 @fm10k_vf_queue_index(%struct.fm10k_hw* %57, i32 0)
  store i32 %58, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %77, %40
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @FM10K_TC_MAXCREDIT(i32 %65)
  %67 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %64, i32 %66, i32 0)
  %68 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @FM10K_TC_RATE(i32 %69)
  %71 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %68, i32 %70, i32 0)
  %72 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @FM10K_TC_CREDIT(i32 %73)
  %75 = load i32, i32* @FM10K_TC_CREDIT_CREDIT_MASK, align 4
  %76 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %72, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %59

80:                                               ; preds = %59
  %81 = load i32, i32* @FM10K_VFMBMEM_LEN, align 4
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %88, %80
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %15, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @FM10K_MBMEM(i32 %90)
  %92 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %89, i32 %91, i32 0)
  br label %84

93:                                               ; preds = %84
  %94 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %95 = call i32 @FM10K_PFVFLREC(i32 0)
  %96 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %94, i32 %95, i32 -1)
  %97 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %98 = call i32 @FM10K_PFVFLREC(i32 1)
  %99 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %97, i32 %98, i32 -1)
  %100 = load i32, i32* @FM10K_MAX_QUEUES_PF, align 4
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %124, %93
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  %106 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @FM10K_TXDCTL(i32 %107)
  %109 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %106, i32 %108, i32 0)
  %110 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @FM10K_TXQCTL(i32 %111)
  %113 = load i32, i32* @FM10K_TXQCTL_PF, align 4
  %114 = load i32, i32* @FM10K_TXQCTL_UNLIMITED_BW, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %14, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %110, i32 %112, i32 %117)
  %119 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @FM10K_RXQCTL(i32 %120)
  %122 = load i32, i32* @FM10K_RXQCTL_PF, align 4
  %123 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %119, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %105
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %101

127:                                              ; preds = %101
  %128 = load i32, i32* @FM10K_ITR_REG_COUNT_PF, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %156, %127
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @FM10K_ITR_REG_COUNT, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %130
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %136, 1
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %134
  %141 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @FM10K_ITR2(i32 %142)
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %141, i32 %143, i32 %146)
  br label %155

148:                                              ; preds = %134
  %149 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @FM10K_ITR2(i32 %150)
  %152 = load i32, i32* %15, align 4
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %149, i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %148, %140
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %130

159:                                              ; preds = %130
  %160 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %161 = call i32 @FM10K_ITR2(i32 0)
  %162 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sub nsw i32 %163, 1
  %165 = call i32 @fm10k_vf_vector_index(%struct.fm10k_hw* %162, i32 %164)
  %166 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %160, i32 %161, i32 %165)
  store i32 0, i32* %15, align 4
  br label %167

167:                                              ; preds = %250, %159
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %253

171:                                              ; preds = %167
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %173

173:                                              ; preds = %221, %171
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %228

177:                                              ; preds = %173
  %178 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @FM10K_TXDCTL(i32 %179)
  %181 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %178, i32 %180, i32 0)
  %182 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @FM10K_TXQCTL(i32 %183)
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* @FM10K_TXQCTL_TC_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = load i32, i32* %15, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @FM10K_TXQCTL_VF, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* %14, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %182, i32 %184, i32 %193)
  %195 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @FM10K_RXDCTL(i32 %196)
  %198 = load i32, i32* @FM10K_RXDCTL_WRITE_BACK_MIN_DELAY, align 4
  %199 = load i32, i32* @FM10K_RXDCTL_DROP_ON_EMPTY, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %195, i32 %197, i32 %200)
  %202 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @FM10K_RXQCTL(i32 %203)
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @FM10K_RXQCTL_VF_SHIFT, align 4
  %207 = shl i32 %205, %206
  %208 = load i32, i32* @FM10K_RXQCTL_VF, align 4
  %209 = or i32 %207, %208
  %210 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %202, i32 %204, i32 %209)
  %211 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @FM10K_TQMAP(i32 %212)
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %211, i32 %213, i32 %214)
  %216 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @FM10K_RQMAP(i32 %217)
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %216, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %177
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %173

228:                                              ; preds = %173
  br label %229

229:                                              ; preds = %244, %228
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* %8, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %249

233:                                              ; preds = %229
  %234 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @FM10K_TQMAP(i32 %235)
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %234, i32 %236, i32 %237)
  %239 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @FM10K_RQMAP(i32 %240)
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %239, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %233
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %16, align 4
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  br label %229

249:                                              ; preds = %229
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %15, align 4
  br label %167

253:                                              ; preds = %167
  br label %254

254:                                              ; preds = %258, %253
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* @FM10K_TQMAP_TABLE_SIZE, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %269

258:                                              ; preds = %254
  %259 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @FM10K_TQMAP(i32 %260)
  %262 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %259, i32 %261, i32 0)
  %263 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %264 = load i32, i32* %13, align 4
  %265 = call i32 @FM10K_RQMAP(i32 %264)
  %266 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %263, i32 %265, i32 0)
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %13, align 4
  br label %254

269:                                              ; preds = %254
  store i32 0, i32* %4, align 4
  br label %270

270:                                              ; preds = %269, %38, %25
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local i32 @fm10k_queues_per_pool(%struct.fm10k_hw*) #1

declare dso_local i32 @fm10k_vectors_per_pool(%struct.fm10k_hw*) #1

declare dso_local i32 @fm10k_vf_queue_index(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_TC_MAXCREDIT(i32) #1

declare dso_local i32 @FM10K_TC_RATE(i32) #1

declare dso_local i32 @FM10K_TC_CREDIT(i32) #1

declare dso_local i32 @FM10K_MBMEM(i32) #1

declare dso_local i32 @FM10K_PFVFLREC(i32) #1

declare dso_local i32 @FM10K_TXDCTL(i32) #1

declare dso_local i32 @FM10K_TXQCTL(i32) #1

declare dso_local i32 @FM10K_RXQCTL(i32) #1

declare dso_local i32 @FM10K_ITR2(i32) #1

declare dso_local i32 @fm10k_vf_vector_index(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_RXDCTL(i32) #1

declare dso_local i32 @FM10K_TQMAP(i32) #1

declare dso_local i32 @FM10K_RQMAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
