; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.bnxt_rx_ring_info*, %struct.bnxt_tx_ring_info*, i32, %struct.TYPE_3__*, %struct.bnxt_napi** }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.bnxt_rx_ring_info = type { i32, i32, i32, i32, %struct.bnxt_ring_struct, %struct.bnxt_napi*, %struct.bnxt_ring_struct }
%struct.bnxt_napi = type { i64, %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i32, i32, %struct.bnxt_ring_struct, %struct.bnxt_cp_ring_info** }
%struct.bnxt_ring_struct = type { i64, i64, i64, i32 }
%struct.bnxt_tx_ring_info = type { i32, %struct.bnxt_ring_struct, %struct.bnxt_napi* }
%struct.TYPE_3__ = type { i32 }

@BNXT_FLAG_AGG_RINGS = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@HWRM_RING_ALLOC_NQ = common dso_local global i64 0, align 8
@HWRM_RING_ALLOC_CMPL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to set async event completion ring.\0A\00", align 1
@HWRM_RING_ALLOC_TX = common dso_local global i64 0, align 8
@BNXT_TX_HDL = common dso_local global i64 0, align 8
@HWRM_RING_ALLOC_RX = common dso_local global i64 0, align 8
@BNXT_RX_HDL = common dso_local global i64 0, align 8
@HWRM_RING_ALLOC_AGG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_ring_alloc(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bnxt_napi*, align 8
  %8 = alloca %struct.bnxt_cp_ring_info*, align 8
  %9 = alloca %struct.bnxt_ring_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnxt_tx_ring_info*, align 8
  %13 = alloca %struct.bnxt_ring_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bnxt_napi*, align 8
  %16 = alloca %struct.bnxt_cp_ring_info*, align 8
  %17 = alloca %struct.bnxt_cp_ring_info*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.bnxt_rx_ring_info*, align 8
  %20 = alloca %struct.bnxt_ring_struct*, align 8
  %21 = alloca %struct.bnxt_napi*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.bnxt_cp_ring_info*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.bnxt_cp_ring_info*, align 8
  %26 = alloca %struct.bnxt_rx_ring_info*, align 8
  %27 = alloca %struct.bnxt_ring_struct*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %30 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BNXT_FLAG_AGG_RINGS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %39 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i64, i64* @HWRM_RING_ALLOC_NQ, align 8
  store i64 %46, i64* %6, align 8
  br label %49

47:                                               ; preds = %1
  %48 = load i64, i64* @HWRM_RING_ALLOC_CMPL, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %47, %45
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %136, %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %53 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %139

56:                                               ; preds = %50
  %57 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 9
  %59 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %59, i64 %61
  %63 = load %struct.bnxt_napi*, %struct.bnxt_napi** %62, align 8
  store %struct.bnxt_napi* %63, %struct.bnxt_napi** %7, align 8
  %64 = load %struct.bnxt_napi*, %struct.bnxt_napi** %7, align 8
  %65 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %64, i32 0, i32 1
  store %struct.bnxt_cp_ring_info* %65, %struct.bnxt_cp_ring_info** %8, align 8
  %66 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %67 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %66, i32 0, i32 2
  store %struct.bnxt_ring_struct* %67, %struct.bnxt_ring_struct** %9, align 8
  %68 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %69 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  %71 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @disable_irq_nosync(i32 %78)
  %80 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %81 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @hwrm_ring_alloc_send_msg(%struct.bnxt* %80, %struct.bnxt_ring_struct* %81, i64 %82, i64 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %56
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @enable_irq(i32 %88)
  br label %418

90:                                               ; preds = %56
  %91 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %92 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %93 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %92, i32 0, i32 1
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %97 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @bnxt_set_db(%struct.bnxt* %91, i32* %93, i64 %94, i64 %95, i32 %98)
  %100 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %101 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %102 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %101, i32 0, i32 1
  %103 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %104 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @bnxt_db_nq(%struct.bnxt* %100, i32* %102, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @enable_irq(i32 %107)
  %109 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %110 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %113 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %112, i32 0, i32 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i32 %111, i32* %118, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %90
  %122 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %123 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %124 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @bnxt_hwrm_set_async_event_cr(%struct.bnxt* %122, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %131 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @netdev_warn(i32 %132, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %121
  br label %135

135:                                              ; preds = %134, %90
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %50

139:                                              ; preds = %50
  %140 = load i64, i64* @HWRM_RING_ALLOC_TX, align 8
  store i64 %140, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %229, %139
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %144 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %232

147:                                              ; preds = %141
  %148 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %149 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %148, i32 0, i32 6
  %150 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %150, i64 %152
  store %struct.bnxt_tx_ring_info* %153, %struct.bnxt_tx_ring_info** %12, align 8
  %154 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %155 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %206

160:                                              ; preds = %147
  %161 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %12, align 8
  %162 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %161, i32 0, i32 2
  %163 = load %struct.bnxt_napi*, %struct.bnxt_napi** %162, align 8
  store %struct.bnxt_napi* %163, %struct.bnxt_napi** %15, align 8
  %164 = load i64, i64* @HWRM_RING_ALLOC_CMPL, align 8
  store i64 %164, i64* %18, align 8
  %165 = load %struct.bnxt_napi*, %struct.bnxt_napi** %15, align 8
  %166 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %165, i32 0, i32 1
  store %struct.bnxt_cp_ring_info* %166, %struct.bnxt_cp_ring_info** %16, align 8
  %167 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %16, align 8
  %168 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %167, i32 0, i32 3
  %169 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %168, align 8
  %170 = load i64, i64* @BNXT_TX_HDL, align 8
  %171 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %169, i64 %170
  %172 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %171, align 8
  store %struct.bnxt_cp_ring_info* %172, %struct.bnxt_cp_ring_info** %17, align 8
  %173 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %17, align 8
  %174 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %173, i32 0, i32 2
  store %struct.bnxt_ring_struct* %174, %struct.bnxt_ring_struct** %13, align 8
  %175 = load i64, i64* @BNXT_TX_HDL, align 8
  %176 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %13, align 8
  %177 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load %struct.bnxt_napi*, %struct.bnxt_napi** %15, align 8
  %179 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %14, align 8
  %181 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %182 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %13, align 8
  %183 = load i64, i64* %18, align 8
  %184 = load i64, i64* %14, align 8
  %185 = call i32 @hwrm_ring_alloc_send_msg(%struct.bnxt* %181, %struct.bnxt_ring_struct* %182, i64 %183, i64 %184)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %160
  br label %418

189:                                              ; preds = %160
  %190 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %191 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %17, align 8
  %192 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %191, i32 0, i32 1
  %193 = load i64, i64* %18, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %13, align 8
  %196 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @bnxt_set_db(%struct.bnxt* %190, i32* %192, i64 %193, i64 %194, i32 %197)
  %199 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %200 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %17, align 8
  %201 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %200, i32 0, i32 1
  %202 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %17, align 8
  %203 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @bnxt_db_cq(%struct.bnxt* %199, i32* %201, i32 %204)
  br label %206

206:                                              ; preds = %189, %147
  %207 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %12, align 8
  %208 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %207, i32 0, i32 1
  store %struct.bnxt_ring_struct* %208, %struct.bnxt_ring_struct** %13, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %14, align 8
  %211 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %212 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %13, align 8
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* %14, align 8
  %215 = call i32 @hwrm_ring_alloc_send_msg(%struct.bnxt* %211, %struct.bnxt_ring_struct* %212, i64 %213, i64 %214)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %206
  br label %418

219:                                              ; preds = %206
  %220 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %221 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %12, align 8
  %222 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %221, i32 0, i32 0
  %223 = load i64, i64* %6, align 8
  %224 = load i64, i64* %14, align 8
  %225 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %13, align 8
  %226 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @bnxt_set_db(%struct.bnxt* %220, i32* %222, i64 %223, i64 %224, i32 %227)
  br label %229

229:                                              ; preds = %219
  %230 = load i32, i32* %4, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %4, align 4
  br label %141

232:                                              ; preds = %141
  %233 = load i64, i64* @HWRM_RING_ALLOC_RX, align 8
  store i64 %233, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %234

234:                                              ; preds = %340, %232
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %237 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %343

240:                                              ; preds = %234
  %241 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %242 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %241, i32 0, i32 5
  %243 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %243, i64 %245
  store %struct.bnxt_rx_ring_info* %246, %struct.bnxt_rx_ring_info** %19, align 8
  %247 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %19, align 8
  %248 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %247, i32 0, i32 6
  store %struct.bnxt_ring_struct* %248, %struct.bnxt_ring_struct** %20, align 8
  %249 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %19, align 8
  %250 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %249, i32 0, i32 5
  %251 = load %struct.bnxt_napi*, %struct.bnxt_napi** %250, align 8
  store %struct.bnxt_napi* %251, %struct.bnxt_napi** %21, align 8
  %252 = load %struct.bnxt_napi*, %struct.bnxt_napi** %21, align 8
  %253 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %22, align 8
  %255 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %256 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %257 = load i64, i64* %6, align 8
  %258 = load i64, i64* %22, align 8
  %259 = call i32 @hwrm_ring_alloc_send_msg(%struct.bnxt* %255, %struct.bnxt_ring_struct* %256, i64 %257, i64 %258)
  store i32 %259, i32* %5, align 4
  %260 = load i32, i32* %5, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %240
  br label %418

263:                                              ; preds = %240
  %264 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %265 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %19, align 8
  %266 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %265, i32 0, i32 1
  %267 = load i64, i64* %6, align 8
  %268 = load i64, i64* %22, align 8
  %269 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %270 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @bnxt_set_db(%struct.bnxt* %264, i32* %266, i64 %267, i64 %268, i32 %271)
  %273 = load i32, i32* %3, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %283, label %275

275:                                              ; preds = %263
  %276 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %277 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %19, align 8
  %278 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %277, i32 0, i32 1
  %279 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %19, align 8
  %280 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @bnxt_db_write(%struct.bnxt* %276, i32* %278, i32 %281)
  br label %283

283:                                              ; preds = %275, %263
  %284 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %285 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %288 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %287, i32 0, i32 4
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = load i64, i64* %22, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  store i32 %286, i32* %292, align 4
  %293 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %294 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %339

299:                                              ; preds = %283
  %300 = load %struct.bnxt_napi*, %struct.bnxt_napi** %21, align 8
  %301 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %300, i32 0, i32 1
  store %struct.bnxt_cp_ring_info* %301, %struct.bnxt_cp_ring_info** %23, align 8
  %302 = load i64, i64* @HWRM_RING_ALLOC_CMPL, align 8
  store i64 %302, i64* %24, align 8
  %303 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %23, align 8
  %304 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %303, i32 0, i32 3
  %305 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %304, align 8
  %306 = load i64, i64* @BNXT_RX_HDL, align 8
  %307 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %305, i64 %306
  %308 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %307, align 8
  store %struct.bnxt_cp_ring_info* %308, %struct.bnxt_cp_ring_info** %25, align 8
  %309 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %25, align 8
  %310 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %309, i32 0, i32 2
  store %struct.bnxt_ring_struct* %310, %struct.bnxt_ring_struct** %20, align 8
  %311 = load i64, i64* @BNXT_RX_HDL, align 8
  %312 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %313 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %312, i32 0, i32 1
  store i64 %311, i64* %313, align 8
  %314 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %315 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %316 = load i64, i64* %24, align 8
  %317 = load i64, i64* %22, align 8
  %318 = call i32 @hwrm_ring_alloc_send_msg(%struct.bnxt* %314, %struct.bnxt_ring_struct* %315, i64 %316, i64 %317)
  store i32 %318, i32* %5, align 4
  %319 = load i32, i32* %5, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %299
  br label %418

322:                                              ; preds = %299
  %323 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %324 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %25, align 8
  %325 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %324, i32 0, i32 1
  %326 = load i64, i64* %24, align 8
  %327 = load i64, i64* %22, align 8
  %328 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %329 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @bnxt_set_db(%struct.bnxt* %323, i32* %325, i64 %326, i64 %327, i32 %330)
  %332 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %333 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %25, align 8
  %334 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %333, i32 0, i32 1
  %335 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %25, align 8
  %336 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @bnxt_db_cq(%struct.bnxt* %332, i32* %334, i32 %337)
  br label %339

339:                                              ; preds = %322, %283
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %4, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %4, align 4
  br label %234

343:                                              ; preds = %234
  %344 = load i32, i32* %3, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %417

346:                                              ; preds = %343
  %347 = load i64, i64* @HWRM_RING_ALLOC_AGG, align 8
  store i64 %347, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %348

348:                                              ; preds = %413, %346
  %349 = load i32, i32* %4, align 4
  %350 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %351 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %416

354:                                              ; preds = %348
  %355 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %356 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %355, i32 0, i32 5
  %357 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %356, align 8
  %358 = load i32, i32* %4, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %357, i64 %359
  store %struct.bnxt_rx_ring_info* %360, %struct.bnxt_rx_ring_info** %26, align 8
  %361 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %26, align 8
  %362 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %361, i32 0, i32 4
  store %struct.bnxt_ring_struct* %362, %struct.bnxt_ring_struct** %27, align 8
  %363 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %27, align 8
  %364 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %28, align 8
  %366 = load i64, i64* %28, align 8
  %367 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %368 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = add i64 %366, %370
  store i64 %371, i64* %29, align 8
  %372 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %373 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %27, align 8
  %374 = load i64, i64* %6, align 8
  %375 = load i64, i64* %29, align 8
  %376 = call i32 @hwrm_ring_alloc_send_msg(%struct.bnxt* %372, %struct.bnxt_ring_struct* %373, i64 %374, i64 %375)
  store i32 %376, i32* %5, align 4
  %377 = load i32, i32* %5, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %354
  br label %418

380:                                              ; preds = %354
  %381 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %382 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %26, align 8
  %383 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %382, i32 0, i32 3
  %384 = load i64, i64* %6, align 8
  %385 = load i64, i64* %29, align 8
  %386 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %27, align 8
  %387 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @bnxt_set_db(%struct.bnxt* %381, i32* %383, i64 %384, i64 %385, i32 %388)
  %390 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %391 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %26, align 8
  %392 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %391, i32 0, i32 3
  %393 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %26, align 8
  %394 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @bnxt_db_write(%struct.bnxt* %390, i32* %392, i32 %395)
  %397 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %398 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %26, align 8
  %399 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %398, i32 0, i32 1
  %400 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %26, align 8
  %401 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @bnxt_db_write(%struct.bnxt* %397, i32* %399, i32 %402)
  %404 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %27, align 8
  %405 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %408 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %407, i32 0, i32 4
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %408, align 8
  %410 = load i64, i64* %28, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 0
  store i32 %406, i32* %412, align 4
  br label %413

413:                                              ; preds = %380
  %414 = load i32, i32* %4, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %4, align 4
  br label %348

416:                                              ; preds = %348
  br label %417

417:                                              ; preds = %416, %343
  br label %418

418:                                              ; preds = %417, %379, %321, %262, %218, %188, %87
  %419 = load i32, i32* %5, align 4
  ret i32 %419
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @hwrm_ring_alloc_send_msg(%struct.bnxt*, %struct.bnxt_ring_struct*, i64, i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @bnxt_set_db(%struct.bnxt*, i32*, i64, i64, i32) #1

declare dso_local i32 @bnxt_db_nq(%struct.bnxt*, i32*, i32) #1

declare dso_local i32 @bnxt_hwrm_set_async_event_cr(%struct.bnxt*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @bnxt_db_cq(%struct.bnxt*, i32*, i32) #1

declare dso_local i32 @bnxt_db_write(%struct.bnxt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
