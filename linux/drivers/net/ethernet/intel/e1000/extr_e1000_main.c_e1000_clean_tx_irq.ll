; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.e1000_tx_ring*, i32, i32, %struct.net_device*, %struct.e1000_hw }
%struct.net_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.e1000_hw = type { i64 }
%struct.e1000_tx_ring = type { i32, i32, %struct.e1000_tx_buffer*, i32, i64, i64 }
%struct.e1000_tx_buffer = type { i32, i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.e1000_tx_desc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@E1000_TXD_STAT_DD = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_TXOFF = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [305 x i8] c"Detected Tx Unit Hang\0A  Tx Queue             <%lu>\0A  TDH                  <%x>\0A  TDT                  <%x>\0A  next_to_use          <%x>\0A  next_to_clean        <%x>\0Abuffer_info[next_to_clean]\0A  time_stamp           <%lx>\0A  next_to_watch        <%x>\0A  jiffies              <%lx>\0A  next_to_watch.status <%x>\0A\00", align 1
@TX_WAKE_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.e1000_tx_ring*)* @e1000_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_tx_irq(%struct.e1000_adapter* %0, %struct.e1000_tx_ring* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_tx_ring*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.e1000_tx_desc*, align 8
  %8 = alloca %struct.e1000_tx_desc*, align 8
  %9 = alloca %struct.e1000_tx_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store %struct.e1000_tx_ring* %1, %struct.e1000_tx_ring** %4, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 8
  store %struct.e1000_hw* %19, %struct.e1000_hw** %5, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 7
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %26, i32 0, i32 2
  %28 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %28, i64 %30
  %32 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %34, i32 %35)
  store %struct.e1000_tx_desc* %36, %struct.e1000_tx_desc** %8, align 8
  br label %37

37:                                               ; preds = %129, %2
  %38 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %8, align 8
  %39 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br label %52

52:                                               ; preds = %46, %37
  %53 = phi i1 [ false, %37 ], [ %51, %46 ]
  br i1 %53, label %54, label %141

54:                                               ; preds = %52
  store i32 0, i32* %17, align 4
  %55 = call i32 (...) @dma_rmb()
  br label %56

56:                                               ; preds = %126, %54
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %129

60:                                               ; preds = %56
  %61 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %61, i32 %62)
  store %struct.e1000_tx_desc* %63, %struct.e1000_tx_desc** %7, align 8
  %64 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %64, i32 0, i32 2
  %66 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %66, i64 %68
  store %struct.e1000_tx_buffer* %69, %struct.e1000_tx_buffer** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %60
  %77 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %9, align 8
  %78 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %14, align 4
  %84 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %9, align 8
  %85 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %9, align 8
  %92 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %91, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %76
  %96 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %9, align 8
  %97 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %95, %76
  br label %108

108:                                              ; preds = %107, %60
  %109 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %110 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %9, align 8
  %111 = call i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter* %109, %struct.e1000_tx_buffer* %110)
  %112 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %7, align 8
  %113 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %118 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %116, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %124, %108
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %56

129:                                              ; preds = %56
  %130 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %131 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %130, i32 0, i32 2
  %132 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %132, i64 %134
  %136 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %11, align 4
  %138 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %138, i32 %139)
  store %struct.e1000_tx_desc* %140, %struct.e1000_tx_desc** %8, align 8
  br label %37

