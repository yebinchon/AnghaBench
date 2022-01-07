; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_tpa_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_tpa_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_cp_ring_info = type { %struct.bnxt_napi* }
%struct.bnxt_napi = type { i32, %struct.bnxt_rx_ring_info* }
%struct.bnxt_rx_ring_info = type { %struct.bnxt_tpa_info* }
%struct.bnxt_tpa_info = type { i64, i64*, i64*, i32, i64, i32, i64, i32, i32, i32 }
%struct.rx_tpa_end_cmp = type { i32 }
%struct.rx_tpa_end_cmp_ext = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TPA end agg_buf %d != expected agg_bufs %d\0A\00", align 1
@BNXT_AGG_EVENT = common dso_local global i64 0, align 8
@BNXT_FLAG_GRO = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"TPA frags %d exceeded MAX_SKB_FRAGS %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_ATTR_WEAK_ORDERING = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_NONE = common dso_local global i64 0, align 8
@RX_CMP_FLAGS2_META_FORMAT_VLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@RX_CMP_FLAGS2_METADATA_TPID_SFT = common dso_local global i64 0, align 8
@RX_CMP_FLAGS2_METADATA_TCI_MASK = common dso_local global i64 0, align 8
@RX_TPA_START_CMP_FLAGS2_L4_CS_CALC = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@RX_CMP_FLAGS2_T_L4_CS_CALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp_ext*, i64*)* @bnxt_tpa_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @bnxt_tpa_end(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32* %2, %struct.rx_tpa_end_cmp* %3, %struct.rx_tpa_end_cmp_ext* %4, i64* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.bnxt*, align 8
  %9 = alloca %struct.bnxt_cp_ring_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rx_tpa_end_cmp*, align 8
  %12 = alloca %struct.rx_tpa_end_cmp_ext*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.bnxt_napi*, align 8
  %15 = alloca %struct.bnxt_rx_ring_info*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.bnxt_tpa_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %8, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.rx_tpa_end_cmp* %3, %struct.rx_tpa_end_cmp** %11, align 8
  store %struct.rx_tpa_end_cmp_ext* %4, %struct.rx_tpa_end_cmp_ext** %12, align 8
  store i64* %5, i64** %13, align 8
  %31 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %32 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %31, i32 0, i32 0
  %33 = load %struct.bnxt_napi*, %struct.bnxt_napi** %32, align 8
  store %struct.bnxt_napi* %33, %struct.bnxt_napi** %14, align 8
  %34 = load %struct.bnxt_napi*, %struct.bnxt_napi** %14, align 8
  %35 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %34, i32 0, i32 1
  %36 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %35, align 8
  store %struct.bnxt_rx_ring_info* %36, %struct.bnxt_rx_ring_info** %15, align 8
  store i64 0, i64* %22, align 8
  %37 = load %struct.bnxt_napi*, %struct.bnxt_napi** %14, align 8
  %38 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %6
  %43 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %44 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp** %11, align 8
  %47 = call i32 @bnxt_discard_rx(%struct.bnxt* %43, %struct.bnxt_cp_ring_info* %44, i32* %45, %struct.rx_tpa_end_cmp* %46)
  store i32 %47, i32* %26, align 4
  %48 = load i32, i32* %26, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.sk_buff* @ERR_PTR(i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %7, align 8
  br label %384

54:                                               ; preds = %42
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %384

55:                                               ; preds = %6
  %56 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %57 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %116

62:                                               ; preds = %55
  %63 = load %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp** %11, align 8
  %64 = call i64 @TPA_END_AGG_ID_P5(%struct.rx_tpa_end_cmp* %63)
  store i64 %64, i64* %23, align 8
  %65 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %15, align 8
  %66 = load i64, i64* %23, align 8
  %67 = call i64 @bnxt_lookup_agg_idx(%struct.bnxt_rx_ring_info* %65, i64 %66)
  store i64 %67, i64* %23, align 8
  %68 = load %struct.rx_tpa_end_cmp_ext*, %struct.rx_tpa_end_cmp_ext** %12, align 8
  %69 = call i64 @TPA_END_AGG_BUFS_P5(%struct.rx_tpa_end_cmp_ext* %68)
  store i64 %69, i64* %17, align 8
  %70 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %15, align 8
  %71 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %70, i32 0, i32 0
  %72 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %71, align 8
  %73 = load i64, i64* %23, align 8
  %74 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %72, i64 %73
  store %struct.bnxt_tpa_info* %74, %struct.bnxt_tpa_info** %19, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %77 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %62
  %84 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %85 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %89 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @netdev_warn(i32 %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %87, i32 %91)
  %93 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %94 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %17, align 8
  br label %96

96:                                               ; preds = %83, %62
  %97 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %98 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* @BNXT_AGG_EVENT, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = load i64, i64* %100, align 8
  %102 = or i64 %101, %99
  store i64 %102, i64* %100, align 8
  %103 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %15, align 8
  %104 = load i64, i64* %23, align 8
  %105 = call i32 @bnxt_free_agg_idx(%struct.bnxt_rx_ring_info* %103, i64 %104)
  %106 = load i64, i64* %23, align 8
  store i64 %106, i64* %22, align 8
  %107 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %108 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BNXT_FLAG_GRO, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %25, align 4
  br label %156

116:                                              ; preds = %55
  %117 = load %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp** %11, align 8
  %118 = call i64 @TPA_END_AGG_ID(%struct.rx_tpa_end_cmp* %117)
  store i64 %118, i64* %23, align 8
  %119 = load %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp** %11, align 8
  %120 = call i64 @TPA_END_AGG_BUFS(%struct.rx_tpa_end_cmp* %119)
  store i64 %120, i64* %17, align 8
  %121 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %15, align 8
  %122 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %121, i32 0, i32 0
  %123 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %122, align 8
  %124 = load i64, i64* %23, align 8
  %125 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %123, i64 %124
  store %struct.bnxt_tpa_info* %125, %struct.bnxt_tpa_info** %19, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @RING_CMP(i32 %127)
  store i64 %128, i64* %22, align 8
  %129 = load i64, i64* %17, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %116
  %132 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %133 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %134 = load i64, i64* %17, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @bnxt_agg_bufs_valid(%struct.bnxt* %132, %struct.bnxt_cp_ring_info* %133, i64 %134, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @EBUSY, align 4
  %140 = sub nsw i32 0, %139
  %141 = call %struct.sk_buff* @ERR_PTR(i32 %140)
  store %struct.sk_buff* %141, %struct.sk_buff** %7, align 8
  br label %384

142:                                              ; preds = %131
  %143 = load i64, i64* @BNXT_AGG_EVENT, align 8
  %144 = load i64*, i64** %13, align 8
  %145 = load i64, i64* %144, align 8
  %146 = or i64 %145, %143
  store i64 %146, i64* %144, align 8
  %147 = load i64, i64* %22, align 8
  %148 = call i64 @NEXT_CMP(i64 %147)
  store i64 %148, i64* %22, align 8
  br label %149

149:                                              ; preds = %142, %116
  %150 = load %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp** %11, align 8
  %151 = call i32 @TPA_END_GRO(%struct.rx_tpa_end_cmp* %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %25, align 4
  br label %156

156:                                              ; preds = %149, %96
  %157 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %158 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = bitcast i64* %159 to i8*
  store i8* %160, i8** %24, align 8
  %161 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %162 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %161, i32 0, i32 2
  %163 = load i64*, i64** %162, align 8
  store i64* %163, i64** %16, align 8
  %164 = load i64*, i64** %16, align 8
  %165 = call i32 @prefetch(i64* %164)
  %166 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %167 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %18, align 4
  %169 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %170 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %20, align 4
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %174 = icmp sgt i64 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %156
  %176 = load %struct.rx_tpa_end_cmp_ext*, %struct.rx_tpa_end_cmp_ext** %12, align 8
  %177 = call i64 @TPA_END_ERRORS(%struct.rx_tpa_end_cmp_ext* %176)
  %178 = icmp ne i64 %177, 0
  br label %179

179:                                              ; preds = %175, %156
  %180 = phi i1 [ true, %156 ], [ %178, %175 ]
  %181 = zext i1 %180 to i32
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %179
  %185 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %186 = load i64, i64* %22, align 8
  %187 = load i64, i64* %17, align 8
  %188 = call i32 @bnxt_abort_tpa(%struct.bnxt_cp_ring_info* %185, i64 %186, i64 %187)
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %191 = icmp sgt i64 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %184
  %193 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %194 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load i64, i64* %17, align 8
  %197 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @netdev_warn(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %196, i32 %198)
  br label %200

200:                                              ; preds = %192, %184
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %384

201:                                              ; preds = %179
  %202 = load i32, i32* %18, align 4
  %203 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %204 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ule i32 %202, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %201
  %208 = load %struct.bnxt_napi*, %struct.bnxt_napi** %14, align 8
  %209 = load i64*, i64** %16, align 8
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* %20, align 4
  %212 = call %struct.sk_buff* @bnxt_copy_skb(%struct.bnxt_napi* %208, i64* %209, i32 %210, i32 %211)
  store %struct.sk_buff* %212, %struct.sk_buff** %21, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %214 = icmp ne %struct.sk_buff* %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %207
  %216 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %217 = load i64, i64* %22, align 8
  %218 = load i64, i64* %17, align 8
  %219 = call i32 @bnxt_abort_tpa(%struct.bnxt_cp_ring_info* %216, i64 %217, i64 %218)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %384

220:                                              ; preds = %207
  br label %280

221:                                              ; preds = %201
  %222 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %223 = load i32, i32* @GFP_ATOMIC, align 4
  %224 = call i64* @__bnxt_alloc_rx_data(%struct.bnxt* %222, i32* %28, i32 %223)
  store i64* %224, i64** %27, align 8
  %225 = load i64*, i64** %27, align 8
  %226 = icmp ne i64* %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %221
  %228 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %229 = load i64, i64* %22, align 8
  %230 = load i64, i64* %17, align 8
  %231 = call i32 @bnxt_abort_tpa(%struct.bnxt_cp_ring_info* %228, i64 %229, i64 %230)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %384

232:                                              ; preds = %221
  %233 = load i64*, i64** %27, align 8
  %234 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %235 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %234, i32 0, i32 1
  store i64* %233, i64** %235, align 8
  %236 = load i64*, i64** %27, align 8
  %237 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %238 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %236, i64 %240
  %242 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %243 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %242, i32 0, i32 2
  store i64* %241, i64** %243, align 8
  %244 = load i32, i32* %28, align 4
  %245 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %246 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %245, i32 0, i32 9
  store i32 %244, i32* %246, align 8
  %247 = load i8*, i8** %24, align 8
  %248 = call %struct.sk_buff* @build_skb(i8* %247, i32 0)
  store %struct.sk_buff* %248, %struct.sk_buff** %21, align 8
  %249 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %250 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %249, i32 0, i32 5
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %20, align 4
  %254 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %255 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %258 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @DMA_ATTR_WEAK_ORDERING, align 4
  %261 = call i32 @dma_unmap_single_attrs(i32* %252, i32 %253, i32 %256, i32 %259, i32 %260)
  %262 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %263 = icmp ne %struct.sk_buff* %262, null
  br i1 %263, label %271, label %264

264:                                              ; preds = %232
  %265 = load i8*, i8** %24, align 8
  %266 = call i32 @kfree(i8* %265)
  %267 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %268 = load i64, i64* %22, align 8
  %269 = load i64, i64* %17, align 8
  %270 = call i32 @bnxt_abort_tpa(%struct.bnxt_cp_ring_info* %267, i64 %268, i64 %269)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %384

271:                                              ; preds = %232
  %272 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %273 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %274 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @skb_reserve(%struct.sk_buff* %272, i32 %275)
  %277 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %278 = load i32, i32* %18, align 4
  %279 = call i32 @skb_put(%struct.sk_buff* %277, i32 %278)
  br label %280

280:                                              ; preds = %271, %220
  %281 = load i64, i64* %17, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %280
  %284 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %285 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %9, align 8
  %286 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %287 = load i64, i64* %22, align 8
  %288 = load i64, i64* %17, align 8
  %289 = call %struct.sk_buff* @bnxt_rx_pages(%struct.bnxt* %284, %struct.bnxt_cp_ring_info* %285, %struct.sk_buff* %286, i64 %287, i64 %288, i32 1)
  store %struct.sk_buff* %289, %struct.sk_buff** %21, align 8
  %290 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %291 = icmp ne %struct.sk_buff* %290, null
  br i1 %291, label %293, label %292

292:                                              ; preds = %283
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %384

293:                                              ; preds = %283
  br label %294

294:                                              ; preds = %293, %280
  %295 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %296 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %297 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %298 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %297, i32 0, i32 8
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @bnxt_get_pkt_dev(%struct.bnxt* %296, i32 %299)
  %301 = call i32 @eth_type_trans(%struct.sk_buff* %295, i32 %300)
  %302 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %303 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %302, i32 0, i32 3
  store i32 %301, i32* %303, align 8
  %304 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %305 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @PKT_HASH_TYPE_NONE, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %318

309:                                              ; preds = %294
  %310 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %311 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %312 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %315 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %314, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @skb_set_hash(%struct.sk_buff* %310, i32 %313, i64 %316)
  br label %318

318:                                              ; preds = %309, %294
  %319 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %320 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @RX_CMP_FLAGS2_META_FORMAT_VLAN, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %350

325:                                              ; preds = %318
  %326 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %327 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %326, i32 0, i32 2
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %350

334:                                              ; preds = %325
  %335 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %336 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %335, i32 0, i32 6
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @RX_CMP_FLAGS2_METADATA_TPID_SFT, align 8
  %339 = lshr i64 %337, %338
  store i64 %339, i64* %29, align 8
  %340 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %341 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %340, i32 0, i32 6
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @RX_CMP_FLAGS2_METADATA_TCI_MASK, align 8
  %344 = and i64 %342, %343
  store i64 %344, i64* %30, align 8
  %345 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %346 = load i64, i64* %29, align 8
  %347 = call i32 @htons(i64 %346)
  %348 = load i64, i64* %30, align 8
  %349 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %345, i32 %347, i64 %348)
  br label %350

350:                                              ; preds = %334, %325, %318
  %351 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %352 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %351)
  %353 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %354 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @RX_TPA_START_CMP_FLAGS2_L4_CS_CALC, align 4
  %357 = and i32 %355, %356
  %358 = call i64 @likely(i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %350
  %361 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %362 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %363 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %362, i32 0, i32 1
  store i32 %361, i32* %363, align 4
  %364 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %365 = getelementptr inbounds %struct.bnxt_tpa_info, %struct.bnxt_tpa_info* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @RX_CMP_FLAGS2_T_L4_CS_CALC, align 4
  %368 = and i32 %366, %367
  %369 = ashr i32 %368, 3
  %370 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %371 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %370, i32 0, i32 0
  store i32 %369, i32* %371, align 8
  br label %372

372:                                              ; preds = %360, %350
  %373 = load i32, i32* %25, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %372
  %376 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %377 = load %struct.bnxt_tpa_info*, %struct.bnxt_tpa_info** %19, align 8
  %378 = load %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp** %11, align 8
  %379 = load %struct.rx_tpa_end_cmp_ext*, %struct.rx_tpa_end_cmp_ext** %12, align 8
  %380 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %381 = call %struct.sk_buff* @bnxt_gro_skb(%struct.bnxt* %376, %struct.bnxt_tpa_info* %377, %struct.rx_tpa_end_cmp* %378, %struct.rx_tpa_end_cmp_ext* %379, %struct.sk_buff* %380)
  store %struct.sk_buff* %381, %struct.sk_buff** %21, align 8
  br label %382

382:                                              ; preds = %375, %372
  %383 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %383, %struct.sk_buff** %7, align 8
  br label %384

384:                                              ; preds = %382, %292, %264, %227, %215, %200, %138, %54, %50
  %385 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %385
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bnxt_discard_rx(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, %struct.rx_tpa_end_cmp*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i64 @TPA_END_AGG_ID_P5(%struct.rx_tpa_end_cmp*) #1

declare dso_local i64 @bnxt_lookup_agg_idx(%struct.bnxt_rx_ring_info*, i64) #1

declare dso_local i64 @TPA_END_AGG_BUFS_P5(%struct.rx_tpa_end_cmp_ext*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64, i32) #1

declare dso_local i32 @bnxt_free_agg_idx(%struct.bnxt_rx_ring_info*, i64) #1

declare dso_local i64 @TPA_END_AGG_ID(%struct.rx_tpa_end_cmp*) #1

declare dso_local i64 @TPA_END_AGG_BUFS(%struct.rx_tpa_end_cmp*) #1

declare dso_local i64 @RING_CMP(i32) #1

declare dso_local i32 @bnxt_agg_bufs_valid(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i64, i32*) #1

declare dso_local i64 @NEXT_CMP(i64) #1

declare dso_local i32 @TPA_END_GRO(%struct.rx_tpa_end_cmp*) #1

declare dso_local i32 @prefetch(i64*) #1

declare dso_local i64 @TPA_END_ERRORS(%struct.rx_tpa_end_cmp_ext*) #1

declare dso_local i32 @bnxt_abort_tpa(%struct.bnxt_cp_ring_info*, i64, i64) #1

declare dso_local %struct.sk_buff* @bnxt_copy_skb(%struct.bnxt_napi*, i64*, i32, i32) #1

declare dso_local i64* @__bnxt_alloc_rx_data(%struct.bnxt*, i32*, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i32 @dma_unmap_single_attrs(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @bnxt_rx_pages(%struct.bnxt*, %struct.bnxt_cp_ring_info*, %struct.sk_buff*, i64, i64, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @bnxt_get_pkt_dev(%struct.bnxt*, i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @bnxt_gro_skb(%struct.bnxt*, %struct.bnxt_tpa_info*, %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp_ext*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
