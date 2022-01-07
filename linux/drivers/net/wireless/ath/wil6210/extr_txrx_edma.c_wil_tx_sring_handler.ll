; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_sring_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_sring_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32**, i32, i32, %struct.TYPE_10__*, %struct.wil6210_vif**, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.TYPE_10__ = type { %struct.wil_net_stats }
%struct.wil_net_stats = type { i32, i32, i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil_ring_tx_data = type { i64, i32, i32 }
%struct.wil_ring = type { i64, %struct.TYPE_7__*, %struct.wil_ctx* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wil_ctx = type { %struct.sk_buff* }
%struct.sk_buff = type { i64, i64 }
%struct.wil_status_ring = type { i64, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.wil_tx_enhanced_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wil_ring_tx_status = type { i32, i32, i64 }
%union.wil_tx_desc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid num_descs 0\0A\00", align 1
@WIL6210_MAX_TX_RINGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid ring id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Tx irq[%d]: ring not initialized\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Tx irq[%d]: ring disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid MID %d for ring %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"tx_status: completed desc_ring (%d), num_descs (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"TxC[%2d][%3d] : %d bytes, status 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"TxS \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"Ring[%2d] idle %d -> %d\0A\00", align 1
@WIL_EDMA_TX_SRING_UPDATE_HW_TAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_tx_sring_handler(%struct.wil6210_priv* %0, %struct.wil_status_ring* %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.wil_status_ring*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wil_ring*, align 8
  %8 = alloca %struct.wil_ring_tx_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wil_net_stats*, align 8
  %12 = alloca %struct.wil_tx_enhanced_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.wil_ring_tx_status, align 8
  %19 = alloca %struct.wil6210_vif*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.wil_ctx*, align 8
  %23 = alloca %struct.wil_tx_enhanced_desc, align 4
  %24 = alloca %struct.wil_tx_enhanced_desc*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.sk_buff*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store %struct.wil_status_ring* %1, %struct.wil_status_ring** %4, align 8
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %28 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %27)
  store %struct.device* %28, %struct.device** %6, align 8
  store %struct.wil_ring* null, %struct.wil_ring** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %15, align 4
  %29 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %30 = call i32 @wil_get_next_tx_status_msg(%struct.wil_status_ring* %29, i64* %17, %struct.wil_ring_tx_status* %18)
  br label %31

31:                                               ; preds = %342, %2
  %32 = load i64, i64* %17, align 8
  %33 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %34 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %347

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.wil_ring_tx_status, %struct.wil_ring_tx_status* %18, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %44 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %326

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.wil_ring_tx_status, %struct.wil_ring_tx_status* %18, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %50 = icmp uge i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %326

58:                                               ; preds = %45
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %60 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %59, i32 0, i32 6
  %61 = load %struct.wil_ring*, %struct.wil_ring** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %61, i64 %63
  store %struct.wil_ring* %64, %struct.wil_ring** %7, align 8
  %65 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %66 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %58
  %74 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %326

77:                                               ; preds = %58
  %78 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %79 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %78, i32 0, i32 5
  %80 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %80, i64 %82
  store %struct.wil_ring_tx_data* %83, %struct.wil_ring_tx_data** %8, align 8
  %84 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %85 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @wil_info(%struct.wil6210_priv* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %326

96:                                               ; preds = %77
  %97 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %98 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %97, i32 0, i32 4
  %99 = load %struct.wil6210_vif**, %struct.wil6210_vif*** %98, align 8
  %100 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %101 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.wil6210_vif*, %struct.wil6210_vif** %99, i64 %102
  %104 = load %struct.wil6210_vif*, %struct.wil6210_vif** %103, align 8
  store %struct.wil6210_vif* %104, %struct.wil6210_vif** %19, align 8
  %105 = load %struct.wil6210_vif*, %struct.wil6210_vif** %19, align 8
  %106 = icmp ne %struct.wil6210_vif* %105, null
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %96
  %112 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %113 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %114 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (%struct.wil6210_priv*, i8*, i32, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117)
  br label %326

119:                                              ; preds = %96
  %120 = load %struct.wil6210_vif*, %struct.wil6210_vif** %19, align 8
  %121 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %120)
  store %struct.net_device* %121, %struct.net_device** %5, align 8
  %122 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %123 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %122, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %133 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %119
  %137 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %138 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %137, i32 0, i32 3
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  br label %145

144:                                              ; preds = %119
  br label %145

145:                                              ; preds = %144, %136
  %146 = phi %struct.wil_net_stats* [ %143, %136 ], [ null, %144 ]
  store %struct.wil_net_stats* %146, %struct.wil_net_stats** %11, align 8
  %147 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 (%struct.wil6210_priv*, i8*, i32, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %147, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %152 = call i32 @wil_ring_used_tx(%struct.wil_ring* %151)
  store i32 %152, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %153

153:                                              ; preds = %303, %145
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %306

157:                                              ; preds = %153
  %158 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %159 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %158, i32 0, i32 2
  %160 = load %struct.wil_ctx*, %struct.wil_ctx** %159, align 8
  %161 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %162 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %160, i64 %163
  store %struct.wil_ctx* %164, %struct.wil_ctx** %22, align 8
  store %struct.wil_tx_enhanced_desc* %23, %struct.wil_tx_enhanced_desc** %24, align 8
  %165 = load %struct.wil_ctx*, %struct.wil_ctx** %22, align 8
  %166 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %165, i32 0, i32 0
  %167 = load %struct.sk_buff*, %struct.sk_buff** %166, align 8
  store %struct.sk_buff* %167, %struct.sk_buff** %26, align 8
  %168 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %169 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %172 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = bitcast i32* %176 to %struct.wil_tx_enhanced_desc*
  store %struct.wil_tx_enhanced_desc* %177, %struct.wil_tx_enhanced_desc** %12, align 8
  %178 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %24, align 8
  %179 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %12, align 8
  %180 = bitcast %struct.wil_tx_enhanced_desc* %178 to i8*
  %181 = bitcast %struct.wil_tx_enhanced_desc* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 %181, i64 4, i1 false)
  %182 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %24, align 8
  %183 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @le16_to_cpu(i32 %185)
  store i32 %186, i32* %25, align 4
  %187 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %188 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %25, align 4
  %191 = call i32 @trace_wil6210_tx_status(%struct.wil_ring_tx_status* %18, i64 %189, i32 %190)
  %192 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %195 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* %25, align 4
  %199 = getelementptr inbounds %struct.wil_ring_tx_status, %struct.wil_ring_tx_status* %18, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = call i32 (%struct.wil6210_priv*, i8*, i32, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %192, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %193, i32 %197, i32 %198, i64 %200)
  %202 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %203 = bitcast %struct.wil_ring_tx_status* %18 to i8*
  %204 = call i32 @wil_hex_dump_txrx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 32, i32 4, i8* %203, i32 16, i32 0)
  %205 = load %struct.device*, %struct.device** %6, align 8
  %206 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %24, align 8
  %207 = bitcast %struct.wil_tx_enhanced_desc* %206 to %union.wil_tx_desc*
  %208 = load %struct.wil_ctx*, %struct.wil_ctx** %22, align 8
  %209 = call i32 @wil_tx_desc_unmap_edma(%struct.device* %205, %union.wil_tx_desc* %207, %struct.wil_ctx* %208)
  %210 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %211 = icmp ne %struct.sk_buff* %210, null
  br i1 %211, label %212, label %293

212:                                              ; preds = %157
  %213 = getelementptr inbounds %struct.wil_ring_tx_status, %struct.wil_ring_tx_status* %18, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i64 @likely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %261

219:                                              ; preds = %212
  %220 = load %struct.net_device*, %struct.net_device** %5, align 8
  %221 = getelementptr inbounds %struct.net_device, %struct.net_device* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  %225 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.net_device*, %struct.net_device** %5, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %227
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %230, align 4
  %235 = load %struct.wil_net_stats*, %struct.wil_net_stats** %11, align 8
  %236 = icmp ne %struct.wil_net_stats* %235, null
  br i1 %236, label %237, label %260

237:                                              ; preds = %219
  %238 = load %struct.wil_net_stats*, %struct.wil_net_stats** %11, align 8
  %239 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.wil_net_stats*, %struct.wil_net_stats** %11, align 8
  %246 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %244
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %246, align 4
  %251 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %253 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %254 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %253, i32 0, i32 3
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i64 %257
  %259 = call i32 @wil_tx_latency_calc(%struct.wil6210_priv* %251, %struct.sk_buff* %252, %struct.TYPE_10__* %258)
  br label %260

260:                                              ; preds = %237, %219
  br label %275

261:                                              ; preds = %212
  %262 = load %struct.net_device*, %struct.net_device** %5, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  %267 = load %struct.wil_net_stats*, %struct.wil_net_stats** %11, align 8
  %268 = icmp ne %struct.wil_net_stats* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %261
  %270 = load %struct.wil_net_stats*, %struct.wil_net_stats** %11, align 8
  %271 = getelementptr inbounds %struct.wil_net_stats, %struct.wil_net_stats* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %269, %261
  br label %275

275:                                              ; preds = %274, %260
  %276 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %277 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i32, i32* @ETH_P_PAE, align 4
  %280 = call i64 @cpu_to_be16(i32 %279)
  %281 = icmp eq i64 %278, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %275
  %283 = load %struct.wil6210_vif*, %struct.wil6210_vif** %19, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %285 = call i32 @wil_tx_complete_handle_eapol(%struct.wil6210_vif* %283, %struct.sk_buff* %284)
  br label %286

286:                                              ; preds = %282, %275
  %287 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %288 = getelementptr inbounds %struct.wil_ring_tx_status, %struct.wil_ring_tx_status* %18, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = icmp eq i64 %289, 0
  %291 = zext i1 %290 to i32
  %292 = call i32 @wil_consume_skb(%struct.sk_buff* %287, i32 %291)
  br label %293

293:                                              ; preds = %286, %157
  %294 = load %struct.wil_ctx*, %struct.wil_ctx** %22, align 8
  %295 = call i32 @memset(%struct.wil_ctx* %294, i32 0, i32 8)
  %296 = call i32 (...) @wmb()
  %297 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %298 = call i64 @wil_ring_next_tail(%struct.wil_ring* %297)
  %299 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %300 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  %301 = load i32, i32* %9, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %9, align 4
  br label %303

303:                                              ; preds = %293
  %304 = load i32, i32* %16, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %16, align 4
  br label %153

306:                                              ; preds = %153
  %307 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %308 = call i32 @wil_ring_used_tx(%struct.wil_ring* %307)
  store i32 %308, i32* %21, align 4
  %309 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %310 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %21, align 4
  %313 = load i32, i32* %20, align 4
  %314 = call i64 @wil_val_in_range(i32 %311, i32 %312, i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %306
  %317 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* %20, align 4
  %320 = load i32, i32* %21, align 4
  %321 = call i32 (%struct.wil6210_priv*, i8*, i32, i32, ...) @wil_dbg_txrx(%struct.wil6210_priv* %317, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %318, i32 %319, i32 %320)
  %322 = call i32 (...) @get_cycles()
  %323 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %324 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 8
  br label %325

325:                                              ; preds = %316, %306
  br label %326

326:                                              ; preds = %325, %111, %92, %73, %54, %42
  %327 = load i32, i32* %15, align 4
  %328 = add i32 %327, 1
  store i32 %328, i32* %15, align 4
  %329 = load i32, i32* %15, align 4
  %330 = load i32, i32* @WIL_EDMA_TX_SRING_UPDATE_HW_TAIL, align 4
  %331 = urem i32 %329, %330
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %326
  %334 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %335 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %336 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %339 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @wil_w(%struct.wil6210_priv* %334, i32 %337, i32 %340)
  br label %342

342:                                              ; preds = %333, %326
  %343 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %344 = call i32 @wil_sring_advance_swhead(%struct.wil_status_ring* %343)
  %345 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %346 = call i32 @wil_get_next_tx_status_msg(%struct.wil_status_ring* %345, i64* %17, %struct.wil_ring_tx_status* %18)
  br label %31

347:                                              ; preds = %31
  %348 = load i32, i32* %9, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %352 = load %struct.wil6210_vif*, %struct.wil6210_vif** %19, align 8
  %353 = call i32 @wil_update_net_queues(%struct.wil6210_priv* %351, %struct.wil6210_vif* %352, i32* null, i32 0)
  br label %354

354:                                              ; preds = %350, %347
  %355 = load i32, i32* %15, align 4
  %356 = load i32, i32* @WIL_EDMA_TX_SRING_UPDATE_HW_TAIL, align 4
  %357 = urem i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %373

359:                                              ; preds = %354
  %360 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %361 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %362 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %365 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = sub nsw i32 %366, 1
  %368 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %369 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 4
  %371 = srem i32 %367, %370
  %372 = call i32 @wil_w(%struct.wil6210_priv* %360, i32 %363, i32 %371)
  br label %373

373:                                              ; preds = %359, %354
  %374 = load i32, i32* %9, align 4
  ret i32 %374
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_get_next_tx_status_msg(%struct.wil_status_ring*, i64*, %struct.wil_ring_tx_status*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i32, i32, ...) #1

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_ring_used_tx(%struct.wil_ring*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_wil6210_tx_status(%struct.wil_ring_tx_status*, i64, i32) #1

declare dso_local i32 @wil_hex_dump_txrx(i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @wil_tx_desc_unmap_edma(%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wil_tx_latency_calc(%struct.wil6210_priv*, %struct.sk_buff*, %struct.TYPE_10__*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @wil_tx_complete_handle_eapol(%struct.wil6210_vif*, %struct.sk_buff*) #1

declare dso_local i32 @wil_consume_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.wil_ctx*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @wil_ring_next_tail(%struct.wil_ring*) #1

declare dso_local i64 @wil_val_in_range(i32, i32, i32) #1

declare dso_local i32 @get_cycles(...) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_sring_advance_swhead(%struct.wil_status_ring*) #1

declare dso_local i32 @wil_update_net_queues(%struct.wil6210_priv*, %struct.wil6210_vif*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