141:                                              ; preds = %52
  %142 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %143 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %142, i32 0, i32 0
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @smp_store_release(i32* %143, i32 %144)
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @netdev_completed_queue(%struct.net_device* %146, i32 %147, i32 %148)
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %141
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = call i64 @netif_carrier_ok(%struct.net_device* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %158 = call i64 @E1000_DESC_UNUSED(%struct.e1000_tx_ring* %157)
  %159 = icmp sge i64 %158, 32
  br label %160

160:                                              ; preds = %156, %152, %141
  %161 = phi i1 [ false, %152 ], [ false, %141 ], [ %159, %156 ]
  %162 = zext i1 %161 to i32
  %163 = call i64 @unlikely(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %160
  %166 = call i32 (...) @smp_mb()
  %167 = load %struct.net_device*, %struct.net_device** %6, align 8
  %168 = call i64 @netif_queue_stopped(%struct.net_device* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = load i32, i32* @__E1000_DOWN, align 4
  %172 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %172, i32 0, i32 6
  %174 = call i32 @test_bit(i32 %171, i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %170
  %177 = load %struct.net_device*, %struct.net_device** %6, align 8
  %178 = call i32 @netif_wake_queue(%struct.net_device* %177)
  %179 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %180 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %176, %170, %165
  br label %184

184:                                              ; preds = %183, %160
  %185 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %186 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %279

189:                                              ; preds = %184
  %190 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %191 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %193 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %192, i32 0, i32 2
  %194 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %194, i64 %196
  %198 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %278

201:                                              ; preds = %189
  %202 = load i32, i32* @jiffies, align 4
  %203 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %204 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %203, i32 0, i32 2
  %205 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %205, i64 %207
  %209 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %212 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @HZ, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %210, %216
  %218 = call i64 @time_after(i32 %202, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %278

220:                                              ; preds = %201
  %221 = load i32, i32* @STATUS, align 4
  %222 = call i32 @er32(i32 %221)
  %223 = load i32, i32* @E1000_STATUS_TXOFF, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %278, label %226

226:                                              ; preds = %220
  %227 = load i32, i32* @drv, align 4
  %228 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %229 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %230 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %229, i32 0, i32 4
  %231 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %230, align 8
  %232 = ptrtoint %struct.e1000_tx_ring* %228 to i64
  %233 = ptrtoint %struct.e1000_tx_ring* %231 to i64
  %234 = sub i64 %232, %233
  %235 = sdiv exact i64 %234, 40
  %236 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %237 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %240 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %238, %241
  %243 = call i32 @readl(i64 %242)
  %244 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %245 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %248 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %246, %249
  %251 = call i32 @readl(i64 %250)
  %252 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %253 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %256 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %259 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %258, i32 0, i32 2
  %260 = load %struct.e1000_tx_buffer*, %struct.e1000_tx_buffer** %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %260, i64 %262
  %264 = getelementptr inbounds %struct.e1000_tx_buffer, %struct.e1000_tx_buffer* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* @jiffies, align 4
  %268 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %8, align 8
  %269 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @e_err(i32 %227, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str, i64 0, i64 0), i64 %235, i32 %243, i32 %251, i32 %254, i32 %257, i64 %265, i32 %266, i32 %267, i32 %272)
  %274 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %275 = call i32 @e1000_dump(%struct.e1000_adapter* %274)
  %276 = load %struct.net_device*, %struct.net_device** %6, align 8
  %277 = call i32 @netif_stop_queue(%struct.net_device* %276)
  br label %278

278:                                              ; preds = %226, %220, %201, %189
  br label %279

279:                                              ; preds = %278, %184
  %280 = load i32, i32* %13, align 4
  %281 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %282 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = add i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %287 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.net_device*, %struct.net_device** %6, align 8
  %292 = getelementptr inbounds %struct.net_device, %struct.net_device* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, %290
  store i32 %295, i32* %293, align 4
  %296 = load i32, i32* %14, align 4
  %297 = load %struct.net_device*, %struct.net_device** %6, align 8
  %298 = getelementptr inbounds %struct.net_device, %struct.net_device* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = add i32 %300, %296
  store i32 %301, i32* %299, align 4
  %302 = load i32, i32* %12, align 4
  %303 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %304 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = icmp ult i32 %302, %305
  %307 = zext i1 %306 to i32
  ret i32 %307
}

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter*, %struct.e1000_tx_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @E1000_DESC_UNUSED(%struct.e1000_tx_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_err(i32, i8*, i64, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @e1000_dump(%struct.e1000_adapter*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
