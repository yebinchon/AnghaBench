; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_rx = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.lan743x_adapter* }
%struct.lan743x_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@lan743x_rx_napi_poll = common dso_local global i32 0, align 4
@DMAC_CMD = common dso_local global i32 0, align 4
@RX_CFG_A_RX_HP_WB_EN_ = common dso_local global i32 0, align 4
@LAN743X_CSR_FLAG_IS_A0 = common dso_local global i32 0, align 4
@RX_CFG_A_RX_WB_ON_INT_TMR_ = common dso_local global i32 0, align 4
@RX_CFG_B_RX_PAD_MASK_ = common dso_local global i32 0, align 4
@RX_HEAD_PADDING = common dso_local global i32 0, align 4
@RX_CFG_B_RX_PAD_0_ = common dso_local global i32 0, align 4
@RX_CFG_B_RX_PAD_2_ = common dso_local global i32 0, align 4
@RX_CFG_B_RX_RING_LEN_MASK_ = common dso_local global i32 0, align 4
@RX_CFG_B_TS_ALL_RX_ = common dso_local global i32 0, align 4
@RX_CFG_B_RDMABL_512_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR = common dso_local global i32 0, align 4
@RX_CFG_C_RX_TOP_INT_EN_AUTO_CLR_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR = common dso_local global i32 0, align 4
@RX_CFG_C_RX_DMA_INT_STS_AUTO_CLR_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C = common dso_local global i32 0, align 4
@RX_CFG_C_RX_INT_STS_R2C_MODE_MASK_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C = common dso_local global i32 0, align 4
@RX_CFG_C_RX_INT_EN_R2C_ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@INT_EN_SET = common dso_local global i32 0, align 4
@DMAC_INT_STS = common dso_local global i32 0, align 4
@DMAC_INT_EN_SET = common dso_local global i32 0, align 4
@FCT_RX_CTL = common dso_local global i32 0, align 4
@FCT_FLOW_CTL_REQ_EN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_rx*)* @lan743x_rx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_rx_open(%struct.lan743x_rx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_rx*, align 8
  %4 = alloca %struct.lan743x_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan743x_rx* %0, %struct.lan743x_rx** %3, align 8
  %7 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %8 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %7, i32 0, i32 9
  %9 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  store %struct.lan743x_adapter* %9, %struct.lan743x_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %11 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %10, i32 0, i32 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %13 = call i32 @lan743x_rx_ring_init(%struct.lan743x_rx* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %324

17:                                               ; preds = %1
  %18 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %22 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %21, i32 0, i32 4
  %23 = load i32, i32* @lan743x_rx_napi_poll, align 4
  %24 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %25 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @netif_napi_add(i32 %20, i32* %22, i32 %23, i32 %27)
  %29 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %30 = load i32, i32* @DMAC_CMD, align 4
  %31 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %32 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DMAC_CMD_RX_SWR_(i32 %33)
  %35 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %29, i32 %30, i32 %34)
  %36 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %37 = load i32, i32* @DMAC_CMD, align 4
  %38 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %39 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DMAC_CMD_RX_SWR_(i32 %40)
  %42 = call i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %36, i32 %37, i32 %41, i32 0, i32 1000, i32 20000, i32 100)
  %43 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %44 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %45 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @RX_BASE_ADDRH(i32 %46)
  %48 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %49 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DMA_ADDR_HIGH32(i32 %50)
  %52 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %43, i32 %47, i32 %51)
  %53 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %54 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %55 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @RX_BASE_ADDRL(i32 %56)
  %58 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %59 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DMA_ADDR_LOW32(i32 %60)
  %62 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %53, i32 %57, i32 %61)
  %63 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %64 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %65 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @RX_HEAD_WRITEBACK_ADDRH(i32 %66)
  %68 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %69 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @DMA_ADDR_HIGH32(i32 %70)
  %72 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %63, i32 %67, i32 %71)
  %73 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %74 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %75 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @RX_HEAD_WRITEBACK_ADDRL(i32 %76)
  %78 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %79 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @DMA_ADDR_LOW32(i32 %80)
  %82 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %73, i32 %77, i32 %81)
  %83 = load i32, i32* @RX_CFG_A_RX_HP_WB_EN_, align 4
  store i32 %83, i32* %5, align 4
  %84 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LAN743X_CSR_FLAG_IS_A0, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %17
  %92 = load i32, i32* @RX_CFG_A_RX_WB_ON_INT_TMR_, align 4
  %93 = call i32 @RX_CFG_A_RX_WB_THRES_SET_(i32 7)
  %94 = or i32 %92, %93
  %95 = call i32 @RX_CFG_A_RX_PF_THRES_SET_(i32 16)
  %96 = or i32 %94, %95
  %97 = call i32 @RX_CFG_A_RX_PF_PRI_THRES_SET_(i32 4)
  %98 = or i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %91, %17
  %102 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %103 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %104 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @RX_CFG_A(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %102, i32 %106, i32 %107)
  %109 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %110 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %111 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @RX_CFG_B(i32 %112)
  %114 = call i8* @lan743x_csr_read(%struct.lan743x_adapter* %109, i32 %113)
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @RX_CFG_B_RX_PAD_MASK_, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* @RX_HEAD_PADDING, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %101
  %123 = load i32, i32* @RX_CFG_B_RX_PAD_0_, align 4
  %124 = load i32, i32* %5, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %5, align 4
  br label %130

