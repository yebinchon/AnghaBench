; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32**, i32, i32, %struct.TYPE_12__*, %struct.TYPE_9__, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.TYPE_12__ = type { %struct.wil_net_stats }
%struct.wil_net_stats = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*)* }
%struct.device = type opaque
%union.wil_tx_desc = type { i32 }
%struct.wil_ctx = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64, i64 }
%struct.wil_ring_tx_data = type { i32, i32 }
%struct.wil_ring = type { i64, i32, %struct.TYPE_8__*, %struct.wil_ctx* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.net_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.device.0 = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Tx irq[%d]: vring not initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Tx irq[%d]: vring disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"tx_complete: (%d)\0A\00", align 1
@TX_DMA_STATUS_DU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"TxC[%2d][%3d] : %d bytes, status 0x%02x err 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TxCD \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Ring[%2d] idle %d -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_tx_complete(%struct.wil6210_vif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.device.0*, align 8
  %9 = alloca %struct.wil_ring*, align 8
  %10 = alloca %struct.wil_ring_tx_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wil_net_stats*, align 8
  %14 = alloca %struct.vring_tx_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.wil_ctx*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.vring_tx_desc, align 8
  %21 = alloca %struct.vring_tx_desc*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.sk_buff*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  %24 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %25 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %24)
  store %struct.wil6210_priv* %25, %struct.wil6210_priv** %6, align 8
  %26 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %27 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %26)
  store %struct.net_device* %27, %struct.net_device** %7, align 8
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %29 = call %struct.device.0* @wil_to_dev(%struct.wil6210_priv* %28)
  store %struct.device.0* %29, %struct.device.0** %8, align 8
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %30, i32 0, i32 6
  %32 = load %struct.wil_ring*, %struct.wil_ring** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %32, i64 %34
  store %struct.wil_ring* %35, %struct.wil_ring** %9, align 8
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %37 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %36, i32 0, i32 5
  %38 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %38, i64 %40
  store %struct.wil_ring_tx_data* %41, %struct.wil_ring_tx_data** %10, align 8
  store i32 0, i32* %11, align 4
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %43 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  store %struct.wil_net_stats* null, %struct.wil_net_stats** %13, align 8
  %51 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %52 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %2
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @wil_err(%struct.wil6210_priv* %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %3, align 4
  br label %352

63:                                               ; preds = %2
  %64 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %10, align 8
  %65 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @wil_info(%struct.wil6210_priv* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 0, i32* %3, align 4
  br label %352

76:                                               ; preds = %63
  %77 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %81 = call i32 @wil_ring_used_tx(%struct.wil_ring* %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %84 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %89 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %88, i32 0, i32 3
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store %struct.wil_net_stats* %94, %struct.wil_net_stats** %13, align 8
  br label %95

95:                                               ; preds = %87, %76
  br label %96

96:                                               ; preds = %322, %95
  %97 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %98 = call i32 @wil_ring_is_empty(%struct.wil_ring* %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %323

101:                                              ; preds = %96
  %102 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %103 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %102, i32 0, i32 3
  %104 = load %struct.wil_ctx*, %struct.wil_ctx** %103, align 8
  %105 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %106 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %104, i64 %107
  store %struct.wil_ctx* %108, %struct.wil_ctx** %18, align 8
  %109 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %110 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.wil_ctx*, %struct.wil_ctx** %18, align 8
  %113 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add i64 %111, %115
  %117 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %118 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = urem i64 %116, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %19, align 4
  %123 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %124 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %123, i32 0, i32 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store %struct.vring_tx_desc* %130, %struct.vring_tx_desc** %14, align 8
  %131 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %14, align 8
  %132 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load volatile i32, i32* %133, align 8
  %135 = load i32, i32* @TX_DMA_STATUS_DU, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %101
  br label %323

143:                                              ; preds = %101
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  %146 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %147 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = srem i32 %145, %148
  store i32 %149, i32* %17, align 4
  br label %150

150:                                              ; preds = %312, %143
  %151 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %152 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp ne i64 %153, %155
  br i1 %156, label %157, label %322

157:                                              ; preds = %150
  store %struct.vring_tx_desc* %20, %struct.vring_tx_desc** %21, align 8
  %158 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %159 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %158, i32 0, i32 3
  %160 = load %struct.wil_ctx*, %struct.wil_ctx** %159, align 8
  %161 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %162 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %160, i64 %163
  store %struct.wil_ctx* %164, %struct.wil_ctx** %18, align 8
  %165 = load %struct.wil_ctx*, %struct.wil_ctx** %18, align 8
  %166 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %165, i32 0, i32 1
  %167 = load %struct.sk_buff*, %struct.sk_buff** %166, align 8
  store %struct.sk_buff* %167, %struct.sk_buff** %23, align 8
  %168 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %169 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %168, i32 0, i32 2
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %172 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  store %struct.vring_tx_desc* %176, %struct.vring_tx_desc** %14, align 8
  %177 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %178 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %14, align 8
  %179 = bitcast %struct.vring_tx_desc* %177 to i8*
  %180 = bitcast %struct.vring_tx_desc* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 24, i1 true)
  %181 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %182 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @le16_to_cpu(i32 %184)
  store i32 %185, i32* %22, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %188 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %22, align 4
  %191 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %192 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @trace_wil6210_tx_done(i32 %186, i64 %189, i32 %190, i64 %194)
  %196 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %199 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %22, align 4
  %202 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %203 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %207 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %196, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %197, i64 %200, i32 %201, i32 %205, i64 %209)
  %211 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %212 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %213 = bitcast %struct.vring_tx_desc* %212 to i8*
  %214 = call i32 @wil_hex_dump_txrx(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %211, i32 32, i32 4, i8* %213, i32 24, i32 0)
  %215 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %216 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32 (%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*)*, i32 (%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*)** %217, align 8
  %219 = load %struct.device.0*, %struct.device.0** %8, align 8
  %220 = bitcast %struct.device.0* %219 to %struct.device*
  %221 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %222 = bitcast %struct.vring_tx_desc* %221 to %union.wil_tx_desc*
  %223 = load %struct.wil_ctx*, %struct.wil_ctx** %18, align 8
  %224 = call i32 %218(%struct.device* %220, %union.wil_tx_desc* %222, %struct.wil_ctx* %223)
  %225 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %226 = icmp ne %struct.sk_buff* %225, null
  br i1 %226, label %227, label %312

227:                                              ; preds = %157
  %228 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %229 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i64 @likely(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %278

236:                                              ; preds = %227
  %237 = load %struct.net_device*, %struct.net_device** %7, align 8
  %238 = getelementptr inbounds %struct.net_device, %struct.net_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.net_device*, %struct.net_device** %7, align 8
  %246 = getelementptr inbounds %struct.net_device, %struct.net_device* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %244
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %247, align 4
  %252 = load %struct.wil_net_stats*, %struct.wil_net_stats** %13, align 8
  %253 = icmp ne %struct.wil_net_stats* %252, null
  br i1 %253, label %254, label %277

254:                                              ; preds = %236
  %255 = load %struct.wil_net_stats*, %struct.wil_net_stats** %13, align 8
  %256 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  %259 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %260 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.wil_net_stats*, %struct.wil_net_stats** %13, align 8
  %263 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %261
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %263, align 4
  %268 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %269 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %270 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %271 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %270, i32 0, i32 3
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = call i32 @wil_tx_latency_calc(%struct.wil6210_priv* %268, %struct.sk_buff* %269, %struct.TYPE_12__* %275)
  br label %277

277:                                              ; preds = %254, %236
  br label %292

278:                                              ; preds = %227
  %279 = load %struct.net_device*, %struct.net_device** %7, align 8
  %280 = getelementptr inbounds %struct.net_device, %struct.net_device* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 4
  %284 = load %struct.wil_net_stats*, %struct.wil_net_stats** %13, align 8
  %285 = icmp ne %struct.wil_net_stats* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %278
  %287 = load %struct.wil_net_stats*, %struct.wil_net_stats** %13, align 8
  %288 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %286, %278
  br label %292

292:                                              ; preds = %291, %277
  %293 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %294 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* @ETH_P_PAE, align 4
  %297 = call i64 @cpu_to_be16(i32 %296)
  %298 = icmp eq i64 %295, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %292
  %300 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %301 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %302 = call i32 @wil_tx_complete_handle_eapol(%struct.wil6210_vif* %300, %struct.sk_buff* %301)
  br label %303

303:                                              ; preds = %299, %292
  %304 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %305 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %21, align 8
  %306 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp eq i64 %308, 0
  %310 = zext i1 %309 to i32
  %311 = call i32 @wil_consume_skb(%struct.sk_buff* %304, i32 %310)
  br label %312

312:                                              ; preds = %303, %157
  %313 = load %struct.wil_ctx*, %struct.wil_ctx** %18, align 8
  %314 = call i32 @memset(%struct.wil_ctx* %313, i32 0, i32 16)
  %315 = call i32 (...) @wmb()
  %316 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %317 = call i64 @wil_ring_next_tail(%struct.wil_ring* %316)
  %318 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %319 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %318, i32 0, i32 0
  store i64 %317, i64* %319, align 8
  %320 = load i32, i32* %11, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %11, align 4
  br label %150

322:                                              ; preds = %150
  br label %96

323:                                              ; preds = %142, %96
  %324 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %325 = call i32 @wil_ring_used_tx(%struct.wil_ring* %324)
  store i32 %325, i32* %16, align 4
  %326 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %327 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %15, align 4
  %331 = call i64 @wil_val_in_range(i32 %328, i32 %329, i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %323
  %334 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* %15, align 4
  %337 = load i32, i32* %16, align 4
  %338 = call i32 (%struct.wil6210_priv*, i8*, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %334, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %335, i32 %336, i32 %337)
  %339 = call i32 (...) @get_cycles()
  %340 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %10, align 8
  %341 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %340, i32 0, i32 0
  store i32 %339, i32* %341, align 4
  br label %342

342:                                              ; preds = %333, %323
  %343 = load i32, i32* %11, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %342
  %346 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %347 = load %struct.wil6210_vif*, %struct.wil6210_vif** %4, align 8
  %348 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %349 = call i32 @wil_update_net_queues(%struct.wil6210_priv* %346, %struct.wil6210_vif* %347, %struct.wil_ring* %348, i32 0)
  br label %350

350:                                              ; preds = %345, %342
  %351 = load i32, i32* %11, align 4
  store i32 %351, i32* %3, align 4
  br label %352

352:                                              ; preds = %350, %72, %59
  %353 = load i32, i32* %3, align 4
  ret i32 %353
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local %struct.device.0* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i32, ...) #1

declare dso_local i32 @wil_ring_used_tx(%struct.wil_ring*) #1

declare dso_local i32 @wil_ring_is_empty(%struct.wil_ring*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_wil6210_tx_done(i32, i64, i32, i64) #1

declare dso_local i32 @wil_hex_dump_txrx(i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wil_tx_latency_calc(%struct.wil6210_priv*, %struct.sk_buff*, %struct.TYPE_12__*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @wil_tx_complete_handle_eapol(%struct.wil6210_vif*, %struct.sk_buff*) #1

declare dso_local i32 @wil_consume_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.wil_ctx*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @wil_ring_next_tail(%struct.wil_ring*) #1

declare dso_local i64 @wil_val_in_range(i32, i32, i32) #1

declare dso_local i32 @get_cycles(...) #1

declare dso_local i32 @wil_update_net_queues(%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.wil_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
