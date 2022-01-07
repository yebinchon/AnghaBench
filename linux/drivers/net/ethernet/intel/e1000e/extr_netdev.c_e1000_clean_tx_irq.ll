; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, i32, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i32, i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.e1000_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.e1000_hw, %struct.net_device* }
%struct.e1000_hw = type { i32 }
%struct.net_device = type { i32 }
%struct.e1000_tx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@E1000_TXD_STAT_DD = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_TXOFF = common dso_local global i32 0, align 4
@TX_WAKE_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*)* @e1000_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_tx_irq(%struct.e1000_ring* %0) #0 {
  %2 = alloca %struct.e1000_ring*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.e1000_tx_desc*, align 8
  %7 = alloca %struct.e1000_tx_desc*, align 8
  %8 = alloca %struct.e1000_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %2, align 8
  %17 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %17, i32 0, i32 4
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %18, align 8
  store %struct.e1000_adapter* %19, %struct.e1000_adapter** %3, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 9
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %4, align 8
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 8
  store %struct.e1000_hw* %24, %struct.e1000_hw** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %28, i32 0, i32 3
  %30 = load %struct.e1000_buffer*, %struct.e1000_buffer** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %30, i64 %32
  %34 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  %36 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %36, i32 %37)
  store %struct.e1000_tx_desc* %38, %struct.e1000_tx_desc** %7, align 8
  br label %39

39:                                               ; preds = %136, %1
  %40 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %7, align 8
  %41 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br label %54

54:                                               ; preds = %48, %39
  %55 = phi i1 [ false, %39 ], [ %53, %48 ]
  br i1 %55, label %56, label %148

56:                                               ; preds = %54
  store i32 0, i32* %16, align 4
  %57 = call i32 (...) @dma_rmb()
  br label %58

58:                                               ; preds = %126, %56
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %129

62:                                               ; preds = %58
  %63 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %63, i32 %64)
  store %struct.e1000_tx_desc* %65, %struct.e1000_tx_desc** %6, align 8
  %66 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %67 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %66, i32 0, i32 3
  %68 = load %struct.e1000_buffer*, %struct.e1000_buffer** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %68, i64 %70
  store %struct.e1000_buffer* %71, %struct.e1000_buffer** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %62
  %79 = load %struct.e1000_buffer*, %struct.e1000_buffer** %8, align 8
  %80 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load %struct.e1000_buffer*, %struct.e1000_buffer** %8, align 8
  %87 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load %struct.e1000_buffer*, %struct.e1000_buffer** %8, align 8
  %94 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = icmp ne %struct.TYPE_3__* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %78
  %98 = load %struct.e1000_buffer*, %struct.e1000_buffer** %8, align 8
  %99 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %97, %78
  br label %110

110:                                              ; preds = %109, %62
  %111 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %112 = load %struct.e1000_buffer*, %struct.e1000_buffer** %8, align 8
  %113 = call i32 @e1000_put_txbuf(%struct.e1000_ring* %111, %struct.e1000_buffer* %112, i32 0)
  %114 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %6, align 8
  %115 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %121 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %124, %110
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %58

129:                                              ; preds = %58
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %132 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %148

136:                                              ; preds = %129
  %137 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %138 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %137, i32 0, i32 3
  %139 = load %struct.e1000_buffer*, %struct.e1000_buffer** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %139, i64 %141
  %143 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %10, align 4
  %145 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %145, i32 %146)
  store %struct.e1000_tx_desc* %147, %struct.e1000_tx_desc** %7, align 8
  br label %39

148:                                              ; preds = %135, %54
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %151 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @netdev_completed_queue(%struct.net_device* %152, i32 %153, i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %148
  %159 = load %struct.net_device*, %struct.net_device** %4, align 8
  %160 = call i64 @netif_carrier_ok(%struct.net_device* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %158
  %163 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %164 = call i64 @e1000_desc_unused(%struct.e1000_ring* %163)
  %165 = icmp sge i64 %164, 32
  br i1 %165, label %166, label %185

166:                                              ; preds = %162
  %167 = call i32 (...) @smp_mb()
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = call i64 @netif_queue_stopped(%struct.net_device* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load i32, i32* @__E1000_DOWN, align 4
  %173 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %174 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %173, i32 0, i32 7
  %175 = call i32 @test_bit(i32 %172, i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %171
  %178 = load %struct.net_device*, %struct.net_device** %4, align 8
  %179 = call i32 @netif_wake_queue(%struct.net_device* %178)
  %180 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %181 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %177, %171, %166
  br label %185

185:                                              ; preds = %184, %162, %158, %148
  %186 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %187 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %235

190:                                              ; preds = %185
  %191 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %191, i32 0, i32 0
  store i32 0, i32* %192, align 8
  %193 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %194 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %193, i32 0, i32 3
  %195 = load %struct.e1000_buffer*, %struct.e1000_buffer** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %195, i64 %197
  %199 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %231

202:                                              ; preds = %190
  %203 = load i32, i32* @jiffies, align 4
  %204 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %205 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %204, i32 0, i32 3
  %206 = load %struct.e1000_buffer*, %struct.e1000_buffer** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %206, i64 %208
  %210 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %213 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @HZ, align 4
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %211, %217
  %219 = call i64 @time_after(i32 %203, i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %202
  %222 = load i32, i32* @STATUS, align 4
  %223 = call i32 @er32(i32 %222)
  %224 = load i32, i32* @E1000_STATUS_TXOFF, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %221
  %228 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %229 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %228, i32 0, i32 5
  %230 = call i32 @schedule_work(i32* %229)
  br label %234

231:                                              ; preds = %221, %202, %190
  %232 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %233 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %232, i32 0, i32 2
  store i32 0, i32* %233, align 8
  br label %234

234:                                              ; preds = %231, %227
  br label %235

235:                                              ; preds = %234, %185
  %236 = load i32, i32* %12, align 4
  %237 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %238 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = add i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %13, align 4
  %242 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %243 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = add i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = load i32, i32* %11, align 4
  %247 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %248 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp ult i32 %246, %249
  %251 = zext i1 %250 to i32
  ret i32 %251
}

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @e1000_put_txbuf(%struct.e1000_ring*, %struct.e1000_buffer*, i32) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @e1000_desc_unused(%struct.e1000_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
