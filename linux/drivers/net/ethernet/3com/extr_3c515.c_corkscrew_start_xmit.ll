; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.boom_tx_desc* }
%struct.boom_tx_desc = type { i32, i32, i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.corkscrew_private = type { i32, i32, i32, %struct.sk_buff*, i64, i32, %struct.boom_tx_desc*, %struct.sk_buff**, i64 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Trying to send a packet, Tx index %d.\0A\00", align 1
@DownStall = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@EL3_STATUS = common dso_local global i64 0, align 8
@CmdInProgress = common dso_local global i32 0, align 4
@DownListPtr = common dso_local global i64 0, align 8
@queued_packet = common dso_local global i32 0, align 4
@DownUnstall = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TX_FIFO = common dso_local global i64 0, align 8
@TxFree = common dso_local global i64 0, align 8
@SetTxThreshold = common dso_local global i32 0, align 4
@TxStatus = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: Tx error, status %2.2x.\0A\00", align 1
@TxReset = common dso_local global i32 0, align 4
@TxEnable = common dso_local global i32 0, align 4
@StartDMADown = common dso_local global i32 0, align 4
@Wn7_MasterAddr = common dso_local global i64 0, align 8
@Wn7_MasterLen = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @corkscrew_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corkscrew_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.corkscrew_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.boom_tx_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.corkscrew_private* @netdev_priv(%struct.net_device* %15)
  store %struct.corkscrew_private* %16, %struct.corkscrew_private** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @netif_stop_queue(%struct.net_device* %20)
  %22 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %23 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %219

26:                                               ; preds = %2
  %27 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %28 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TX_RING_SIZE, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %33 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %37, i32* %3, align 4
  br label %364

38:                                               ; preds = %26
  %39 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %40 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %45 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %44, i32 0, i32 6
  %46 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %45, align 8
  %47 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %48 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @TX_RING_SIZE, align 4
  %52 = srem i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %46, i64 %53
  store %struct.boom_tx_desc* %54, %struct.boom_tx_desc** %9, align 8
  br label %56

55:                                               ; preds = %38
  store %struct.boom_tx_desc* null, %struct.boom_tx_desc** %9, align 8
  br label %56

56:                                               ; preds = %55, %43
  %57 = load i32, i32* @corkscrew_debug, align 4
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %64 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = trunc i32 %65 to i16
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %62, i16 signext %66)
  br label %68

68:                                               ; preds = %59, %56
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %71 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %70, i32 0, i32 7
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %72, i64 %74
  store %struct.sk_buff* %69, %struct.sk_buff** %75, align 8
  %76 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %77 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %76, i32 0, i32 6
  %78 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %78, i64 %80
  %82 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %84, align 8
  %86 = call i32 @isa_virt_to_bus(%struct.boom_tx_desc* %85)
  %87 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %88 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %87, i32 0, i32 6
  %89 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %89, i64 %91
  %93 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, -2147483648
  %98 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %99 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %98, i32 0, i32 6
  %100 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %100, i64 %102
  %104 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %103, i32 0, i32 2
  store i32 %97, i32* %104, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, -2147483648
  %109 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %110 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %109, i32 0, i32 6
  %111 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %111, i64 %113
  %115 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %114, i32 0, i32 3
  store i32 %108, i32* %115, align 4
  %116 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %117 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %116, i32 0, i32 5
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load i32, i32* @DownStall, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @EL3_CMD, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @outw(i32 %120, i64 %124)
  store i32 20, i32* %11, align 4
  br label %126

126:                                              ; preds = %140, %68
  %127 = load i32, i32* %11, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* @EL3_STATUS, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @inw(i64 %133)
  %135 = load i32, i32* @CmdInProgress, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %143

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %11, align 4
  br label %126

143:                                              ; preds = %138, %126
  %144 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %9, align 8
  %145 = icmp ne %struct.boom_tx_desc* %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %148 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %147, i32 0, i32 6
  %149 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %149, i64 %151
  %153 = call i32 @isa_virt_to_bus(%struct.boom_tx_desc* %152)
  %154 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %9, align 8
  %155 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %146, %143
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* @DownListPtr, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i64 @inl(i64 %160)
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %156
  %164 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %165 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %164, i32 0, i32 6
  %166 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %166, i64 %168
  %170 = call i32 @isa_virt_to_bus(%struct.boom_tx_desc* %169)
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* @DownListPtr, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @outl(i32 %170, i64 %174)
  %176 = load i32, i32* @queued_packet, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* @queued_packet, align 4
  br label %178

178:                                              ; preds = %163, %156
  %179 = load i32, i32* @DownUnstall, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* @EL3_CMD, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @outw(i32 %179, i64 %183)
  %185 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %186 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %185, i32 0, i32 5
  %187 = load i64, i64* %10, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %190 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %194 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %197 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %195, %198
  %200 = load i32, i32* @TX_RING_SIZE, align 4
  %201 = sub nsw i32 %200, 1
  %202 = icmp sgt i32 %199, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %178
  %204 = load %struct.corkscrew_private*, %struct.corkscrew_private** %6, align 8
  %205 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  br label %217

206:                                              ; preds = %178
  %207 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %9, align 8
  %208 = icmp ne %struct.boom_tx_desc* %207, null
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %9, align 8
  %211 = getelementptr inbounds %struct.boom_tx_desc, %struct.boom_tx_desc* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 2147483647
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %209, %206
  %215 = load %struct.net_device*, %struct.net_device** %5, align 8
  %216 = call i32 @netif_wake_queue(%struct.net_device* %215)
  br label %217

217:                                              ; preds = %214, %203
  %218 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %218, i32* %3, align 4
  br label %364

219:                                              ; preds = %2
  %220 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* @TX_FIFO, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @outl(i32 %222, i64 %226)
  %228 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.net_device*, %struct.net_device** %5, align 8
  %232 = getelementptr inbounds %struct.net_device, %struct.net_device* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, %230
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* @TX_FIFO, align 8
  %239 = add nsw i64 %237, %238
  %240 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 1
  %242 = load %struct.boom_tx_desc*, %struct.boom_tx_desc** %241, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, 3
  %247 = ashr i32 %246, 2
  %248 = call i32 @outsl(i64 %239, %struct.boom_tx_desc* %242, i32 %247)
  %249 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %250 = call i32 @dev_kfree_skb(%struct.sk_buff* %249)
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* @TxFree, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @inw(i64 %254)
  %256 = icmp sgt i32 %255, 1536
  br i1 %256, label %257, label %260

257:                                              ; preds = %219
  %258 = load %struct.net_device*, %struct.net_device** %5, align 8
  %259 = call i32 @netif_wake_queue(%struct.net_device* %258)
  br label %268

260:                                              ; preds = %219
  %261 = load i32, i32* @SetTxThreshold, align 4
  %262 = add nsw i32 %261, 384
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* @EL3_CMD, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 @outw(i32 %262, i64 %266)
  br label %268

268:                                              ; preds = %260, %257
  store i32 4, i32* %13, align 4
  br label %269

269:                                              ; preds = %356, %268
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %13, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %269
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* @TxStatus, align 8
  %277 = add nsw i64 %275, %276
  %278 = call signext i16 @inb(i64 %277)
  store i16 %278, i16* %12, align 2
  %279 = sext i16 %278 to i32
  %280 = icmp sgt i32 %279, 0
  br label %281

281:                                              ; preds = %273, %269
  %282 = phi i1 [ false, %269 ], [ %280, %273 ]
  br i1 %282, label %283, label %362

283:                                              ; preds = %281
  %284 = load i16, i16* %12, align 2
  %285 = sext i16 %284 to i32
  %286 = and i32 %285, 60
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %356

288:                                              ; preds = %283
  %289 = load i32, i32* @corkscrew_debug, align 4
  %290 = icmp sgt i32 %289, 2
  br i1 %290, label %291, label %297

291:                                              ; preds = %288
  %292 = load %struct.net_device*, %struct.net_device** %5, align 8
  %293 = getelementptr inbounds %struct.net_device, %struct.net_device* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load i16, i16* %12, align 2
  %296 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %294, i16 signext %295)
  br label %297

