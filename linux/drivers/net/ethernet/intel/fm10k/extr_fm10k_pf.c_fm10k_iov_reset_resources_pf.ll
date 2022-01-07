; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_reset_resources_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_iov_reset_resources_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.fm10k_hw.0*)* }
%struct.fm10k_hw.0 = type opaque
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.fm10k_hw.1*, i32)* }
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_vf_info = type { i32, i32, i32, i64*, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 (%struct.fm10k_hw.2*, %struct.TYPE_12__*)* }
%struct.fm10k_hw.2 = type opaque

@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_TXQCTL_VID_SHIFT = common dso_local global i32 0, align 4
@FM10K_TXQCTL_TC_SHIFT = common dso_local global i32 0, align 4
@FM10K_TXQCTL_VF = common dso_local global i32 0, align 4
@FM10K_RXQCTL_VF_SHIFT = common dso_local global i32 0, align 4
@FM10K_RXQCTL_VF = common dso_local global i32 0, align 4
@FM10K_RXDCTL_WRITE_BACK_MIN_DELAY = common dso_local global i32 0, align 4
@FM10K_RXDCTL_DROP_ON_EMPTY = common dso_local global i32 0, align 4
@FM10K_TC_CREDIT_CREDIT_MASK = common dso_local global i32 0, align 4
@FM10K_VFMBMEM_LEN = common dso_local global i32 0, align 4
@FM10K_VLAN_TABLE_SIZE = common dso_local global i32 0, align 4
@FM10K_RETA_SIZE = common dso_local global i32 0, align 4
@FM10K_RSSRK_SIZE = common dso_local global i32 0, align 4
@FM10K_TDLEN_ITR_SCALE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, %struct.fm10k_vf_info*)* @fm10k_iov_reset_resources_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_iov_reset_resources_pf(%struct.fm10k_hw* %0, %struct.fm10k_vf_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_vf_info*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_vf_info* %1, %struct.fm10k_vf_info** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %20 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %24 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %29, i32* %3, align 4
  br label %424

30:                                               ; preds = %2
  %31 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sdiv i32 %32, 32
  %34 = call i32 @FM10K_PFVFLREC(i32 %33)
  %35 = load i32, i32* %17, align 4
  %36 = srem i32 %35, 32
  %37 = call i32 @BIT(i32 %36)
  %38 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %31, i32 %34, i32 %37)
  %39 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %40 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %43 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (%struct.fm10k_hw.2*, %struct.TYPE_12__*)*, i32 (%struct.fm10k_hw.2*, %struct.TYPE_12__*)** %45, align 8
  %47 = icmp ne i32 (%struct.fm10k_hw.2*, %struct.TYPE_12__*)* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %30
  %49 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %50 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32 (%struct.fm10k_hw.2*, %struct.TYPE_12__*)*, i32 (%struct.fm10k_hw.2*, %struct.TYPE_12__*)** %52, align 8
  %54 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %55 = bitcast %struct.fm10k_hw* %54 to %struct.fm10k_hw.2*
  %56 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %57 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %56, i32 0, i32 5
  %58 = call i32 %53(%struct.fm10k_hw.2* %55, %struct.TYPE_12__* %57)
  br label %59

