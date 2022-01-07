; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32 }
%struct.bcm_sysport_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.phy_device = type { i32 }

@CMD_RX_EN = common dso_local global i32 0, align 4
@CMD_TX_EN = common dso_local global i32 0, align 4
@UMAC_MAX_MTU_SIZE = common dso_local global i32 0, align 4
@UMAC_MAX_FRAME_LEN = common dso_local global i32 0, align 4
@bcm_sysport_adj_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@bcm_sysport_rx_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to request RX interrupt\0A\00", align 1
@bcm_sysport_tx_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to request TX interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to initialize TX ring %d\0A\00", align 1
@TDMA_LL_RAM_INIT_BUSY = common dso_local global i32 0, align 4
@TDMA_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to initialize RX ring\0A\00", align 1
@INTRL2_0_RDMA_MBDONE = common dso_local global i32 0, align 4
@INTRL2_0_TX_RING_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_sysport_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcm_sysport_priv* %9, %struct.bcm_sysport_priv** %4, align 8
  %10 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %11 = call i32 @umac_reset(%struct.bcm_sysport_priv* %10)
  %12 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %13 = call i32 @topctrl_flush(%struct.bcm_sysport_priv* %12)
  %14 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %15 = load i32, i32* @CMD_RX_EN, align 4
  %16 = load i32, i32* @CMD_TX_EN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @umac_enable_set(%struct.bcm_sysport_priv* %14, i32 %17, i32 0)
  %19 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %20 = call i32 @rbuf_init(%struct.bcm_sysport_priv* %19)
  %21 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %22 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %27 = load i32, i32* @UMAC_MAX_MTU_SIZE, align 4
  %28 = load i32, i32* @UMAC_MAX_FRAME_LEN, align 4
  %29 = call i32 @umac_writel(%struct.bcm_sysport_priv* %26, i32 %27, i32 %28)
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %32 = call i32 @gib_set_pad_extension(%struct.bcm_sysport_priv* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bcm_sysport_set_features(%struct.net_device* %34, i32 %37)
  %39 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @umac_set_hw_addr(%struct.bcm_sysport_priv* %39, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %46 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @bcm_sysport_adj_link, align 4
  %49 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %50 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %44, i32 %47, i32 %48, i32 0, i32 %51)
  store %struct.phy_device* %52, %struct.phy_device** %5, align 8
  %53 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %54 = icmp ne %struct.phy_device* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %33
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %204

60:                                               ; preds = %33
  %61 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %62 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 4
  %63 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %63, i32 0, i32 1
  store i32 -1, i32* %64, align 4
  %65 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %66 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %65, i32 0, i32 2
  store i32 -1, i32* %66, align 4
  %67 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %68 = call i32 @bcm_sysport_mask_all_intrs(%struct.bcm_sysport_priv* %67)
  %69 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %70 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @bcm_sysport_rx_isr, align 4
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @request_irq(i32 %71, i32 %72, i32 0, i32 %75, %struct.net_device* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %60
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %200

83:                                               ; preds = %60
  %84 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %85 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %83
  %89 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %90 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @bcm_sysport_tx_isr, align 4
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = call i32 @request_irq(i32 %91, i32 %92, i32 0, i32 %95, %struct.net_device* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %194

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %83
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %122, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @bcm_sysport_init_tx_ring(%struct.bcm_sysport_priv* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %168

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %105

125:                                              ; preds = %105
  %126 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %127 = load i32, i32* @TDMA_LL_RAM_INIT_BUSY, align 4
  %128 = load i32, i32* @TDMA_STATUS, align 4
  %129 = call i32 @tdma_writel(%struct.bcm_sysport_priv* %126, i32 %127, i32 %128)
  %130 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %131 = call i32 @bcm_sysport_init_rx_ring(%struct.bcm_sysport_priv* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %165

137:                                              ; preds = %125
  %138 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %139 = call i32 @rdma_enable_set(%struct.bcm_sysport_priv* %138, i32 1)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %165

143:                                              ; preds = %137
  %144 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %145 = call i32 @tdma_enable_set(%struct.bcm_sysport_priv* %144, i32 1)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %159

149:                                              ; preds = %143
  %150 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %151 = load i32, i32* @CMD_RX_EN, align 4
  %152 = load i32, i32* @CMD_TX_EN, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @umac_enable_set(%struct.bcm_sysport_priv* %150, i32 %153, i32 1)
  %155 = load %struct.net_device*, %struct.net_device** %3, align 8
  %156 = call i32 @bcm_sysport_netif_start(%struct.net_device* %155)
  %157 = load %struct.net_device*, %struct.net_device** %3, align 8
  %158 = call i32 @netif_tx_start_all_queues(%struct.net_device* %157)
  store i32 0, i32* %2, align 4
  br label %204

159:                                              ; preds = %148
  %160 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %161 = load i32, i32* @INTRL2_0_RDMA_MBDONE, align 4
  %162 = load i32, i32* @INTRL2_0_TX_RING_FULL, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @intrl2_0_mask_set(%struct.bcm_sysport_priv* %160, i32 %163)
  br label %165

165:                                              ; preds = %159, %142, %134
  %166 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %167 = call i32 @bcm_sysport_fini_rx_ring(%struct.bcm_sysport_priv* %166)
  br label %168

168:                                              ; preds = %165, %117
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %179, %168
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.net_device*, %struct.net_device** %3, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ult i32 %170, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @bcm_sysport_fini_tx_ring(%struct.bcm_sysport_priv* %176, i32 %177)
  br label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %6, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %169

182:                                              ; preds = %169
  %183 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %184 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %182
  %188 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %189 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.net_device*, %struct.net_device** %3, align 8
  %192 = call i32 @free_irq(i32 %190, %struct.net_device* %191)
  br label %193

193:                                              ; preds = %187, %182
  br label %194

194:                                              ; preds = %193, %100
  %195 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %196 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.net_device*, %struct.net_device** %3, align 8
  %199 = call i32 @free_irq(i32 %197, %struct.net_device* %198)
  br label %200

200:                                              ; preds = %194, %80
  %201 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %202 = call i32 @phy_disconnect(%struct.phy_device* %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %200, %149, %55
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @umac_reset(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @topctrl_flush(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @umac_enable_set(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @rbuf_init(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @umac_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @gib_set_pad_extension(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @bcm_sysport_set_features(%struct.net_device*, i32) #1

declare dso_local i32 @umac_set_hw_addr(%struct.bcm_sysport_priv*, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @bcm_sysport_mask_all_intrs(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @bcm_sysport_init_tx_ring(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @tdma_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @bcm_sysport_init_rx_ring(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @rdma_enable_set(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @tdma_enable_set(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @bcm_sysport_netif_start(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @intrl2_0_mask_set(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @bcm_sysport_fini_rx_ring(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @bcm_sysport_fini_tx_ring(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
