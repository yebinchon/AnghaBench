; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_rx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_rx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.sk_buff* (%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i8*, i64*, i32, i32)*, %struct.net_device* }
%struct.sk_buff = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_rx_ring_info = type { i64, i64, %struct.bnxt_sw_rx_bd* }
%struct.bnxt_sw_rx_bd = type { i64*, i32, i32* }
%struct.net_device = type { i32 }
%struct.bnxt_cp_ring_info = type { i32, i32, i32**, %struct.bnxt_napi* }
%struct.bnxt_napi = type { %struct.TYPE_4__, %struct.bnxt_rx_ring_info* }
%struct.TYPE_4__ = type { i32 }
%struct.rx_cmp = type { i64, i32, i32, i32 }
%struct.rx_cmp_ext = type { i32, i32, i32 }
%struct.rx_agg_cmp = type { i32 }
%struct.rx_tpa_start_cmp = type { i32 }
%struct.rx_tpa_start_cmp_ext = type { i32 }
%struct.rx_tpa_end_cmp = type { i32 }
%struct.rx_tpa_end_cmp_ext = type { i32 }

@CMP_TYPE_RX_TPA_AGG_CMP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CMP_TYPE_RX_L2_TPA_START_CMP = common dso_local global i64 0, align 8
@BNXT_RX_EVENT = common dso_local global i64 0, align 8
@CMP_TYPE_RX_L2_TPA_END_CMP = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"RX cons %x != expected cons %x\0A\00", align 1
@RX_CMP_AGG_BUFS = common dso_local global i32 0, align 4
@RX_CMP_AGG_BUFS_SHIFT = common dso_local global i32 0, align 4
@BNXT_AGG_EVENT = common dso_local global i64 0, align 8
@RX_CMP_L2_ERRORS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RX_CMPL_ERRORS_BUFFER_ERROR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"RX buffer error %x\0A\00", align 1
@RX_CMP_LEN_SHIFT = common dso_local global i32 0, align 4
@RX_CMP_PAYLOAD_OFFSET = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@RX_CMP_FLAGS2_META_FORMAT_VLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@RX_CMP_FLAGS2_METADATA_TCI_MASK = common dso_local global i32 0, align 4
@RX_CMP_FLAGS2_METADATA_TPID_SFT = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@RX_CMP_L4_CS_ERR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, i64*)* @bnxt_rx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_rx_pkt(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.bnxt_napi*, align 8
  %11 = alloca %struct.bnxt_rx_ring_info*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.rx_cmp*, align 8
  %14 = alloca %struct.rx_cmp_ext*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.bnxt_sw_rx_bd*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.sk_buff*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %38 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %39 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %38, i32 0, i32 3
  %40 = load %struct.bnxt_napi*, %struct.bnxt_napi** %39, align 8
  store %struct.bnxt_napi* %40, %struct.bnxt_napi** %10, align 8
  %41 = load %struct.bnxt_napi*, %struct.bnxt_napi** %10, align 8
  %42 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %41, i32 0, i32 1
  %43 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %42, align 8
  store %struct.bnxt_rx_ring_info* %43, %struct.bnxt_rx_ring_info** %11, align 8
  %44 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %45 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %44, i32 0, i32 2
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  store %struct.net_device* %46, %struct.net_device** %12, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @RING_CMP(i32 %49)
  store i64 %50, i64* %19, align 8
  store i32 0, i32* %28, align 4
  %51 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %52 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* %19, align 8
  %55 = call i64 @CP_RING(i64 %54)
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %19, align 8
  %59 = call i64 @CP_IDX(i64 %58)
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = bitcast i32* %60 to %struct.rx_cmp*
  store %struct.rx_cmp* %61, %struct.rx_cmp** %13, align 8
  %62 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %63 = call i64 @RX_CMP_TYPE(%struct.rx_cmp* %62)
  store i64 %63, i64* %24, align 8
  %64 = load i64, i64* %24, align 8
  %65 = load i64, i64* @CMP_TYPE_RX_TPA_AGG_CMP, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %4
  %68 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %69 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %70 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %71 = bitcast %struct.rx_cmp* %70 to %struct.rx_agg_cmp*
  %72 = call i32 @bnxt_tpa_agg(%struct.bnxt* %68, %struct.bnxt_rx_ring_info* %69, %struct.rx_agg_cmp* %71)
  br label %503

73:                                               ; preds = %4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @NEXT_RAW_CMP(i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @RING_CMP(i32 %76)
  store i64 %77, i64* %19, align 8
  %78 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %79 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %78, i32 0, i32 2
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* %19, align 8
  %82 = call i64 @CP_RING(i64 %81)
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %19, align 8
  %86 = call i64 @CP_IDX(i64 %85)
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast i32* %87 to %struct.rx_cmp_ext*
  store %struct.rx_cmp_ext* %88, %struct.rx_cmp_ext** %14, align 8
  %89 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @RX_CMP_VALID(%struct.rx_cmp_ext* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %73
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %507

96:                                               ; preds = %73
  %97 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %98 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %18, align 8
  %100 = load i64, i64* %24, align 8
  %101 = load i64, i64* @CMP_TYPE_RX_L2_TPA_START_CMP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %105 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %106 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %107 = bitcast %struct.rx_cmp* %106 to %struct.rx_tpa_start_cmp*
  %108 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %109 = bitcast %struct.rx_cmp_ext* %108 to %struct.rx_tpa_start_cmp_ext*
  %110 = call i32 @bnxt_tpa_start(%struct.bnxt* %104, %struct.bnxt_rx_ring_info* %105, %struct.rx_tpa_start_cmp* %107, %struct.rx_tpa_start_cmp_ext* %109)
  %111 = load i64, i64* @BNXT_RX_EVENT, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = load i64, i64* %112, align 8
  %114 = or i64 %113, %111
  store i64 %114, i64* %112, align 8
  br label %503

115:                                              ; preds = %96
  %116 = load i64, i64* %24, align 8
  %117 = load i64, i64* @CMP_TYPE_RX_L2_TPA_END_CMP, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %115
  %120 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %121 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %122 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %123 = bitcast %struct.rx_cmp* %122 to %struct.rx_tpa_end_cmp*
  %124 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %125 = bitcast %struct.rx_cmp_ext* %124 to %struct.rx_tpa_end_cmp_ext*
  %126 = load i64*, i64** %9, align 8
  %127 = call %struct.sk_buff* @bnxt_tpa_end(%struct.bnxt* %120, %struct.bnxt_cp_ring_info* %121, i32* %15, %struct.rx_tpa_end_cmp* %123, %struct.rx_tpa_end_cmp_ext* %125, i64* %126)
  store %struct.sk_buff* %127, %struct.sk_buff** %26, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %129 = call i64 @IS_ERR(%struct.sk_buff* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %507

134:                                              ; preds = %119
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %28, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %138 = call i64 @likely(%struct.sk_buff* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %142 = load %struct.bnxt_napi*, %struct.bnxt_napi** %10, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %144 = call i32 @bnxt_deliver_skb(%struct.bnxt* %141, %struct.bnxt_napi* %142, %struct.sk_buff* %143)
  store i32 1, i32* %28, align 4
  br label %145

145:                                              ; preds = %140, %134
  %146 = load i64, i64* @BNXT_RX_EVENT, align 8
  %147 = load i64*, i64** %9, align 8
  %148 = load i64, i64* %147, align 8
  %149 = or i64 %148, %146
  store i64 %149, i64* %147, align 8
  br label %503

150:                                              ; preds = %115
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %153 = getelementptr inbounds %struct.rx_cmp, %struct.rx_cmp* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %17, align 8
  %155 = load i64, i64* %17, align 8
  %156 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %157 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %155, %158
  %160 = zext i1 %159 to i32
  %161 = call i64 @unlikely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %182

163:                                              ; preds = %151
  %164 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %165 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %168 = call i32 @bnxt_discard_rx(%struct.bnxt* %164, %struct.bnxt_cp_ring_info* %165, i32* %166, %struct.rx_cmp* %167)
  store i32 %168, i32* %30, align 4
  %169 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %170 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %169, i32 0, i32 2
  %171 = load %struct.net_device*, %struct.net_device** %170, align 8
  %172 = load i64, i64* %17, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %175 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_warn(%struct.net_device* %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %173, i64 %176)
  %178 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %179 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %180 = call i32 @bnxt_sched_reset(%struct.bnxt* %178, %struct.bnxt_rx_ring_info* %179)
  %181 = load i32, i32* %30, align 4
  store i32 %181, i32* %5, align 4
  br label %507

182:                                              ; preds = %151
  %183 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %184 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %183, i32 0, i32 2
  %185 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %184, align 8
  %186 = load i64, i64* %17, align 8
  %187 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %185, i64 %186
  store %struct.bnxt_sw_rx_bd* %187, %struct.bnxt_sw_rx_bd** %20, align 8
  %188 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %20, align 8
  %189 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = bitcast i32* %190 to i8*
  store i8* %191, i8** %27, align 8
  %192 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %20, align 8
  %193 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  store i64* %194, i64** %22, align 8
  %195 = load i64*, i64** %22, align 8
  %196 = call i32 @prefetch(i64* %195)
  %197 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %198 = getelementptr inbounds %struct.rx_cmp, %struct.rx_cmp* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @le32_to_cpu(i32 %199)
  store i32 %200, i32* %29, align 4
  %201 = load i32, i32* %29, align 4
  %202 = load i32, i32* @RX_CMP_AGG_BUFS, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* @RX_CMP_AGG_BUFS_SHIFT, align 4
  %205 = ashr i32 %203, %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %23, align 8
  %207 = load i64, i64* %23, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %225

209:                                              ; preds = %182
  %210 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %211 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %212 = load i64, i64* %23, align 8
  %213 = call i32 @bnxt_agg_bufs_valid(%struct.bnxt* %210, %struct.bnxt_cp_ring_info* %211, i64 %212, i32* %15)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %209
  %216 = load i32, i32* @EBUSY, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %5, align 4
  br label %507

218:                                              ; preds = %209
  %219 = load i64, i64* %19, align 8
  %220 = call i64 @NEXT_CMP(i64 %219)
  store i64 %220, i64* %19, align 8
  %221 = load i64, i64* @BNXT_AGG_EVENT, align 8
  %222 = load i64*, i64** %9, align 8
  %223 = load i64, i64* %222, align 8
  %224 = or i64 %223, %221
  store i64 %224, i64* %222, align 8
  br label %225

225:                                              ; preds = %218, %182
  %226 = load i64, i64* @BNXT_RX_EVENT, align 8
  %227 = load i64*, i64** %9, align 8
  %228 = load i64, i64* %227, align 8
  %229 = or i64 %228, %226
  store i64 %229, i64* %227, align 8
  %230 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %20, align 8
  %231 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %230, i32 0, i32 2
  store i32* null, i32** %231, align 8
  %232 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %233 = getelementptr inbounds %struct.rx_cmp_ext, %struct.rx_cmp_ext* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @RX_CMP_L2_ERRORS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %271

238:                                              ; preds = %225
  %239 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %240 = getelementptr inbounds %struct.rx_cmp_ext, %struct.rx_cmp_ext* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @le32_to_cpu(i32 %241)
  store i32 %242, i32* %31, align 4
  %243 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %244 = load i64, i64* %17, align 8
  %245 = load i8*, i8** %27, align 8
  %246 = call i32 @bnxt_reuse_rx_data(%struct.bnxt_rx_ring_info* %243, i64 %244, i8* %245)
  %247 = load i64, i64* %23, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %238
  %250 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %251 = load i64, i64* %19, align 8
  %252 = load i64, i64* %23, align 8
  %253 = call i32 @bnxt_reuse_rx_agg_bufs(%struct.bnxt_cp_ring_info* %250, i64 %251, i32 0, i64 %252, i32 0)
  br label %254

254:                                              ; preds = %249, %238
  %255 = load i32, i32* @EIO, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %28, align 4
  %257 = load i32, i32* %31, align 4
  %258 = load i32, i32* @RX_CMPL_ERRORS_BUFFER_ERROR_MASK, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %254
  %262 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %263 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %262, i32 0, i32 2
  %264 = load %struct.net_device*, %struct.net_device** %263, align 8
  %265 = load i32, i32* %31, align 4
  %266 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_warn(%struct.net_device* %264, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %265)
  %267 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %268 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %269 = call i32 @bnxt_sched_reset(%struct.bnxt* %267, %struct.bnxt_rx_ring_info* %268)
  br label %270

270:                                              ; preds = %261, %254
  br label %492

271:                                              ; preds = %225
  %272 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %273 = getelementptr inbounds %struct.rx_cmp, %struct.rx_cmp* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @le32_to_cpu(i32 %274)
  %276 = load i32, i32* @RX_CMP_LEN_SHIFT, align 4
  %277 = ashr i32 %275, %276
  store i32 %277, i32* %21, align 4
  %278 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %20, align 8
  %279 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  store i32 %280, i32* %25, align 4
  %281 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %282 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %283 = load i64, i64* %17, align 8
  %284 = load i8*, i8** %27, align 8
  %285 = load i64*, i64** %9, align 8
  %286 = call i64 @bnxt_rx_xdp(%struct.bnxt* %281, %struct.bnxt_rx_ring_info* %282, i64 %283, i8* %284, i64** %22, i32* %21, i64* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %271
  store i32 1, i32* %28, align 4
  br label %482

289:                                              ; preds = %271
  %290 = load i32, i32* %21, align 4
  %291 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %292 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp ule i32 %290, %293
  br i1 %294, label %295, label %319

295:                                              ; preds = %289
  %296 = load %struct.bnxt_napi*, %struct.bnxt_napi** %10, align 8
  %297 = load i64*, i64** %22, align 8
  %298 = load i32, i32* %21, align 4
  %299 = load i32, i32* %25, align 4
  %300 = call %struct.sk_buff* @bnxt_copy_skb(%struct.bnxt_napi* %296, i64* %297, i32 %298, i32 %299)
  store %struct.sk_buff* %300, %struct.sk_buff** %26, align 8
  %301 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %302 = load i64, i64* %17, align 8
  %303 = load i8*, i8** %27, align 8
  %304 = call i32 @bnxt_reuse_rx_data(%struct.bnxt_rx_ring_info* %301, i64 %302, i8* %303)
  %305 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %306 = icmp ne %struct.sk_buff* %305, null
  br i1 %306, label %318, label %307

307:                                              ; preds = %295
  %308 = load i64, i64* %23, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %312 = load i64, i64* %19, align 8
  %313 = load i64, i64* %23, align 8
  %314 = call i32 @bnxt_reuse_rx_agg_bufs(%struct.bnxt_cp_ring_info* %311, i64 %312, i32 0, i64 %313, i32 0)
  br label %315

315:                                              ; preds = %310, %307
  %316 = load i32, i32* @ENOMEM, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %28, align 4
  br label %482

318:                                              ; preds = %295
  br label %350

319:                                              ; preds = %289
  %320 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %20, align 8
  %321 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %320, i32 0, i32 0
  %322 = load i64*, i64** %321, align 8
  %323 = load i64*, i64** %22, align 8
  %324 = icmp eq i64* %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %319
  %326 = load i32, i32* %29, align 4
  %327 = load i32, i32* @RX_CMP_PAYLOAD_OFFSET, align 4
  %328 = and i32 %326, %327
  store i32 %328, i32* %32, align 4
  br label %330

329:                                              ; preds = %319
  store i32 0, i32* %32, align 4
  br label %330

330:                                              ; preds = %329, %325
  %331 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %332 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %331, i32 0, i32 1
  %333 = load %struct.sk_buff* (%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i8*, i64*, i32, i32)*, %struct.sk_buff* (%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i8*, i64*, i32, i32)** %332, align 8
  %334 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %335 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %336 = load i64, i64* %17, align 8
  %337 = load i8*, i8** %27, align 8
  %338 = load i64*, i64** %22, align 8
  %339 = load i32, i32* %25, align 4
  %340 = load i32, i32* %32, align 4
  %341 = load i32, i32* %21, align 4
  %342 = or i32 %340, %341
  %343 = call %struct.sk_buff* %333(%struct.bnxt* %334, %struct.bnxt_rx_ring_info* %335, i64 %336, i8* %337, i64* %338, i32 %339, i32 %342)
  store %struct.sk_buff* %343, %struct.sk_buff** %26, align 8
  %344 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %345 = icmp ne %struct.sk_buff* %344, null
  br i1 %345, label %349, label %346

346:                                              ; preds = %330
  %347 = load i32, i32* @ENOMEM, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %28, align 4
  br label %482

349:                                              ; preds = %330
  br label %350

350:                                              ; preds = %349, %318
  %351 = load i64, i64* %23, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %366

353:                                              ; preds = %350
  %354 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %355 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %356 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %357 = load i64, i64* %19, align 8
  %358 = load i64, i64* %23, align 8
  %359 = call %struct.sk_buff* @bnxt_rx_pages(%struct.bnxt* %354, %struct.bnxt_cp_ring_info* %355, %struct.sk_buff* %356, i64 %357, i64 %358, i32 0)
  store %struct.sk_buff* %359, %struct.sk_buff** %26, align 8
  %360 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %361 = icmp ne %struct.sk_buff* %360, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %353
  %363 = load i32, i32* @ENOMEM, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %28, align 4
  br label %482

365:                                              ; preds = %353
  br label %366

366:                                              ; preds = %365, %350
  %367 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %368 = call i64 @RX_CMP_HASH_VALID(%struct.rx_cmp* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %389

370:                                              ; preds = %366
  %371 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %372 = call i32 @RX_CMP_HASH_TYPE(%struct.rx_cmp* %371)
  store i32 %372, i32* %33, align 4
  %373 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  store i32 %373, i32* %34, align 4
  %374 = load i32, i32* %33, align 4
  %375 = icmp ne i32 %374, 1
  br i1 %375, label %376, label %381

376:                                              ; preds = %370
  %377 = load i32, i32* %33, align 4
  %378 = icmp ne i32 %377, 3
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  store i32 %380, i32* %34, align 4
  br label %381

381:                                              ; preds = %379, %376, %370
  %382 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %383 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %384 = getelementptr inbounds %struct.rx_cmp, %struct.rx_cmp* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @le32_to_cpu(i32 %385)
  %387 = load i32, i32* %34, align 4
  %388 = call i32 @skb_set_hash(%struct.sk_buff* %382, i32 %386, i32 %387)
  br label %389

389:                                              ; preds = %381, %366
  %390 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %391 = call i64 @RX_CMP_CFA_CODE(%struct.rx_cmp_ext* %390)
  store i64 %391, i64* %16, align 8
  %392 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %393 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %394 = load i64, i64* %16, align 8
  %395 = call i32 @bnxt_get_pkt_dev(%struct.bnxt* %393, i64 %394)
  %396 = call i32 @eth_type_trans(%struct.sk_buff* %392, i32 %395)
  %397 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %398 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %397, i32 0, i32 3
  store i32 %396, i32* %398, align 8
  %399 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %400 = getelementptr inbounds %struct.rx_cmp_ext, %struct.rx_cmp_ext* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @RX_CMP_FLAGS2_META_FORMAT_VLAN, align 4
  %403 = call i32 @cpu_to_le32(i32 %402)
  %404 = and i32 %401, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %433

406:                                              ; preds = %389
  %407 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %408 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %407, i32 0, i32 2
  %409 = load %struct.TYPE_3__*, %struct.TYPE_3__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %433

415:                                              ; preds = %406
  %416 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %417 = getelementptr inbounds %struct.rx_cmp_ext, %struct.rx_cmp_ext* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @le32_to_cpu(i32 %418)
  store i32 %419, i32* %35, align 4
  %420 = load i32, i32* %35, align 4
  %421 = load i32, i32* @RX_CMP_FLAGS2_METADATA_TCI_MASK, align 4
  %422 = and i32 %420, %421
  %423 = sext i32 %422 to i64
  store i64 %423, i64* %36, align 8
  %424 = load i32, i32* %35, align 4
  %425 = load i32, i32* @RX_CMP_FLAGS2_METADATA_TPID_SFT, align 4
  %426 = ashr i32 %424, %425
  %427 = sext i32 %426 to i64
  store i64 %427, i64* %37, align 8
  %428 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %429 = load i64, i64* %37, align 8
  %430 = call i32 @htons(i64 %429)
  %431 = load i64, i64* %36, align 8
  %432 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %428, i32 %430, i64 %431)
  br label %433

433:                                              ; preds = %415, %406, %389
  %434 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %435 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %434)
  %436 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %437 = call i64 @RX_CMP_L4_CS_OK(%struct.rx_cmp_ext* %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %455

439:                                              ; preds = %433
  %440 = load %struct.net_device*, %struct.net_device** %12, align 8
  %441 = getelementptr inbounds %struct.net_device, %struct.net_device* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %454

446:                                              ; preds = %439
  %447 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %448 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %449 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %448, i32 0, i32 1
  store i32 %447, i32* %449, align 4
  %450 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %451 = call i32 @RX_CMP_ENCAP(%struct.rx_cmp_ext* %450)
  %452 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %453 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %452, i32 0, i32 0
  store i32 %451, i32* %453, align 8
  br label %454

454:                                              ; preds = %446, %439
  br label %477

455:                                              ; preds = %433
  %456 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %14, align 8
  %457 = getelementptr inbounds %struct.rx_cmp_ext, %struct.rx_cmp_ext* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @RX_CMP_L4_CS_ERR_BITS, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %476

462:                                              ; preds = %455
  %463 = load %struct.net_device*, %struct.net_device** %12, align 8
  %464 = getelementptr inbounds %struct.net_device, %struct.net_device* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %462
  %470 = load %struct.bnxt_napi*, %struct.bnxt_napi** %10, align 8
  %471 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %472, align 8
  br label %475

475:                                              ; preds = %469, %462
  br label %476

476:                                              ; preds = %475, %455
  br label %477

477:                                              ; preds = %476, %454
  %478 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %479 = load %struct.bnxt_napi*, %struct.bnxt_napi** %10, align 8
  %480 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %481 = call i32 @bnxt_deliver_skb(%struct.bnxt* %478, %struct.bnxt_napi* %479, %struct.sk_buff* %480)
  store i32 1, i32* %28, align 4
  br label %482

482:                                              ; preds = %477, %362, %346, %315, %288
  %483 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %484 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %484, align 8
  %487 = load i32, i32* %21, align 4
  %488 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %489 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = add i32 %490, %487
  store i32 %491, i32* %489, align 4
  br label %492

492:                                              ; preds = %482, %270
  %493 = load i64, i64* %18, align 8
  %494 = call i8* @NEXT_RX(i64 %493)
  %495 = ptrtoint i8* %494 to i64
  %496 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %497 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %496, i32 0, i32 0
  store i64 %495, i64* %497, align 8
  %498 = load i64, i64* %17, align 8
  %499 = call i8* @NEXT_RX(i64 %498)
  %500 = ptrtoint i8* %499 to i64
  %501 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %502 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %501, i32 0, i32 1
  store i64 %500, i64* %502, align 8
  br label %503

503:                                              ; preds = %492, %145, %103, %67
  %504 = load i32, i32* %15, align 4
  %505 = load i32*, i32** %8, align 8
  store i32 %504, i32* %505, align 4
  %506 = load i32, i32* %28, align 4
  store i32 %506, i32* %5, align 4
  br label %507

507:                                              ; preds = %503, %215, %163, %131, %93
  %508 = load i32, i32* %5, align 4
  ret i32 %508
}

declare dso_local i64 @RING_CMP(i32) #1

declare dso_local i64 @CP_RING(i64) #1

declare dso_local i64 @CP_IDX(i64) #1

declare dso_local i64 @RX_CMP_TYPE(%struct.rx_cmp*) #1

declare dso_local i32 @bnxt_tpa_agg(%struct.bnxt*, %struct.bnxt_rx_ring_info*, %struct.rx_agg_cmp*) #1

declare dso_local i32 @NEXT_RAW_CMP(i32) #1

declare dso_local i32 @RX_CMP_VALID(%struct.rx_cmp_ext*, i32) #1

declare dso_local i32 @bnxt_tpa_start(%struct.bnxt*, %struct.bnxt_rx_ring_info*, %struct.rx_tpa_start_cmp*, %struct.rx_tpa_start_cmp_ext*) #1

declare dso_local %struct.sk_buff* @bnxt_tpa_end(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp_ext*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @bnxt_deliver_skb(%struct.bnxt*, %struct.bnxt_napi*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bnxt_discard_rx(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, %struct.rx_cmp*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @bnxt_sched_reset(%struct.bnxt*, %struct.bnxt_rx_ring_info*) #1

declare dso_local i32 @prefetch(i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bnxt_agg_bufs_valid(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i64, i32*) #1

declare dso_local i64 @NEXT_CMP(i64) #1

declare dso_local i32 @bnxt_reuse_rx_data(%struct.bnxt_rx_ring_info*, i64, i8*) #1

declare dso_local i32 @bnxt_reuse_rx_agg_bufs(%struct.bnxt_cp_ring_info*, i64, i32, i64, i32) #1

declare dso_local i64 @bnxt_rx_xdp(%struct.bnxt*, %struct.bnxt_rx_ring_info*, i64, i8*, i64**, i32*, i64*) #1

declare dso_local %struct.sk_buff* @bnxt_copy_skb(%struct.bnxt_napi*, i64*, i32, i32) #1

declare dso_local %struct.sk_buff* @bnxt_rx_pages(%struct.bnxt*, %struct.bnxt_cp_ring_info*, %struct.sk_buff*, i64, i64, i32) #1

declare dso_local i64 @RX_CMP_HASH_VALID(%struct.rx_cmp*) #1

declare dso_local i32 @RX_CMP_HASH_TYPE(%struct.rx_cmp*) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @RX_CMP_CFA_CODE(%struct.rx_cmp_ext*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @bnxt_get_pkt_dev(%struct.bnxt*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @RX_CMP_L4_CS_OK(%struct.rx_cmp_ext*) #1

declare dso_local i32 @RX_CMP_ENCAP(%struct.rx_cmp_ext*) #1

declare dso_local i8* @NEXT_RX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