59:                                               ; preds = %48, %30
  %60 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @fm10k_vf_vector_index(%struct.fm10k_hw* %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %65 = call i32 @fm10k_vectors_per_pool(%struct.fm10k_hw* %64)
  %66 = add nsw i32 %63, %65
  store i32 %66, i32* %15, align 4
  %67 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %68 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 8
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 32, i32 256
  store i32 %73, i32* %6, align 4
  %74 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %75 = call i32 @fm10k_queues_per_pool(%struct.fm10k_hw* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %17, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %95, %59
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %88 = load i32, i32* %18, align 4
  %89 = call i32 @FM10K_TQMAP(i32 %88)
  %90 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %87, i32 %89, i32 0)
  %91 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @FM10K_RQMAP(i32 %92)
  %94 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %91, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %80

98:                                               ; preds = %80
  %99 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @fm10k_vf_queue_index(%struct.fm10k_hw* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %103 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %108 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %16, align 4
  br label %114

110:                                              ; preds = %98
  %111 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %112 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @FM10K_TXQCTL_VID_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @FM10K_TXQCTL_TC_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = or i32 %117, %120
  %122 = load i32, i32* @FM10K_TXQCTL_VF, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %17, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @FM10K_RXQCTL_VF_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* @FM10K_RXQCTL_VF, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %18, align 4
  br label %132

132:                                              ; preds = %160, %114
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %134, %135
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %163

138:                                              ; preds = %132
  %139 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @FM10K_TXDCTL(i32 %140)
  %142 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %139, i32 %141, i32 0)
  %143 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @FM10K_TXQCTL(i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %143, i32 %145, i32 %146)
  %148 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @FM10K_RXDCTL(i32 %149)
  %151 = load i32, i32* @FM10K_RXDCTL_WRITE_BACK_MIN_DELAY, align 4
  %152 = load i32, i32* @FM10K_RXDCTL_DROP_ON_EMPTY, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %148, i32 %150, i32 %153)
  %155 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @FM10K_RXQCTL(i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %155, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %138
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  br label %132

163:                                              ; preds = %132
  %164 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %165 = load i32, i32* %17, align 4
  %166 = call i32 @FM10K_TC_MAXCREDIT(i32 %165)
  %167 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %164, i32 %166, i32 0)
  %168 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %169 = load i32, i32* %17, align 4
  %170 = call i32 @FM10K_TC_RATE(i32 %169)
  %171 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %168, i32 %170, i32 0)
  %172 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @FM10K_TC_CREDIT(i32 %173)
  %175 = load i32, i32* @FM10K_TC_CREDIT_CREDIT_MASK, align 4
  %176 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %172, i32 %174, i32 %175)
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %163
  %180 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %181 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.0*)** %183, align 8
  %185 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %186 = bitcast %struct.fm10k_hw* %185 to %struct.fm10k_hw.0*
  %187 = call i32 %184(%struct.fm10k_hw.0* %186)
  br label %199

188:                                              ; preds = %163
  %189 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %190 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32 (%struct.fm10k_hw.1*, i32)*, i32 (%struct.fm10k_hw.1*, i32)** %192, align 8
  %194 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %195 = bitcast %struct.fm10k_hw* %194 to %struct.fm10k_hw.1*
  %196 = load i32, i32* %17, align 4
  %197 = sub nsw i32 %196, 1
  %198 = call i32 %193(%struct.fm10k_hw.1* %195, i32 %197)
  br label %199

199:                                              ; preds = %188, %179
  %200 = load i32, i32* %17, align 4
  %201 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %202 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %204, 1
  %206 = icmp eq i32 %200, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %199
  %208 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %209 = call i32 @FM10K_ITR2(i32 0)
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %208, i32 %209, i32 %210)
  br label %218

212:                                              ; preds = %199
  %213 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %214 = load i32, i32* %15, align 4
  %215 = call i32 @FM10K_ITR2(i32 %214)
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %213, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %212, %207
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %232, %218
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* %15, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %221
  %226 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @FM10K_ITR2(i32 %227)
  %229 = load i32, i32* %14, align 4
  %230 = sub nsw i32 %229, 1
  %231 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %226, i32 %228, i32 %230)
  br label %232

232:                                              ; preds = %225
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  br label %221

235:                                              ; preds = %221
  %236 = load i32, i32* @FM10K_VFMBMEM_LEN, align 4
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %241, %235
  %238 = load i32, i32* %18, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %18, align 4
  %240 = icmp ne i32 %238, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %237
  %242 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %18, align 4
  %245 = call i32 @FM10K_MBMEM_VF(i32 %243, i32 %244)
  %246 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %242, i32 %245, i32 0)
  br label %237

247:                                              ; preds = %237
  %248 = load i32, i32* @FM10K_VLAN_TABLE_SIZE, align 4
  store i32 %248, i32* %18, align 4
  br label %249