126:                                              ; preds = %101
  %127 = load i32, i32* @RX_CFG_B_RX_PAD_2_, align 4
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i32, i32* @RX_CFG_B_RX_RING_LEN_MASK_, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %136 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @RX_CFG_B_RX_RING_LEN_MASK_, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* @RX_CFG_B_TS_ALL_RX_, align 4
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %146 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @LAN743X_CSR_FLAG_IS_A0, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %130
  %153 = load i32, i32* @RX_CFG_B_RDMABL_512_, align 4
  %154 = load i32, i32* %5, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %130
  %157 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %158 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %159 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @RX_CFG_B(i32 %160)
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %157, i32 %161, i32 %162)
  %164 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %165 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %166 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @INT_BIT_DMA_RX_(i32 %167)
  %169 = call i32 @lan743x_intr_get_vector_flags(%struct.lan743x_adapter* %164, i32 %168)
  %170 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %171 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  store i32 0, i32* %5, align 4
  %172 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %173 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %156
  %179 = load i32, i32* @RX_CFG_C_RX_TOP_INT_EN_AUTO_CLR_, align 4
  %180 = load i32, i32* %5, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %178, %156
  %183 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %184 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load i32, i32* @RX_CFG_C_RX_DMA_INT_STS_AUTO_CLR_, align 4
  %191 = load i32, i32* %5, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %189, %182
  %194 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %195 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* @RX_CFG_C_RX_INT_STS_R2C_MODE_MASK_, align 4
  %202 = load i32, i32* %5, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %200, %193
  %205 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %206 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load i32, i32* @RX_CFG_C_RX_INT_EN_R2C_, align 4
  %213 = load i32, i32* %5, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %211, %204
  %216 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %217 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %218 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @RX_CFG_C(i32 %219)
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %216, i32 %220, i32 %221)
  %223 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %224 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %228 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %230 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %231 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @RX_TAIL(i32 %232)
  %234 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %235 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %229, i32 %233, i32 %236)
  %238 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %239 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %240 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @RX_HEAD(i32 %241)
  %243 = call i8* @lan743x_csr_read(%struct.lan743x_adapter* %238, i32 %242)
  %244 = ptrtoint i8* %243 to i32
  %245 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %246 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %248 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %215
  %252 = load i32, i32* @EIO, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %6, align 4
  br label %318

