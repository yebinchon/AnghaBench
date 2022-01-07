; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i32, i32, i32, i32, i64, i8*, i32, i32, %struct.lan743x_adapter* }
%struct.lan743x_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FCT_TX_CTL = common dso_local global i32 0, align 4
@DMAC_CMD = common dso_local global i32 0, align 4
@TX_CFG_B_TX_RING_LEN_MASK_ = common dso_local global i32 0, align 4
@LAN743X_CSR_FLAG_IS_A0 = common dso_local global i32 0, align 4
@TX_CFG_B_TDMABL_512_ = common dso_local global i32 0, align 4
@TX_CFG_A_TX_TMR_HPWB_SEL_IOC_ = common dso_local global i32 0, align 4
@TX_CFG_A_TX_HP_WB_EN_ = common dso_local global i32 0, align 4
@TX_CFG_A_TX_HP_WB_ON_INT_TMR_ = common dso_local global i32 0, align 4
@lan743x_tx_napi_poll = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR = common dso_local global i32 0, align 4
@TX_CFG_C_TX_TOP_INT_EN_AUTO_CLR_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR = common dso_local global i32 0, align 4
@TX_CFG_C_TX_DMA_INT_STS_AUTO_CLR_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C = common dso_local global i32 0, align 4
@TX_CFG_C_TX_INT_STS_R2C_MODE_MASK_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C = common dso_local global i32 0, align 4
@TX_CFG_C_TX_INT_EN_R2C_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET = common dso_local global i32 0, align 4
@INT_EN_SET = common dso_local global i32 0, align 4
@DMAC_INT_EN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_tx*)* @lan743x_tx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_tx_open(%struct.lan743x_tx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_tx*, align 8
  %4 = alloca %struct.lan743x_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %3, align 8
  store %struct.lan743x_adapter* null, %struct.lan743x_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %8 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %7, i32 0, i32 8
  %9 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  store %struct.lan743x_adapter* %9, %struct.lan743x_adapter** %4, align 8
  %10 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %11 = call i32 @lan743x_tx_ring_init(%struct.lan743x_tx* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %282

16:                                               ; preds = %1
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %18 = load i32, i32* @FCT_TX_CTL, align 4
  %19 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %20 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @FCT_TX_CTL_RESET_(i32 %21)
  %23 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %17, i32 %18, i32 %22)
  %24 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %25 = load i32, i32* @FCT_TX_CTL, align 4
  %26 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %27 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @FCT_TX_CTL_RESET_(i32 %28)
  %30 = call i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %24, i32 %25, i32 %29, i32 0, i32 1000, i32 20000, i32 100)
  %31 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %32 = load i32, i32* @FCT_TX_CTL, align 4
  %33 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %34 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @FCT_TX_CTL_EN_(i32 %35)
  %37 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %31, i32 %32, i32 %36)
  %38 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %39 = load i32, i32* @DMAC_CMD, align 4
  %40 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %41 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DMAC_CMD_TX_SWR_(i32 %42)
  %44 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %38, i32 %39, i32 %43)
  %45 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %46 = load i32, i32* @DMAC_CMD, align 4
  %47 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %48 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DMAC_CMD_TX_SWR_(i32 %49)
  %51 = call i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %45, i32 %46, i32 %50, i32 0, i32 1000, i32 20000, i32 100)
  %52 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %53 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %54 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @TX_BASE_ADDRH(i32 %55)
  %57 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %58 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @DMA_ADDR_HIGH32(i32 %59)
  %61 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %52, i32 %56, i32 %60)
  %62 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %63 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %64 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @TX_BASE_ADDRL(i32 %65)
  %67 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %68 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DMA_ADDR_LOW32(i32 %69)
  %71 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %62, i32 %66, i32 %70)
  %72 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %73 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %74 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @TX_CFG_B(i32 %75)
  %77 = call i8* @lan743x_csr_read(%struct.lan743x_adapter* %72, i32 %76)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @TX_CFG_B_TX_RING_LEN_MASK_, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %84 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TX_CFG_B_TX_RING_LEN_MASK_, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %91 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @LAN743X_CSR_FLAG_IS_A0, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %16
  %98 = load i32, i32* @TX_CFG_B_TDMABL_512_, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %16
  %102 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %103 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %104 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @TX_CFG_B(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %102, i32 %106, i32 %107)
  %109 = load i32, i32* @TX_CFG_A_TX_TMR_HPWB_SEL_IOC_, align 4
  %110 = load i32, i32* @TX_CFG_A_TX_HP_WB_EN_, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %5, align 4
  %112 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @LAN743X_CSR_FLAG_IS_A0, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %101
  %120 = load i32, i32* @TX_CFG_A_TX_HP_WB_ON_INT_TMR_, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = call i32 @TX_CFG_A_TX_PF_THRES_SET_(i32 16)
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  %126 = call i32 @TX_CFG_A_TX_PF_PRI_THRES_SET_(i32 4)
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = call i32 @TX_CFG_A_TX_HP_WB_THRES_SET_(i32 7)
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %119, %101
  %133 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %134 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %135 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @TX_CFG_A(i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %133, i32 %137, i32 %138)
  %140 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %141 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %142 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @TX_HEAD_WRITEBACK_ADDRH(i32 %143)
  %145 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %146 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @DMA_ADDR_HIGH32(i32 %147)
  %149 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %140, i32 %144, i32 %148)
  %150 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %151 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %152 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @TX_HEAD_WRITEBACK_ADDRL(i32 %153)
  %155 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %156 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @DMA_ADDR_LOW32(i32 %157)
  %159 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %150, i32 %154, i32 %158)
  %160 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %161 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %162 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @TX_HEAD(i32 %163)
  %165 = call i8* @lan743x_csr_read(%struct.lan743x_adapter* %160, i32 %164)
  %166 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %167 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %169 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %168, i32 0, i32 4
  store i64 0, i64* %169, align 8
  %170 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %171 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %172 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @TX_TAIL(i32 %173)
  %175 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %176 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %170, i32 %174, i32 %178)
  %180 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %181 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %182 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @INT_BIT_DMA_TX_(i32 %183)
  %185 = call i32 @lan743x_intr_get_vector_flags(%struct.lan743x_adapter* %180, i32 %184)
  %186 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %187 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %189 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %192 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %191, i32 0, i32 3
  %193 = load i32, i32* @lan743x_tx_napi_poll, align 4
  %194 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %195 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = call i32 @netif_tx_napi_add(i32 %190, i32* %192, i32 %193, i32 %197)
  %199 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %200 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %199, i32 0, i32 3
  %201 = call i32 @napi_enable(i32* %200)
  store i32 0, i32* %5, align 4
  %202 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %203 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %132
  %209 = load i32, i32* @TX_CFG_C_TX_TOP_INT_EN_AUTO_CLR_, align 4
  %210 = load i32, i32* %5, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %208, %132
  %213 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %214 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %212
  %220 = load i32, i32* @TX_CFG_C_TX_DMA_INT_STS_AUTO_CLR_, align 4
  %221 = load i32, i32* %5, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %219, %212
  %224 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %225 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %223
  %231 = load i32, i32* @TX_CFG_C_TX_INT_STS_R2C_MODE_MASK_, align 4
  %232 = load i32, i32* %5, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %230, %223
  %235 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %236 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  %242 = load i32, i32* @TX_CFG_C_TX_INT_EN_R2C_, align 4
  %243 = load i32, i32* %5, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %5, align 4
  br label %245

