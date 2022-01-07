; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.bnxt_napi**, %struct.bnxt_rx_ring_info*, %struct.bnxt_tx_ring_info* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { %struct.bnxt_ring_struct, %struct.bnxt_cp_ring_info** }
%struct.bnxt_ring_struct = type { i64 }
%struct.bnxt_rx_ring_info = type { %struct.TYPE_3__*, %struct.bnxt_ring_struct, %struct.bnxt_ring_struct }
%struct.TYPE_3__ = type { i64 }
%struct.bnxt_tx_ring_info = type { %struct.bnxt_ring_struct }

@INVALID_HW_RING_ID = common dso_local global i64 0, align 8
@RING_FREE_REQ_RING_TYPE_TX = common dso_local global i64 0, align 8
@RING_FREE_REQ_RING_TYPE_RX = common dso_local global i64 0, align 8
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@RING_FREE_REQ_RING_TYPE_RX_AGG = common dso_local global i64 0, align 8
@RING_FREE_REQ_RING_TYPE_NQ = common dso_local global i64 0, align 8
@RING_FREE_REQ_RING_TYPE_L2_CMPL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, i32)* @bnxt_hwrm_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_ring_free(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_tx_ring_info*, align 8
  %8 = alloca %struct.bnxt_ring_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bnxt_rx_ring_info*, align 8
  %11 = alloca %struct.bnxt_ring_struct*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bnxt_rx_ring_info*, align 8
  %15 = alloca %struct.bnxt_ring_struct*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.bnxt_napi*, align 8
  %19 = alloca %struct.bnxt_cp_ring_info*, align 8
  %20 = alloca %struct.bnxt_ring_struct*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 5
  %25 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %24, align 8
  %26 = icmp ne %struct.bnxt_napi** %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %289

28:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %69, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 7
  %38 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %38, i64 %40
  store %struct.bnxt_tx_ring_info* %41, %struct.bnxt_tx_ring_info** %7, align 8
  %42 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %43 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %42, i32 0, i32 0
  store %struct.bnxt_ring_struct* %43, %struct.bnxt_ring_struct** %8, align 8
  %44 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %8, align 8
  %45 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %35
  %50 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %51 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %7, align 8
  %52 = call i64 @bnxt_cp_ring_for_tx(%struct.bnxt* %50, %struct.bnxt_tx_ring_info* %51)
  store i64 %52, i64* %9, align 8
  %53 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %54 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %8, align 8
  %55 = load i64, i64* @RING_FREE_REQ_RING_TYPE_TX, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i64, i64* %9, align 8
  br label %62

60:                                               ; preds = %49
  %61 = load i64, i64* @INVALID_HW_RING_ID, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @hwrm_ring_free_send_msg(%struct.bnxt* %53, %struct.bnxt_ring_struct* %54, i64 %55, i64 %63)
  %65 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %66 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %8, align 8
  %67 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %35
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %29

72:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %125, %72
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %76 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %128

79:                                               ; preds = %73
  %80 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %81 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %80, i32 0, i32 6
  %82 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %82, i64 %84
  store %struct.bnxt_rx_ring_info* %85, %struct.bnxt_rx_ring_info** %10, align 8
  %86 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %87 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %86, i32 0, i32 2
  store %struct.bnxt_ring_struct* %87, %struct.bnxt_ring_struct** %11, align 8
  %88 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %89 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %12, align 8
  %93 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %11, align 8
  %94 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %79
  %99 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %100 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %10, align 8
  %101 = call i64 @bnxt_cp_ring_for_rx(%struct.bnxt* %99, %struct.bnxt_rx_ring_info* %100)
  store i64 %101, i64* %13, align 8
  %102 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %103 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %11, align 8
  %104 = load i64, i64* @RING_FREE_REQ_RING_TYPE_RX, align 8
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i64, i64* %13, align 8
  br label %111

109:                                              ; preds = %98
  %110 = load i64, i64* @INVALID_HW_RING_ID, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i64 [ %108, %107 ], [ %110, %109 ]
  %113 = call i32 @hwrm_ring_free_send_msg(%struct.bnxt* %102, %struct.bnxt_ring_struct* %103, i64 %104, i64 %112)
  %114 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %115 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %11, align 8
  %116 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %118 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %119 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %118, i32 0, i32 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i64 %117, i64* %123, align 8
  br label %124

124:                                              ; preds = %111, %79
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %73

128:                                              ; preds = %73
  %129 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %130 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i64, i64* @RING_FREE_REQ_RING_TYPE_RX_AGG, align 8
  store i64 %136, i64* %5, align 8
  br label %139

137:                                              ; preds = %128
  %138 = load i64, i64* @RING_FREE_REQ_RING_TYPE_RX, align 8
  store i64 %138, i64* %5, align 8
  br label %139

139:                                              ; preds = %137, %135
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %192, %139
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %143 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %195

146:                                              ; preds = %140
  %147 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %148 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %147, i32 0, i32 6
  %149 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %149, i64 %151
  store %struct.bnxt_rx_ring_info* %152, %struct.bnxt_rx_ring_info** %14, align 8
  %153 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %14, align 8
  %154 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %153, i32 0, i32 1
  store %struct.bnxt_ring_struct* %154, %struct.bnxt_ring_struct** %15, align 8
  %155 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %14, align 8
  %156 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %16, align 8
  %160 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %15, align 8
  %161 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %191

165:                                              ; preds = %146
  %166 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %167 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %14, align 8
  %168 = call i64 @bnxt_cp_ring_for_rx(%struct.bnxt* %166, %struct.bnxt_rx_ring_info* %167)
  store i64 %168, i64* %17, align 8
  %169 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %170 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %15, align 8
  %171 = load i64, i64* %5, align 8
  %172 = load i32, i32* %4, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = load i64, i64* %17, align 8
  br label %178

176:                                              ; preds = %165
  %177 = load i64, i64* @INVALID_HW_RING_ID, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i64 [ %175, %174 ], [ %177, %176 ]
  %180 = call i32 @hwrm_ring_free_send_msg(%struct.bnxt* %169, %struct.bnxt_ring_struct* %170, i64 %171, i64 %179)
  %181 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %182 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %15, align 8
  %183 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %185 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %186 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %185, i32 0, i32 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i64, i64* %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store i64 %184, i64* %190, align 8
  br label %191

191:                                              ; preds = %178, %146
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %140

195:                                              ; preds = %140
  %196 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %197 = call i32 @bnxt_disable_int_sync(%struct.bnxt* %196)
  %198 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %199 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %195
  %205 = load i64, i64* @RING_FREE_REQ_RING_TYPE_NQ, align 8
  store i64 %205, i64* %5, align 8
  br label %208

206:                                              ; preds = %195
  %207 = load i64, i64* @RING_FREE_REQ_RING_TYPE_L2_CMPL, align 8
  store i64 %207, i64* %5, align 8
  br label %208

208:                                              ; preds = %206, %204
  store i32 0, i32* %6, align 4
  br label %209

209:                                              ; preds = %286, %208
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %212 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %289

215:                                              ; preds = %209
  %216 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %217 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %216, i32 0, i32 5
  %218 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %218, i64 %220
  %222 = load %struct.bnxt_napi*, %struct.bnxt_napi** %221, align 8
  store %struct.bnxt_napi* %222, %struct.bnxt_napi** %18, align 8
  %223 = load %struct.bnxt_napi*, %struct.bnxt_napi** %18, align 8
  %224 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %223, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %224, %struct.bnxt_cp_ring_info** %19, align 8
  store i32 0, i32* %21, align 4
  br label %225

225:                                              ; preds = %257, %215
  %226 = load i32, i32* %21, align 4
  %227 = icmp slt i32 %226, 2
  br i1 %227, label %228, label %260

228:                                              ; preds = %225
  %229 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %19, align 8
  %230 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %229, i32 0, i32 1
  %231 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %230, align 8
  %232 = load i32, i32* %21, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %231, i64 %233
  %235 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %234, align 8
  store %struct.bnxt_cp_ring_info* %235, %struct.bnxt_cp_ring_info** %22, align 8
  %236 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %22, align 8
  %237 = icmp ne %struct.bnxt_cp_ring_info* %236, null
  br i1 %237, label %238, label %256

238:                                              ; preds = %228
  %239 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %22, align 8
  %240 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %239, i32 0, i32 0
  store %struct.bnxt_ring_struct* %240, %struct.bnxt_ring_struct** %20, align 8
  %241 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %242 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  br label %257

247:                                              ; preds = %238
  %248 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %249 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %250 = load i64, i64* @RING_FREE_REQ_RING_TYPE_L2_CMPL, align 8
  %251 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %252 = call i32 @hwrm_ring_free_send_msg(%struct.bnxt* %248, %struct.bnxt_ring_struct* %249, i64 %250, i64 %251)
  %253 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %254 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %255 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  br label %256

256:                                              ; preds = %247, %228
  br label %257

257:                                              ; preds = %256, %246
  %258 = load i32, i32* %21, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %21, align 4
  br label %225

260:                                              ; preds = %225
  %261 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %19, align 8
  %262 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %261, i32 0, i32 0
  store %struct.bnxt_ring_struct* %262, %struct.bnxt_ring_struct** %20, align 8
  %263 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %264 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %285

268:                                              ; preds = %260
  %269 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %270 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %271 = load i64, i64* %5, align 8
  %272 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %273 = call i32 @hwrm_ring_free_send_msg(%struct.bnxt* %269, %struct.bnxt_ring_struct* %270, i64 %271, i64 %272)
  %274 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %275 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %20, align 8
  %276 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  %277 = load i64, i64* @INVALID_HW_RING_ID, align 8
  %278 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %279 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %278, i32 0, i32 4
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  store i64 %277, i64* %284, align 8
  br label %285

285:                                              ; preds = %268, %260
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %209

289:                                              ; preds = %27, %209
  ret void
}

declare dso_local i64 @bnxt_cp_ring_for_tx(%struct.bnxt*, %struct.bnxt_tx_ring_info*) #1

declare dso_local i32 @hwrm_ring_free_send_msg(%struct.bnxt*, %struct.bnxt_ring_struct*, i64, i64) #1

declare dso_local i64 @bnxt_cp_ring_for_rx(%struct.bnxt*, %struct.bnxt_rx_ring_info*) #1

declare dso_local i32 @bnxt_disable_int_sync(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