297:                                              ; preds = %291, %288
  %298 = load i16, i16* %12, align 2
  %299 = sext i16 %298 to i32
  %300 = and i32 %299, 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %297
  %303 = load %struct.net_device*, %struct.net_device** %5, align 8
  %304 = getelementptr inbounds %struct.net_device, %struct.net_device* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %302, %297
  %309 = load i16, i16* %12, align 2
  %310 = sext i16 %309 to i32
  %311 = and i32 %310, 56
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %308
  %314 = load %struct.net_device*, %struct.net_device** %5, align 8
  %315 = getelementptr inbounds %struct.net_device, %struct.net_device* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %313, %308
  %320 = load i16, i16* %12, align 2
  %321 = sext i16 %320 to i32
  %322 = and i32 %321, 48
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %349

324:                                              ; preds = %319
  %325 = load i32, i32* @TxReset, align 4
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = load i64, i64* @EL3_CMD, align 8
  %329 = add nsw i64 %327, %328
  %330 = call i32 @outw(i32 %325, i64 %329)
  store i32 20, i32* %14, align 4
  br label %331

331:                                              ; preds = %345, %324
  %332 = load i32, i32* %14, align 4
  %333 = icmp sge i32 %332, 0
  br i1 %333, label %334, label %348

334:                                              ; preds = %331
  %335 = load i32, i32* %7, align 4
  %336 = sext i32 %335 to i64
  %337 = load i64, i64* @EL3_STATUS, align 8
  %338 = add nsw i64 %336, %337
  %339 = call i32 @inw(i64 %338)
  %340 = load i32, i32* @CmdInProgress, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %334
  br label %348

344:                                              ; preds = %334
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %14, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %14, align 4
  br label %331

348:                                              ; preds = %343, %331
  br label %349

349:                                              ; preds = %348, %319
  %350 = load i32, i32* @TxEnable, align 4
  %351 = load i32, i32* %7, align 4
  %352 = sext i32 %351 to i64
  %353 = load i64, i64* @EL3_CMD, align 8
  %354 = add nsw i64 %352, %353
  %355 = call i32 @outw(i32 %350, i64 %354)
  br label %356

356:                                              ; preds = %349, %283
  %357 = load i32, i32* %7, align 4
  %358 = sext i32 %357 to i64
  %359 = load i64, i64* @TxStatus, align 8
  %360 = add nsw i64 %358, %359
  %361 = call i32 @outb(i32 0, i64 %360)
  br label %269

362:                                              ; preds = %281
  %363 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %363, i32* %3, align 4
  br label %364

364:                                              ; preds = %362, %217, %36
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local %struct.corkscrew_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, i16 signext) #1

declare dso_local i32 @isa_virt_to_bus(%struct.boom_tx_desc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @outsl(i64, %struct.boom_tx_desc*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local signext i16 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