245:                                              ; preds = %241, %234
  %246 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %247 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %248 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @TX_CFG_C(i32 %249)
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %246, i32 %250, i32 %251)
  %253 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %254 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %245
  %260 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %261 = load i32, i32* @INT_EN_SET, align 4
  %262 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %263 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @INT_BIT_DMA_TX_(i32 %264)
  %266 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %260, i32 %261, i32 %265)
  br label %267

267:                                              ; preds = %259, %245
  %268 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %269 = load i32, i32* @DMAC_INT_EN_SET, align 4
  %270 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %271 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @DMAC_INT_BIT_TX_IOC_(i32 %272)
  %274 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %268, i32 %269, i32 %273)
  %275 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %276 = load i32, i32* @DMAC_CMD, align 4
  %277 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %278 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @DMAC_CMD_START_T_(i32 %279)
  %281 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %275, i32 %276, i32 %280)
  store i32 0, i32* %2, align 4
  br label %282

282:                                              ; preds = %267, %14
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i32 @lan743x_tx_ring_init(%struct.lan743x_tx*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @FCT_TX_CTL_RESET_(i32) #1

declare dso_local i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FCT_TX_CTL_EN_(i32) #1

declare dso_local i32 @DMAC_CMD_TX_SWR_(i32) #1

declare dso_local i32 @TX_BASE_ADDRH(i32) #1

declare dso_local i32 @DMA_ADDR_HIGH32(i32) #1

declare dso_local i32 @TX_BASE_ADDRL(i32) #1

declare dso_local i32 @DMA_ADDR_LOW32(i32) #1

declare dso_local i8* @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @TX_CFG_B(i32) #1

declare dso_local i32 @TX_CFG_A_TX_PF_THRES_SET_(i32) #1

declare dso_local i32 @TX_CFG_A_TX_PF_PRI_THRES_SET_(i32) #1

declare dso_local i32 @TX_CFG_A_TX_HP_WB_THRES_SET_(i32) #1

declare dso_local i32 @TX_CFG_A(i32) #1

declare dso_local i32 @TX_HEAD_WRITEBACK_ADDRH(i32) #1

declare dso_local i32 @TX_HEAD_WRITEBACK_ADDRL(i32) #1

declare dso_local i32 @TX_HEAD(i32) #1

declare dso_local i32 @TX_TAIL(i32) #1

declare dso_local i32 @lan743x_intr_get_vector_flags(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @INT_BIT_DMA_TX_(i32) #1

declare dso_local i32 @netif_tx_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @TX_CFG_C(i32) #1

declare dso_local i32 @DMAC_INT_BIT_TX_IOC_(i32) #1

declare dso_local i32 @DMAC_CMD_START_T_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