254:                                              ; preds = %215
  %255 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %256 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %255, i32 0, i32 4
  %257 = call i32 @napi_enable(i32* %256)
  %258 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %259 = load i32, i32* @INT_EN_SET, align 4
  %260 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %261 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @INT_BIT_DMA_RX_(i32 %262)
  %264 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %258, i32 %259, i32 %263)
  %265 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %266 = load i32, i32* @DMAC_INT_STS, align 4
  %267 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %268 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @DMAC_INT_BIT_RXFRM_(i32 %269)
  %271 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %265, i32 %266, i32 %270)
  %272 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %273 = load i32, i32* @DMAC_INT_EN_SET, align 4
  %274 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %275 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @DMAC_INT_BIT_RXFRM_(i32 %276)
  %278 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %272, i32 %273, i32 %277)
  %279 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %280 = load i32, i32* @DMAC_CMD, align 4
  %281 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %282 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @DMAC_CMD_START_R_(i32 %283)
  %285 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %279, i32 %280, i32 %284)
  %286 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %287 = load i32, i32* @FCT_RX_CTL, align 4
  %288 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %289 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @FCT_RX_CTL_RESET_(i32 %290)
  %292 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %286, i32 %287, i32 %291)
  %293 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %294 = load i32, i32* @FCT_RX_CTL, align 4
  %295 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %296 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @FCT_RX_CTL_RESET_(i32 %297)
  %299 = call i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter* %293, i32 %294, i32 %298, i32 0, i32 1000, i32 20000, i32 100)
  %300 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %301 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %302 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @FCT_FLOW(i32 %303)
  %305 = load i32, i32* @FCT_FLOW_CTL_REQ_EN_, align 4
  %306 = call i32 @FCT_FLOW_CTL_ON_THRESHOLD_SET_(i32 42)
  %307 = or i32 %305, %306
  %308 = call i32 @FCT_FLOW_CTL_OFF_THRESHOLD_SET_(i32 10)
  %309 = or i32 %307, %308
  %310 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %300, i32 %304, i32 %309)
  %311 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %312 = load i32, i32* @FCT_RX_CTL, align 4
  %313 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %314 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @FCT_RX_CTL_EN_(i32 %315)
  %317 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %311, i32 %312, i32 %316)
  store i32 0, i32* %2, align 4
  br label %326

318:                                              ; preds = %251
  %319 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %320 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %319, i32 0, i32 4
  %321 = call i32 @netif_napi_del(i32* %320)
  %322 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %323 = call i32 @lan743x_rx_ring_cleanup(%struct.lan743x_rx* %322)
  br label %324

324:                                              ; preds = %318, %16
  %325 = load i32, i32* %6, align 4
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %324, %254
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local i32 @lan743x_rx_ring_init(%struct.lan743x_rx*) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @DMAC_CMD_RX_SWR_(i32) #1

declare dso_local i32 @lan743x_csr_wait_for_bit(%struct.lan743x_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RX_BASE_ADDRH(i32) #1

declare dso_local i32 @DMA_ADDR_HIGH32(i32) #1

declare dso_local i32 @RX_BASE_ADDRL(i32) #1

declare dso_local i32 @DMA_ADDR_LOW32(i32) #1

declare dso_local i32 @RX_HEAD_WRITEBACK_ADDRH(i32) #1

declare dso_local i32 @RX_HEAD_WRITEBACK_ADDRL(i32) #1

declare dso_local i32 @RX_CFG_A_RX_WB_THRES_SET_(i32) #1

declare dso_local i32 @RX_CFG_A_RX_PF_THRES_SET_(i32) #1

declare dso_local i32 @RX_CFG_A_RX_PF_PRI_THRES_SET_(i32) #1

declare dso_local i32 @RX_CFG_A(i32) #1

declare dso_local i8* @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @RX_CFG_B(i32) #1

declare dso_local i32 @lan743x_intr_get_vector_flags(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @INT_BIT_DMA_RX_(i32) #1

declare dso_local i32 @RX_CFG_C(i32) #1

declare dso_local i32 @RX_TAIL(i32) #1

declare dso_local i32 @RX_HEAD(i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @DMAC_INT_BIT_RXFRM_(i32) #1

declare dso_local i32 @DMAC_CMD_START_R_(i32) #1

declare dso_local i32 @FCT_RX_CTL_RESET_(i32) #1

declare dso_local i32 @FCT_FLOW(i32) #1

declare dso_local i32 @FCT_FLOW_CTL_ON_THRESHOLD_SET_(i32) #1

declare dso_local i32 @FCT_FLOW_CTL_OFF_THRESHOLD_SET_(i32) #1

declare dso_local i32 @FCT_RX_CTL_EN_(i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @lan743x_rx_ring_cleanup(%struct.lan743x_rx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
