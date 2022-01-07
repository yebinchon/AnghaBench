; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_rx_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_trans_pcie = type { %struct.iwl_rb_allocator, %struct.iwl_rxq* }
%struct.iwl_rb_allocator = type { i32 }
%struct.iwl_rxq = type { i32, i32, i32, %struct.TYPE_4__, i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_rx_mem_buffer = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Q %d: HW = SW = %d\0A\00", align 1
@RX_CLAIM_REQ_ALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"RX path is in emergency. Pending allocations %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Q %d: HW = %d, SW = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"RX path exited emergency. Pending allocations %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, i32)* @iwl_pcie_rx_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_rx_handle(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwl_rxq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_rb_allocator*, align 8
  %12 = alloca %struct.iwl_rx_mem_buffer*, align 8
  %13 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %15 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %14)
  store %struct.iwl_trans_pcie* %15, %struct.iwl_trans_pcie** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %16, i32 0, i32 1
  %18 = load %struct.iwl_rxq*, %struct.iwl_rxq** %17, align 8
  %19 = icmp ne %struct.iwl_rxq* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 1
  %23 = load %struct.iwl_rxq*, %struct.iwl_rxq** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %23, i64 %25
  %27 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %20, %2
  %32 = phi i1 [ true, %2 ], [ %30, %20 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON_ONCE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %247

37:                                               ; preds = %31
  %38 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %38, i32 0, i32 1
  %40 = load %struct.iwl_rxq*, %struct.iwl_rxq** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %40, i64 %42
  store %struct.iwl_rxq* %43, %struct.iwl_rxq** %6, align 8
  br label %44

44:                                               ; preds = %179, %37
  %45 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %45, i32 0, i32 4
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %49 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %50 = call i32 @iwl_get_closed_rb_stts(%struct.iwl_trans* %48, %struct.iwl_rxq* %49)
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = and i32 %51, 4095
  store i32 %52, i32* %7, align 4
  %53 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %8, align 4
  %56 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %57 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %44
  %66 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %67 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %68 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (%struct.iwl_trans*, i8*, i32, i32, ...) @IWL_DEBUG_RX(%struct.iwl_trans* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %44
  br label %73

73:                                               ; preds = %195, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %196

77:                                               ; preds = %73
  %78 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %79 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %78, i32 0, i32 0
  store %struct.iwl_rb_allocator* %79, %struct.iwl_rb_allocator** %11, align 8
  %80 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %81 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.iwl_rb_allocator, %struct.iwl_rb_allocator* %81, i32 0, i32 0
  %83 = call i32 @atomic_read(i32* %82)
  %84 = load i32, i32* @RX_CLAIM_REQ_ALLOC, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %88 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 2
  %91 = icmp sge i32 %86, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %92, %77
  %97 = phi i1 [ false, %77 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %103 = load %struct.iwl_rb_allocator*, %struct.iwl_rb_allocator** %11, align 8
  %104 = call i32 @iwl_pcie_rx_move_to_allocator(%struct.iwl_rxq* %102, %struct.iwl_rb_allocator* %103)
  store i32 1, i32* %10, align 4
  %105 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @IWL_DEBUG_TPT(%struct.iwl_trans* %105, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %110 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %111 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.iwl_trans*, i8*, i32, i32, ...) @IWL_DEBUG_RX(%struct.iwl_trans* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  %116 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %117 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call %struct.iwl_rx_mem_buffer* @iwl_pcie_get_rxb(%struct.iwl_trans* %116, %struct.iwl_rxq* %117, i32 %118)
  store %struct.iwl_rx_mem_buffer* %119, %struct.iwl_rx_mem_buffer** %12, align 8
  %120 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %12, align 8
  %121 = icmp ne %struct.iwl_rx_mem_buffer* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %108
  br label %197

123:                                              ; preds = %108
  %124 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %125 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %126 = load %struct.iwl_rx_mem_buffer*, %struct.iwl_rx_mem_buffer** %12, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @iwl_pcie_rx_handle_rb(%struct.iwl_trans* %124, %struct.iwl_rxq* %125, %struct.iwl_rx_mem_buffer* %126, i32 %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  %132 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %133 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %131, %135
  store i32 %136, i32* %8, align 4
  %137 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %138 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @RX_CLAIM_REQ_ALLOC, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %123
  %143 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %144 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %145 = call i32 @iwl_pcie_rx_allocator_get(%struct.iwl_trans* %143, %struct.iwl_rxq* %144)
  br label %146

146:                                              ; preds = %142, %123
  %147 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %148 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @RX_CLAIM_REQ_ALLOC, align 4
  %151 = srem i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %158 = load %struct.iwl_rb_allocator*, %struct.iwl_rb_allocator** %11, align 8
  %159 = call i32 @iwl_pcie_rx_move_to_allocator(%struct.iwl_rxq* %157, %struct.iwl_rb_allocator* %158)
  br label %195

160:                                              ; preds = %153, %146
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %194

163:                                              ; preds = %160
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp eq i32 %166, 8
  br i1 %167, label %168, label %193

168:                                              ; preds = %163
  store i32 0, i32* %9, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %171 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sdiv i32 %172, 3
  %174 = icmp slt i32 %169, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @IWL_DEBUG_TPT(%struct.iwl_trans* %176, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  store i32 0, i32* %10, align 4
  br label %179

179:                                              ; preds = %175, %168
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %182 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %184 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %183, i32 0, i32 4
  %185 = call i32 @spin_unlock(i32* %184)
  %186 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %187 = load i32, i32* @GFP_ATOMIC, align 4
  %188 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %189 = call i32 @iwl_pcie_rxq_alloc_rbs(%struct.iwl_trans* %186, i32 %187, %struct.iwl_rxq* %188)
  %190 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %191 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %192 = call i32 @iwl_pcie_rxq_restock(%struct.iwl_trans* %190, %struct.iwl_rxq* %191)
  br label %44

193:                                              ; preds = %163
  br label %194

194:                                              ; preds = %193, %160
  br label %195

195:                                              ; preds = %194, %156
  br label %73

196:                                              ; preds = %73
  br label %197

197:                                              ; preds = %196, %122
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %200 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %202 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %201, i32 0, i32 0
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %207 = icmp sge i64 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %197
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @cpu_to_le16(i32 %209)
  %211 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %212 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  store i32 %210, i32* %213, align 4
  br label %214

214:                                              ; preds = %208, %197
  %215 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %216 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %215, i32 0, i32 4
  %217 = call i32 @spin_unlock(i32* %216)
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br label %223

223:                                              ; preds = %220, %214
  %224 = phi i1 [ false, %214 ], [ %222, %220 ]
  %225 = zext i1 %224 to i32
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %230 = load i32, i32* @GFP_ATOMIC, align 4
  %231 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %232 = call i32 @iwl_pcie_rxq_alloc_rbs(%struct.iwl_trans* %229, i32 %230, %struct.iwl_rxq* %231)
  br label %233

233:                                              ; preds = %228, %223
  %234 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %235 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %241 = getelementptr inbounds %struct.iwl_rxq, %struct.iwl_rxq* %240, i32 0, i32 3
  %242 = call i32 @napi_gro_flush(%struct.TYPE_4__* %241, i32 0)
  br label %243

243:                                              ; preds = %239, %233
  %244 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %245 = load %struct.iwl_rxq*, %struct.iwl_rxq** %6, align 8
  %246 = call i32 @iwl_pcie_rxq_restock(%struct.iwl_trans* %244, %struct.iwl_rxq* %245)
  br label %247

247:                                              ; preds = %243, %36
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @iwl_get_closed_rb_stts(%struct.iwl_trans*, %struct.iwl_rxq*) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_trans*, i8*, i32, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iwl_pcie_rx_move_to_allocator(%struct.iwl_rxq*, %struct.iwl_rb_allocator*) #1

declare dso_local i32 @IWL_DEBUG_TPT(%struct.iwl_trans*, i8*, i32) #1

declare dso_local %struct.iwl_rx_mem_buffer* @iwl_pcie_get_rxb(%struct.iwl_trans*, %struct.iwl_rxq*, i32) #1

declare dso_local i32 @iwl_pcie_rx_handle_rb(%struct.iwl_trans*, %struct.iwl_rxq*, %struct.iwl_rx_mem_buffer*, i32, i32) #1

declare dso_local i32 @iwl_pcie_rx_allocator_get(%struct.iwl_trans*, %struct.iwl_rxq*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iwl_pcie_rxq_alloc_rbs(%struct.iwl_trans*, i32, %struct.iwl_rxq*) #1

declare dso_local i32 @iwl_pcie_rxq_restock(%struct.iwl_trans*, %struct.iwl_rxq*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @napi_gro_flush(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