249:                                              ; preds = %253, %247
  %250 = load i32, i32* %18, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %18, align 4
  %252 = icmp ne i32 %250, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %249
  %254 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %255 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %256 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %18, align 4
  %259 = call i32 @FM10K_VLAN_TABLE(i32 %257, i32 %258)
  %260 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %254, i32 %259, i32 0)
  br label %249

261:                                              ; preds = %249
  %262 = load i32, i32* @FM10K_RETA_SIZE, align 4
  store i32 %262, i32* %18, align 4
  br label %263

263:                                              ; preds = %267, %261
  %264 = load i32, i32* %18, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %18, align 4
  %266 = icmp ne i32 %264, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %263
  %268 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %269 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %270 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %18, align 4
  %273 = call i32 @FM10K_RETA(i32 %271, i32 %272)
  %274 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %268, i32 %273, i32 0)
  br label %263

275:                                              ; preds = %263
  %276 = load i32, i32* @FM10K_RSSRK_SIZE, align 4
  store i32 %276, i32* %18, align 4
  br label %277

277:                                              ; preds = %281, %275
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %18, align 4
  %280 = icmp ne i32 %278, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %277
  %282 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %283 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %284 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %18, align 4
  %287 = call i32 @FM10K_RSSRK(i32 %285, i32 %286)
  %288 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %282, i32 %287, i32 0)
  br label %277

289:                                              ; preds = %277
  %290 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %291 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %292 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @FM10K_MRQC(i32 %293)
  %295 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %290, i32 %294, i32 0)
  %296 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %297 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %296, i32 0, i32 3
  %298 = load i64*, i64** %297, align 8
  %299 = call i64 @is_valid_ether_addr(i64* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %348

301:                                              ; preds = %289
  %302 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %303 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %302, i32 0, i32 3
  %304 = load i64*, i64** %303, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 3
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = shl i32 %307, 24
  %309 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %310 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %309, i32 0, i32 3
  %311 = load i64*, i64** %310, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 4
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = shl i32 %314, 16
  %316 = or i32 %308, %315
  %317 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %318 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %317, i32 0, i32 3
  %319 = load i64*, i64** %318, align 8
  %320 = getelementptr inbounds i64, i64* %319, i64 5
  %321 = load i64, i64* %320, align 8
  %322 = trunc i64 %321 to i32
  %323 = shl i32 %322, 8
  %324 = or i32 %316, %323
  store i32 %324, i32* %10, align 4
  %325 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %326 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %325, i32 0, i32 3
  %327 = load i64*, i64** %326, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 0
  %329 = load i64, i64* %328, align 8
  %330 = trunc i64 %329 to i32
  %331 = shl i32 %330, 16
  %332 = or i32 -16777216, %331
  %333 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %334 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %333, i32 0, i32 3
  %335 = load i64*, i64** %334, align 8
  %336 = getelementptr inbounds i64, i64* %335, i64 1
  %337 = load i64, i64* %336, align 8
  %338 = trunc i64 %337 to i32
  %339 = shl i32 %338, 8
  %340 = or i32 %332, %339
  %341 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %5, align 8
  %342 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %341, i32 0, i32 3
  %343 = load i64*, i64** %342, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 2
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = or i32 %340, %346
  store i32 %347, i32* %11, align 4
  br label %348

348:                                              ; preds = %301, %289
  %349 = load i32, i32* %7, align 4
  store i32 %349, i32* %18, align 4
  br label %350

350:                                              ; preds = %354, %348
  %351 = load i32, i32* %18, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %18, align 4
  %353 = icmp ne i32 %351, 0
  br i1 %353, label %354, label %399

354:                                              ; preds = %350
  %355 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* %18, align 4
  %358 = add nsw i32 %356, %357
  %359 = call i32 @FM10K_TDBAL(i32 %358)
  %360 = load i32, i32* %10, align 4
  %361 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %355, i32 %359, i32 %360)
  %362 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %363 = load i32, i32* %8, align 4
  %364 = load i32, i32* %18, align 4
  %365 = add nsw i32 %363, %364
  %366 = call i32 @FM10K_TDBAH(i32 %365)
  %367 = load i32, i32* %11, align 4
  %368 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %362, i32 %366, i32 %367)
  %369 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %370 = load i32, i32* %8, align 4
  %371 = load i32, i32* %18, align 4
  %372 = add nsw i32 %370, %371
  %373 = call i32 @FM10K_TDLEN(i32 %372)
  %374 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %375 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @FM10K_TDLEN_ITR_SCALE_SHIFT, align 4
  %379 = shl i32 %377, %378
  %380 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %369, i32 %373, i32 %379)
  %381 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %382 = load i32, i32* %9, align 4
  %383 = load i32, i32* %18, align 4
  %384 = add nsw i32 %382, %383
  %385 = call i32 @FM10K_TQMAP(i32 %384)
  %386 = load i32, i32* %8, align 4
  %387 = load i32, i32* %18, align 4
  %388 = add nsw i32 %386, %387
  %389 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %381, i32 %385, i32 %388)
  %390 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %391 = load i32, i32* %9, align 4
  %392 = load i32, i32* %18, align 4
  %393 = add nsw i32 %391, %392
  %394 = call i32 @FM10K_RQMAP(i32 %393)
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* %18, align 4
  %397 = add nsw i32 %395, %396
  %398 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %390, i32 %394, i32 %397)
  br label %350

