; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i8*, i64 }
%struct.pasemi_mac = type { i64, %struct.TYPE_13__*, i32, %struct.TYPE_13__*, %struct.TYPE_9__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }

@PAS_MAC_CFG_TXP_FCE = common dso_local global i32 0, align 4
@PAS_MAC_CFG_TXP = common dso_local global i32 0, align 4
@PAS_IOB_DMA_COM_TIMEOUTCFG = common dso_local global i32 0, align 4
@PAS_MAC_IPC_CHNL = common dso_local global i32 0, align 4
@PAS_DMA_RXINT_RCMDSTA_EN = common dso_local global i32 0, align 4
@PAS_DMA_RXINT_RCMDSTA_DROPS_M = common dso_local global i32 0, align 4
@PAS_DMA_RXINT_RCMDSTA_BP = common dso_local global i32 0, align 4
@PAS_DMA_RXINT_RCMDSTA_OO = common dso_local global i32 0, align 4
@PAS_DMA_RXINT_RCMDSTA_BT = common dso_local global i32 0, align 4
@PAS_DMA_RXCHAN_CCMDSTA_DU = common dso_local global i32 0, align 4
@PAS_DMA_RXCHAN_CCMDSTA_OD = common dso_local global i32 0, align 4
@PAS_DMA_RXCHAN_CCMDSTA_FD = common dso_local global i32 0, align 4
@PAS_DMA_RXCHAN_CCMDSTA_DT = common dso_local global i32 0, align 4
@PAS_DMA_TXCHAN_TCMDSTA_SZ = common dso_local global i32 0, align 4
@PAS_DMA_TXCHAN_TCMDSTA_DB = common dso_local global i32 0, align 4
@PAS_DMA_TXCHAN_TCMDSTA_DE = common dso_local global i32 0, align 4
@PAS_DMA_TXCHAN_TCMDSTA_DA = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@PAS_MAC_CFG_PCFG_S1 = common dso_local global i32 0, align 4
@PAS_MAC_CFG_PCFG_PR = common dso_local global i32 0, align 4
@PAS_MAC_CFG_PCFG_CE = common dso_local global i32 0, align 4
@MAC_TYPE_GMAC = common dso_local global i64 0, align 8
@PAS_MAC_CFG_PCFG_TSR_1G = common dso_local global i32 0, align 4
@PAS_MAC_CFG_PCFG_SPD_1G = common dso_local global i32 0, align 4
@PAS_MAC_CFG_PCFG_TSR_10G = common dso_local global i32 0, align 4
@PAS_MAC_CFG_PCFG_SPD_10G = common dso_local global i32 0, align 4
@PAS_MAC_CFG_PCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PHY init failed: %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Defaulting to 1Gbit full duplex\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s tx\00", align 1
@pasemi_mac_tx_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"request_irq of irq %d failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s rx\00", align 1
@pasemi_mac_rx_intr = common dso_local global i32 0, align 4
@pasemi_mac_tx_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pasemi_mac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_mac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pasemi_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.pasemi_mac* @netdev_priv(%struct.net_device* %8)
  store %struct.pasemi_mac* %9, %struct.pasemi_mac** %4, align 8
  %10 = load i32, i32* @PAS_MAC_CFG_TXP_FCE, align 4
  %11 = call i32 @PAS_MAC_CFG_TXP_FPC(i32 3)
  %12 = or i32 %10, %11
  %13 = call i32 @PAS_MAC_CFG_TXP_SL(i32 3)
  %14 = or i32 %12, %13
  %15 = call i32 @PAS_MAC_CFG_TXP_COB(i32 15)
  %16 = or i32 %14, %15
  %17 = call i32 @PAS_MAC_CFG_TXP_TIFT(i32 8)
  %18 = or i32 %16, %17
  %19 = call i32 @PAS_MAC_CFG_TXP_TIFG(i32 12)
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %22 = load i32, i32* @PAS_MAC_CFG_TXP, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @write_mac_reg(%struct.pasemi_mac* %21, i32 %22, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @pasemi_mac_setup_rx_resources(%struct.net_device* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %347

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call %struct.TYPE_13__* @pasemi_mac_setup_tx_resources(%struct.net_device* %31)
  %33 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %34 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %33, i32 0, i32 1
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %34, align 8
  %35 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %36 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %336

40:                                               ; preds = %30
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 1500
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %47 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %52 = call i32 @pasemi_mac_setup_csrings(%struct.pasemi_mac* %51)
  %53 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %54 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %336

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %45, %40
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %68, %59
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @PAS_MAC_RMON(i32 %65)
  %67 = call i32 @write_mac_reg(%struct.pasemi_mac* %64, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %60

71:                                               ; preds = %60
  %72 = load i32, i32* @PAS_IOB_DMA_COM_TIMEOUTCFG, align 4
  %73 = call i32 @PAS_IOB_DMA_COM_TIMEOUTCFG_TCNT(i32 1023)
  %74 = call i32 @write_iob_reg(i32 %72, i32 %73)
  %75 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %76 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %75, i32 0, i32 3
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PAS_IOB_DMA_RXCH_CFG(i32 %80)
  %82 = call i32 @PAS_IOB_DMA_RXCH_CFG_CNTTH(i32 256)
  %83 = call i32 @write_iob_reg(i32 %81, i32 %82)
  %84 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %85 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %84, i32 0, i32 1
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PAS_IOB_DMA_TXCH_CFG(i32 %89)
  %91 = call i32 @PAS_IOB_DMA_TXCH_CFG_CNTTH(i32 32)
  %92 = call i32 @write_iob_reg(i32 %90, i32 %91)
  %93 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %94 = load i32, i32* @PAS_MAC_IPC_CHNL, align 4
  %95 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %96 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %95, i32 0, i32 3
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PAS_MAC_IPC_CHNL_DCHNO(i32 %100)
  %102 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %103 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %102, i32 0, i32 3
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PAS_MAC_IPC_CHNL_BCH(i32 %107)
  %109 = or i32 %101, %108
  %110 = call i32 @write_mac_reg(%struct.pasemi_mac* %93, i32 %94, i32 %109)
  %111 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %112 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @PAS_DMA_RXINT_RCMDSTA(i32 %113)
  %115 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_EN, align 4
  %116 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_DROPS_M, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_BP, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_OO, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_BT, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @write_dma_reg(i32 %114, i32 %123)
  %125 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %126 = call %struct.TYPE_12__* @rx_ring(%struct.pasemi_mac* %125)
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_DU, align 4
  %129 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_OD, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_FD, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_DT, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @pasemi_dma_start_chan(%struct.TYPE_14__* %127, i32 %134)
  %136 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %137 = call %struct.TYPE_11__* @tx_ring(%struct.pasemi_mac* %136)
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* @PAS_DMA_TXCHAN_TCMDSTA_SZ, align 4
  %140 = load i32, i32* @PAS_DMA_TXCHAN_TCMDSTA_DB, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @PAS_DMA_TXCHAN_TCMDSTA_DE, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @PAS_DMA_TXCHAN_TCMDSTA_DA, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @pasemi_dma_start_chan(%struct.TYPE_14__* %138, i32 %145)
  %147 = load %struct.net_device*, %struct.net_device** %3, align 8
  %148 = load i32, i32* @RX_RING_SIZE, align 4
  %149 = call i32 @pasemi_mac_replenish_rx_ring(%struct.net_device* %147, i32 %148)
  %150 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %151 = call %struct.TYPE_12__* @rx_ring(%struct.pasemi_mac* %150)
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @PAS_DMA_RXCHAN_INCR(i32 %154)
  %156 = load i32, i32* @RX_RING_SIZE, align 4
  %157 = ashr i32 %156, 1
  %158 = call i32 @write_dma_reg(i32 %155, i32 %157)
  %159 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %160 = call i32 @pasemi_mac_restart_rx_intr(%struct.pasemi_mac* %159)
  %161 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %162 = call i32 @pasemi_mac_restart_tx_intr(%struct.pasemi_mac* %161)
  %163 = load i32, i32* @PAS_MAC_CFG_PCFG_S1, align 4
  %164 = load i32, i32* @PAS_MAC_CFG_PCFG_PR, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @PAS_MAC_CFG_PCFG_CE, align 4
  %167 = or i32 %165, %166
  store i32 %167, i32* %5, align 4
  %168 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %169 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @MAC_TYPE_GMAC, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %71
  %174 = load i32, i32* @PAS_MAC_CFG_PCFG_TSR_1G, align 4
  %175 = load i32, i32* @PAS_MAC_CFG_PCFG_SPD_1G, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %5, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %5, align 4
  br label %185

179:                                              ; preds = %71
  %180 = load i32, i32* @PAS_MAC_CFG_PCFG_TSR_10G, align 4
  %181 = load i32, i32* @PAS_MAC_CFG_PCFG_SPD_10G, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %5, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %179, %173
  %186 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %187 = load i32, i32* @PAS_MAC_CFG_PCFG, align 4
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @write_mac_reg(%struct.pasemi_mac* %186, i32 %187, i32 %188)
  %190 = load %struct.net_device*, %struct.net_device** %3, align 8
  %191 = call i32 @pasemi_mac_phy_init(%struct.net_device* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %185
  %195 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %196 = call i32 @pasemi_mac_intf_enable(%struct.pasemi_mac* %195)
  %197 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %198 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MAC_TYPE_GMAC, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %194
  %203 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %204 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %203, i32 0, i32 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %7, align 4
  %208 = call i32 (i32*, i8*, ...) @dev_warn(i32* %206, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %207)
  %209 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %210 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %209, i32 0, i32 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = call i32 (i32*, i8*, ...) @dev_warn(i32* %212, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %214

214:                                              ; preds = %202, %194
  br label %215

215:                                              ; preds = %214, %185
  %216 = load %struct.net_device*, %struct.net_device** %3, align 8
  %217 = call i32 @netif_start_queue(%struct.net_device* %216)
  %218 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %219 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %218, i32 0, i32 2
  %220 = call i32 @napi_enable(i32* %219)
  %221 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %222 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.net_device*, %struct.net_device** %3, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @snprintf(i32 %223, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %226)
  %228 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %229 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %228, i32 0, i32 1
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @pasemi_mac_tx_intr, align 4
  %235 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %236 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %239 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %238, i32 0, i32 1
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = call i32 @request_irq(i32 %233, i32 %234, i32 0, i32 %237, %struct.TYPE_13__* %240)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %257

244:                                              ; preds = %215
  %245 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %246 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %245, i32 0, i32 4
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %250 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %249, i32 0, i32 1
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %7, align 4
  %256 = call i32 @dev_err(i32* %248, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %254, i32 %255)
  br label %330

257:                                              ; preds = %215
  %258 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %259 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.net_device*, %struct.net_device** %3, align 8
  %262 = getelementptr inbounds %struct.net_device, %struct.net_device* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @snprintf(i32 %260, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %263)
  %265 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %266 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %265, i32 0, i32 3
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @pasemi_mac_rx_intr, align 4
  %272 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %273 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %276 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %275, i32 0, i32 3
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %276, align 8
  %278 = call i32 @request_irq(i32 %270, i32 %271, i32 0, i32 %274, %struct.TYPE_13__* %277)
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %7, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %257
  %282 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %283 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %282, i32 0, i32 4
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %287 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %286, i32 0, i32 3
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %7, align 4
  %293 = call i32 @dev_err(i32* %285, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %291, i32 %292)
  br label %319

294:                                              ; preds = %257
  %295 = load %struct.net_device*, %struct.net_device** %3, align 8
  %296 = getelementptr inbounds %struct.net_device, %struct.net_device* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = load %struct.net_device*, %struct.net_device** %3, align 8
  %301 = getelementptr inbounds %struct.net_device, %struct.net_device* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @phy_start(i64 %302)
  br label %304

304:                                              ; preds = %299, %294
  %305 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %306 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %305, i32 0, i32 1
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 1
  %309 = load i32, i32* @pasemi_mac_tx_timer, align 4
  %310 = call i32 @timer_setup(i32* %308, i32 %309, i32 0)
  %311 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %312 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %311, i32 0, i32 1
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = load i64, i64* @jiffies, align 8
  %316 = load i64, i64* @HZ, align 8
  %317 = add nsw i64 %315, %316
  %318 = call i32 @mod_timer(i32* %314, i64 %317)
  store i32 0, i32* %2, align 4
  br label %349

319:                                              ; preds = %281
  %320 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %321 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %320, i32 0, i32 1
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %327 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %326, i32 0, i32 1
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %327, align 8
  %329 = call i32 @free_irq(i32 %325, %struct.TYPE_13__* %328)
  br label %330

330:                                              ; preds = %319, %244
  %331 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %332 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %331, i32 0, i32 2
  %333 = call i32 @napi_disable(i32* %332)
  %334 = load %struct.net_device*, %struct.net_device** %3, align 8
  %335 = call i32 @netif_stop_queue(%struct.net_device* %334)
  br label %336

336:                                              ; preds = %330, %57, %39
  %337 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %338 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %337, i32 0, i32 1
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %338, align 8
  %340 = icmp ne %struct.TYPE_13__* %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %343 = call i32 @pasemi_mac_free_tx_resources(%struct.pasemi_mac* %342)
  br label %344

344:                                              ; preds = %341, %336
  %345 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %346 = call i32 @pasemi_mac_free_rx_resources(%struct.pasemi_mac* %345)
  br label %347

347:                                              ; preds = %344, %29
  %348 = load i32, i32* %7, align 4
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %347, %304
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local %struct.pasemi_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @PAS_MAC_CFG_TXP_FPC(i32) #1

declare dso_local i32 @PAS_MAC_CFG_TXP_SL(i32) #1

declare dso_local i32 @PAS_MAC_CFG_TXP_COB(i32) #1

declare dso_local i32 @PAS_MAC_CFG_TXP_TIFT(i32) #1

declare dso_local i32 @PAS_MAC_CFG_TXP_TIFG(i32) #1

declare dso_local i32 @write_mac_reg(%struct.pasemi_mac*, i32, i32) #1

declare dso_local i32 @pasemi_mac_setup_rx_resources(%struct.net_device*) #1

declare dso_local %struct.TYPE_13__* @pasemi_mac_setup_tx_resources(%struct.net_device*) #1

declare dso_local i32 @pasemi_mac_setup_csrings(%struct.pasemi_mac*) #1

declare dso_local i32 @PAS_MAC_RMON(i32) #1

declare dso_local i32 @write_iob_reg(i32, i32) #1

declare dso_local i32 @PAS_IOB_DMA_COM_TIMEOUTCFG_TCNT(i32) #1

declare dso_local i32 @PAS_IOB_DMA_RXCH_CFG(i32) #1

declare dso_local i32 @PAS_IOB_DMA_RXCH_CFG_CNTTH(i32) #1

declare dso_local i32 @PAS_IOB_DMA_TXCH_CFG(i32) #1

declare dso_local i32 @PAS_IOB_DMA_TXCH_CFG_CNTTH(i32) #1

declare dso_local i32 @PAS_MAC_IPC_CHNL_DCHNO(i32) #1

declare dso_local i32 @PAS_MAC_IPC_CHNL_BCH(i32) #1

declare dso_local i32 @write_dma_reg(i32, i32) #1

declare dso_local i32 @PAS_DMA_RXINT_RCMDSTA(i32) #1

declare dso_local i32 @pasemi_dma_start_chan(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_12__* @rx_ring(%struct.pasemi_mac*) #1

declare dso_local %struct.TYPE_11__* @tx_ring(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_replenish_rx_ring(%struct.net_device*, i32) #1

declare dso_local i32 @PAS_DMA_RXCHAN_INCR(i32) #1

declare dso_local i32 @pasemi_mac_restart_rx_intr(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_restart_tx_intr(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_phy_init(%struct.net_device*) #1

declare dso_local i32 @pasemi_mac_intf_enable(%struct.pasemi_mac*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pasemi_mac_free_tx_resources(%struct.pasemi_mac*) #1

declare dso_local i32 @pasemi_mac_free_rx_resources(%struct.pasemi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
