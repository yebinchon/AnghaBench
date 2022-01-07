; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { i32, i32*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.skge_hw*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.skge_hw = type { i64, i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"disabling interface\0A\00", align 1
@SK_PHY_XMAC = common dso_local global i64 0, align 8
@portmask = common dso_local global i64* null, align 8
@B0_IMSK = common dso_local global i32 0, align 4
@LNK_LED_REG = common dso_local global i32 0, align 4
@LED_REG_OFF = common dso_local global i64 0, align 8
@txqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@CSR_STOP = common dso_local global i64 0, align 8
@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_SET = common dso_local global i64 0, align 8
@RB_DIS_OP_MD = common dso_local global i64 0, align 8
@TXA_CTRL = common dso_local global i32 0, align 4
@TXA_DIS_FSYNC = common dso_local global i64 0, align 8
@TXA_DIS_ALLOC = common dso_local global i64 0, align 8
@TXA_STOP_RC = common dso_local global i64 0, align 8
@TXA_ITI_INI = common dso_local global i32 0, align 4
@TXA_LIM_INI = common dso_local global i32 0, align 4
@CSR_SET_RESET = common dso_local global i64 0, align 8
@Q_XA1 = common dso_local global i32 0, align 4
@Q_XA2 = common dso_local global i32 0, align 4
@TX_MFF_CTRL2 = common dso_local global i32 0, align 4
@MFF_RST_SET = common dso_local global i64 0, align 8
@RX_MFF_CTRL2 = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_SET = common dso_local global i64 0, align 8
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@LED_MODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @skge_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_down(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.skge_port*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.skge_port* @netdev_priv(%struct.net_device* %7)
  store %struct.skge_port* %8, %struct.skge_port** %4, align 8
  %9 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %10 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %9, i32 0, i32 6
  %11 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  store %struct.skge_hw* %11, %struct.skge_hw** %5, align 8
  %12 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %13 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %16 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %258

20:                                               ; preds = %1
  %21 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %22 = load i32, i32* @ifdown, align 4
  %23 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %24 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @netif_info(%struct.skge_port* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_tx_disable(%struct.net_device* %27)
  %29 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %30 = call i64 @is_genesis(%struct.skge_hw* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %34 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SK_PHY_XMAC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %40 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %39, i32 0, i32 8
  %41 = call i32 @del_timer_sync(i32* %40)
  br label %42

42:                                               ; preds = %38, %32, %20
  %43 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %44 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %43, i32 0, i32 7
  %45 = call i32 @napi_disable(i32* %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netif_carrier_off(%struct.net_device* %46)
  %48 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %49 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %48, i32 0, i32 4
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load i64*, i64** @portmask, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = xor i64 %55, -1
  %57 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %58 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %62 = load i32, i32* @B0_IMSK, align 4
  %63 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %64 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %42
  br label %72

68:                                               ; preds = %42
  %69 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %70 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i64 [ 0, %67 ], [ %71, %68 ]
  %74 = call i32 @skge_write32(%struct.skge_hw* %61, i32 %62, i64 %73)
  %75 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %76 = load i32, i32* @B0_IMSK, align 4
  %77 = call i32 @skge_read32(%struct.skge_hw* %75, i32 %76)
  %78 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %79 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %78, i32 0, i32 4
  %80 = call i32 @spin_unlock_irq(i32* %79)
  %81 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %82 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %93

85:                                               ; preds = %72
  %86 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %87 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %92 = call i32 @free_irq(i32 %90, %struct.skge_hw* %91)
  br label %93

93:                                               ; preds = %85, %72
  %94 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %95 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %94, i32 0, i32 6
  %96 = load %struct.skge_hw*, %struct.skge_hw** %95, align 8
  %97 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %98 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @LNK_LED_REG, align 4
  %101 = call i32 @SK_REG(i32 %99, i32 %100)
  %102 = load i64, i64* @LED_REG_OFF, align 8
  %103 = call i32 @skge_write8(%struct.skge_hw* %96, i32 %101, i64 %102)
  %104 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %105 = call i64 @is_genesis(%struct.skge_hw* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %93
  %108 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %109 = call i32 @genesis_stop(%struct.skge_port* %108)
  br label %113

110:                                              ; preds = %93
  %111 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %112 = call i32 @yukon_stop(%struct.skge_port* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %115 = load i32*, i32** @txqaddr, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @Q_CSR, align 4
  %121 = call i32 @Q_ADDR(i32 %119, i32 %120)
  %122 = load i64, i64* @CSR_STOP, align 8
  %123 = call i32 @skge_write8(%struct.skge_hw* %114, i32 %121, i64 %122)
  %124 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %125 = load i32*, i32** @txqaddr, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @RB_CTRL, align 4
  %131 = call i32 @RB_ADDR(i32 %129, i32 %130)
  %132 = load i64, i64* @RB_RST_SET, align 8
  %133 = load i64, i64* @RB_DIS_OP_MD, align 8
  %134 = or i64 %132, %133
  %135 = call i32 @skge_write32(%struct.skge_hw* %124, i32 %131, i64 %134)
  %136 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @TXA_CTRL, align 4
  %139 = call i32 @SK_REG(i32 %137, i32 %138)
  %140 = load i64, i64* @TXA_DIS_FSYNC, align 8
  %141 = load i64, i64* @TXA_DIS_ALLOC, align 8
  %142 = or i64 %140, %141
  %143 = load i64, i64* @TXA_STOP_RC, align 8
  %144 = or i64 %142, %143
  %145 = call i32 @skge_write8(%struct.skge_hw* %136, i32 %139, i64 %144)
  %146 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @TXA_ITI_INI, align 4
  %149 = call i32 @SK_REG(i32 %147, i32 %148)
  %150 = call i32 @skge_write32(%struct.skge_hw* %146, i32 %149, i64 0)
  %151 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @TXA_LIM_INI, align 4
  %154 = call i32 @SK_REG(i32 %152, i32 %153)
  %155 = call i32 @skge_write32(%struct.skge_hw* %151, i32 %154, i64 0)
  %156 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %157 = load i32*, i32** @txqaddr, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @Q_CSR, align 4
  %163 = call i32 @Q_ADDR(i32 %161, i32 %162)
  %164 = load i64, i64* @CSR_SET_RESET, align 8
  %165 = call i32 @skge_write32(%struct.skge_hw* %156, i32 %163, i64 %164)
  %166 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %167 = load i32*, i32** @txqaddr, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @RB_CTRL, align 4
  %173 = call i32 @RB_ADDR(i32 %171, i32 %172)
  %174 = load i64, i64* @RB_RST_SET, align 8
  %175 = call i32 @skge_write32(%struct.skge_hw* %166, i32 %173, i64 %174)
  %176 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %177 = load i32, i32* %6, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %113
  %180 = load i32, i32* @Q_XA1, align 4
  br label %183

181:                                              ; preds = %113
  %182 = load i32, i32* @Q_XA2, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = load i32, i32* @RB_CTRL, align 4
  %186 = call i32 @RB_ADDR(i32 %184, i32 %185)
  %187 = load i64, i64* @RB_RST_SET, align 8
  %188 = call i32 @skge_write8(%struct.skge_hw* %176, i32 %186, i64 %187)
  %189 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @skge_rx_stop(%struct.skge_hw* %189, i32 %190)
  %192 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %193 = call i64 @is_genesis(%struct.skge_hw* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %183
  %196 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @TX_MFF_CTRL2, align 4
  %199 = call i32 @SK_REG(i32 %197, i32 %198)
  %200 = load i64, i64* @MFF_RST_SET, align 8
  %201 = call i32 @skge_write8(%struct.skge_hw* %196, i32 %199, i64 %200)
  %202 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @RX_MFF_CTRL2, align 4
  %205 = call i32 @SK_REG(i32 %203, i32 %204)
  %206 = load i64, i64* @MFF_RST_SET, align 8
  %207 = call i32 @skge_write8(%struct.skge_hw* %202, i32 %205, i64 %206)
  br label %221

208:                                              ; preds = %183
  %209 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %212 = call i32 @SK_REG(i32 %210, i32 %211)
  %213 = load i64, i64* @GMF_RST_SET, align 8
  %214 = call i32 @skge_write8(%struct.skge_hw* %209, i32 %212, i64 %213)
  %215 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %218 = call i32 @SK_REG(i32 %216, i32 %217)
  %219 = load i64, i64* @GMF_RST_SET, align 8
  %220 = call i32 @skge_write8(%struct.skge_hw* %215, i32 %218, i64 %219)
  br label %221

221:                                              ; preds = %208, %195
  %222 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %223 = load i32, i32* @LED_MODE_OFF, align 4
  %224 = call i32 @skge_led(%struct.skge_port* %222, i32 %223)
  %225 = load %struct.net_device*, %struct.net_device** %3, align 8
  %226 = call i32 @netif_tx_lock_bh(%struct.net_device* %225)
  %227 = load %struct.net_device*, %struct.net_device** %3, align 8
  %228 = call i32 @skge_tx_clean(%struct.net_device* %227)
  %229 = load %struct.net_device*, %struct.net_device** %3, align 8
  %230 = call i32 @netif_tx_unlock_bh(%struct.net_device* %229)
  %231 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %232 = call i32 @skge_rx_clean(%struct.skge_port* %231)
  %233 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %234 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @kfree(i32 %236)
  %238 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %239 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @kfree(i32 %241)
  %243 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %244 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %243, i32 0, i32 3
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %247 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %250 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %253 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @pci_free_consistent(%struct.TYPE_6__* %245, i32 %248, i32* %251, i32 %254)
  %256 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %257 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %256, i32 0, i32 1
  store i32* null, i32** %257, align 8
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %221, %19
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.skge_port*, i32, i32, i8*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i64 @is_genesis(%struct.skge_hw*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i64) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.skge_hw*) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i64) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @genesis_stop(%struct.skge_port*) #1

declare dso_local i32 @yukon_stop(%struct.skge_port*) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i32 @skge_rx_stop(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_led(%struct.skge_port*, i32) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @skge_tx_clean(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @skge_rx_clean(%struct.skge_port*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_6__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