399:                                              ; preds = %350
  %400 = load i32, i32* %7, align 4
  store i32 %400, i32* %18, align 4
  br label %401

401:                                              ; preds = %420, %399
  %402 = load i32, i32* %18, align 4
  %403 = load i32, i32* %6, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %423

405:                                              ; preds = %401
  %406 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %407 = load i32, i32* %9, align 4
  %408 = load i32, i32* %18, align 4
  %409 = add nsw i32 %407, %408
  %410 = call i32 @FM10K_TQMAP(i32 %409)
  %411 = load i32, i32* %8, align 4
  %412 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %406, i32 %410, i32 %411)
  %413 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %414 = load i32, i32* %9, align 4
  %415 = load i32, i32* %18, align 4
  %416 = add nsw i32 %414, %415
  %417 = call i32 @FM10K_RQMAP(i32 %416)
  %418 = load i32, i32* %8, align 4
  %419 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %413, i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %405
  %421 = load i32, i32* %18, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %18, align 4
  br label %401

423:                                              ; preds = %401
  store i32 0, i32* %3, align 4
  br label %424

424:                                              ; preds = %423, %28
  %425 = load i32, i32* %3, align 4
  ret i32 %425
}

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_PFVFLREC(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fm10k_vf_vector_index(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @fm10k_vectors_per_pool(%struct.fm10k_hw*) #1

declare dso_local i32 @fm10k_queues_per_pool(%struct.fm10k_hw*) #1

declare dso_local i32 @FM10K_TQMAP(i32) #1

declare dso_local i32 @FM10K_RQMAP(i32) #1

declare dso_local i32 @fm10k_vf_queue_index(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_TXDCTL(i32) #1

declare dso_local i32 @FM10K_TXQCTL(i32) #1

declare dso_local i32 @FM10K_RXDCTL(i32) #1

declare dso_local i32 @FM10K_RXQCTL(i32) #1

declare dso_local i32 @FM10K_TC_MAXCREDIT(i32) #1

declare dso_local i32 @FM10K_TC_RATE(i32) #1

declare dso_local i32 @FM10K_TC_CREDIT(i32) #1

declare dso_local i32 @FM10K_ITR2(i32) #1

declare dso_local i32 @FM10K_MBMEM_VF(i32, i32) #1

declare dso_local i32 @FM10K_VLAN_TABLE(i32, i32) #1

declare dso_local i32 @FM10K_RETA(i32, i32) #1

declare dso_local i32 @FM10K_RSSRK(i32, i32) #1

declare dso_local i32 @FM10K_MRQC(i32) #1

declare dso_local i64 @is_valid_ether_addr(i64*) #1

declare dso_local i32 @FM10K_TDBAL(i32) #1

declare dso_local i32 @FM10K_TDBAH(i32) #1

declare dso_local i32 @FM10K_TDLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
