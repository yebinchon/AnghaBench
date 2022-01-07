; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bcm_enet_desc*, %struct.bcm_enet_desc*, i32*, i32*, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.bcm_enet_desc = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sockaddr = type { i32 }
%struct.phy_device = type { i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@PHY_ID_FMT = common dso_local global i8* null, align 8
@bcm_enet_adjust_phy_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not attach to PHY\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@ENET_IRMASK_REG = common dso_local global i32 0, align 4
@ENETDMAC_IRMASK = common dso_local global i32 0, align 4
@bcm_enet_isr_mac = common dso_local global i32 0, align 4
@bcm_enet_isr_dma = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENETDMA_BUFALLOC_FORCE_MASK = common dso_local global i32 0, align 4
@ENETDMAC_BUFALLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot allocate rx skb queue\0A\00", align 1
@ENETDMAS_RSTART_REG = common dso_local global i32 0, align 4
@ENETDMAC_RSTART = common dso_local global i32 0, align 4
@ENETDMAS_SRAM2_REG = common dso_local global i32 0, align 4
@ENETDMAS_SRAM3_REG = common dso_local global i32 0, align 4
@ENETDMAS_SRAM4_REG = common dso_local global i32 0, align 4
@ENETDMAC_FC = common dso_local global i32 0, align 4
@ENET_RXMAXLEN_REG = common dso_local global i32 0, align 4
@ENET_TXMAXLEN_REG = common dso_local global i32 0, align 4
@ENETDMAC_MAXBURST = common dso_local global i32 0, align 4
@BCMENET_TX_FIFO_TRESH = common dso_local global i32 0, align 4
@ENET_TXWMARK_REG = common dso_local global i32 0, align 4
@ENETDMAC_LEN = common dso_local global i32 0, align 4
@ENET_CTL_REG = common dso_local global i32 0, align 4
@ENET_CTL_ENABLE_MASK = common dso_local global i32 0, align 4
@ENETDMA_CFG_EN_MASK = common dso_local global i32 0, align 4
@ENETDMA_CFG_REG = common dso_local global i32 0, align 4
@ENETDMAC_CHANCFG = common dso_local global i32 0, align 4
@ENET_IR_MIB = common dso_local global i32 0, align 4
@ENET_IR_REG = common dso_local global i32 0, align 4
@ENETDMAC_IR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_enet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcm_enet_priv*, align 8
  %5 = alloca %struct.sockaddr, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bcm_enet_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %17 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %18 = add nsw i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %22)
  store %struct.bcm_enet_priv* %23, %struct.bcm_enet_priv** %4, align 8
  %24 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %25 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %24, i32 0, i32 36
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.device* %27, %struct.device** %6, align 8
  %28 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %28, i32 0, i32 35
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %1
  %33 = trunc i64 %19 to i32
  %34 = load i8*, i8** @PHY_ID_FMT, align 8
  %35 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %36 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %35, i32 0, i32 34
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %41 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %40, i32 0, i32 33
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snprintf(i8* %21, i32 %33, i8* %34, i32 %39, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = load i32, i32* @bcm_enet_adjust_phy_link, align 4
  %46 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %47 = call %struct.phy_device* @phy_connect(%struct.net_device* %44, i8* %21, i32 %45, i32 %46)
  store %struct.phy_device* %47, %struct.phy_device** %7, align 8
  %48 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %49 = call i64 @IS_ERR(%struct.phy_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %55 = call i32 @PTR_ERR(%struct.phy_device* %54)
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %670

56:                                               ; preds = %32
  %57 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %58 = call i32 @phy_support_sym_pause(%struct.phy_device* %57)
  %59 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %60 = load i32, i32* @SPEED_100, align 4
  %61 = call i32 @phy_set_max_speed(%struct.phy_device* %59, i32 %60)
  %62 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %63 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %63, i32 0, i32 32
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %67 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %66, i32 0, i32 32
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %70 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %69, i32 0, i32 31
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @phy_set_sym_pause(%struct.phy_device* %62, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %74 = call i32 @phy_attached_info(%struct.phy_device* %73)
  %75 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %76 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %75, i32 0, i32 30
  store i64 0, i64* %76, align 8
  %77 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %78 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  %79 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %80 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  br label %82

81:                                               ; preds = %1
  store %struct.phy_device* null, %struct.phy_device** %7, align 8
  br label %82

82:                                               ; preds = %81, %56
  %83 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %84 = load i32, i32* @ENET_IRMASK_REG, align 4
  %85 = call i32 @enet_writel(%struct.bcm_enet_priv* %83, i32 0, i32 %84)
  %86 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %87 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %88 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %89 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %88, i32 0, i32 21
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %86, i32 0, i32 %87, i32 %90)
  %92 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %93 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %94 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %95 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %94, i32 0, i32 20
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %92, i32 0, i32 %93, i32 %96)
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @bcm_enet_isr_mac, align 4
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = call i32 @request_irq(i32 %100, i32 %101, i32 0, i32 %104, %struct.net_device* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %82
  br label %662

110:                                              ; preds = %82
  %111 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %112 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %111, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @bcm_enet_isr_dma, align 4
  %115 = load %struct.net_device*, %struct.net_device** %3, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = call i32 @request_irq(i32 %113, i32 %114, i32 0, i32 %117, %struct.net_device* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %656

123:                                              ; preds = %110
  %124 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %125 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %124, i32 0, i32 14
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @bcm_enet_isr_dma, align 4
  %128 = load %struct.net_device*, %struct.net_device** %3, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.net_device*, %struct.net_device** %3, align 8
  %132 = call i32 @request_irq(i32 %126, i32 %127, i32 0, i32 %130, %struct.net_device* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %650

136:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %149, %136
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %140, label %152

140:                                              ; preds = %137
  %141 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @ENET_PML_REG(i32 %142)
  %144 = call i32 @enet_writel(%struct.bcm_enet_priv* %141, i32 0, i32 %143)
  %145 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @ENET_PMH_REG(i32 %146)
  %148 = call i32 @enet_writel(%struct.bcm_enet_priv* %145, i32 0, i32 %147)
  br label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %137

152:                                              ; preds = %137
  %153 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.net_device*, %struct.net_device** %3, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ETH_ALEN, align 4
  %159 = call i32 @memcpy(i32 %154, i32 %157, i32 %158)
  %160 = load %struct.net_device*, %struct.net_device** %3, align 8
  %161 = call i32 @bcm_enet_set_mac_address(%struct.net_device* %160, %struct.sockaddr* %5)
  %162 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %163 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 4
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %10, align 4
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %171 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %170, i32 0, i32 3
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i8* @dma_alloc_coherent(%struct.device* %168, i32 %169, i32* %171, i32 %172)
  store i8* %173, i8** %13, align 8
  %174 = load i8*, i8** %13, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %152
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %9, align 4
  br label %644

179:                                              ; preds = %152
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %182 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = bitcast i8* %183 to %struct.bcm_enet_desc*
  %185 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %186 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %185, i32 0, i32 15
  store %struct.bcm_enet_desc* %184, %struct.bcm_enet_desc** %186, align 8
  %187 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %188 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 %190, 4
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %10, align 4
  %193 = load %struct.device*, %struct.device** %6, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %196 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %195, i32 0, i32 6
  %197 = load i32, i32* @GFP_KERNEL, align 4
  %198 = call i8* @dma_alloc_coherent(%struct.device* %193, i32 %194, i32* %196, i32 %197)
  store i8* %198, i8** %13, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %179
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %9, align 4
  br label %632

204:                                              ; preds = %179
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %207 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 4
  %208 = load i8*, i8** %13, align 8
  %209 = bitcast i8* %208 to %struct.bcm_enet_desc*
  %210 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %211 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %210, i32 0, i32 16
  store %struct.bcm_enet_desc* %209, %struct.bcm_enet_desc** %211, align 8
  %212 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %213 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @GFP_KERNEL, align 4
  %216 = call i8* @kcalloc(i32 %214, i32 8, i32 %215)
  %217 = bitcast i8* %216 to i32*
  %218 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %219 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %218, i32 0, i32 17
  store i32* %217, i32** %219, align 8
  %220 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %221 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %220, i32 0, i32 17
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %204
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %9, align 4
  br label %620

227:                                              ; preds = %204
  %228 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %229 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %232 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %231, i32 0, i32 8
  store i32 %230, i32* %232, align 8
  %233 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %234 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %233, i32 0, i32 29
  store i64 0, i64* %234, align 8
  %235 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %236 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %235, i32 0, i32 28
  store i64 0, i64* %236, align 8
  %237 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %238 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %237, i32 0, i32 27
  %239 = call i32 @spin_lock_init(i32* %238)
  %240 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %241 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @GFP_KERNEL, align 4
  %244 = call i8* @kcalloc(i32 %242, i32 8, i32 %243)
  %245 = bitcast i8* %244 to i32*
  %246 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %247 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %246, i32 0, i32 18
  store i32* %245, i32** %247, align 8
  %248 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %249 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %248, i32 0, i32 18
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %227
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %9, align 4
  br label %615

255:                                              ; preds = %227
  %256 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %257 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %256, i32 0, i32 26
  store i64 0, i64* %257, align 8
  %258 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %259 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %258, i32 0, i32 25
  store i64 0, i64* %259, align 8
  %260 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %261 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %260, i32 0, i32 24
  store i64 0, i64* %261, align 8
  %262 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %263 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %262, i32 0, i32 23
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %255
  %267 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %268 = load i32, i32* @ENETDMA_BUFALLOC_FORCE_MASK, align 4
  %269 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %270 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %269, i32 0, i32 21
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @ENETDMA_BUFALLOC_REG(i32 %271)
  %273 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %267, i32 %268, i32 %272)
  br label %282

274:                                              ; preds = %255
  %275 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %276 = load i32, i32* @ENETDMA_BUFALLOC_FORCE_MASK, align 4
  %277 = load i32, i32* @ENETDMAC_BUFALLOC, align 4
  %278 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %279 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %278, i32 0, i32 21
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %275, i32 %276, i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %274, %266
  %283 = load %struct.net_device*, %struct.net_device** %3, align 8
  %284 = call i64 @bcm_enet_refill_rx(%struct.net_device* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %282
  %287 = load %struct.device*, %struct.device** %6, align 8
  %288 = call i32 @dev_err(%struct.device* %287, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %289 = load i32, i32* @ENOMEM, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %9, align 4
  br label %566

291:                                              ; preds = %282
  %292 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %293 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %292, i32 0, i32 23
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %315

296:                                              ; preds = %291
  %297 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %298 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %299 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @ENETDMAS_RSTART_REG, align 4
  %302 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %303 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %302, i32 0, i32 21
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %297, i32 %300, i32 %301, i32 %304)
  %306 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %307 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %308 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @ENETDMAS_RSTART_REG, align 4
  %311 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %312 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %311, i32 0, i32 20
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %306, i32 %309, i32 %310, i32 %313)
  br label %334

315:                                              ; preds = %291
  %316 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %317 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %318 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @ENETDMAC_RSTART, align 4
  %321 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %322 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %321, i32 0, i32 21
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %316, i32 %319, i32 %320, i32 %323)
  %325 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %326 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %327 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @ENETDMAC_RSTART, align 4
  %330 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %331 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %330, i32 0, i32 20
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %325, i32 %328, i32 %329, i32 %332)
  br label %334

334:                                              ; preds = %315, %296
  %335 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %336 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %335, i32 0, i32 23
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %376

339:                                              ; preds = %334
  %340 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %341 = load i32, i32* @ENETDMAS_SRAM2_REG, align 4
  %342 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %343 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %342, i32 0, i32 21
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %340, i32 0, i32 %341, i32 %344)
  %346 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %347 = load i32, i32* @ENETDMAS_SRAM2_REG, align 4
  %348 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %349 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %348, i32 0, i32 20
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %346, i32 0, i32 %347, i32 %350)
  %352 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %353 = load i32, i32* @ENETDMAS_SRAM3_REG, align 4
  %354 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %355 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %354, i32 0, i32 21
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %352, i32 0, i32 %353, i32 %356)
  %358 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %359 = load i32, i32* @ENETDMAS_SRAM3_REG, align 4
  %360 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %361 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %360, i32 0, i32 20
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %358, i32 0, i32 %359, i32 %362)
  %364 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %365 = load i32, i32* @ENETDMAS_SRAM4_REG, align 4
  %366 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %367 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %366, i32 0, i32 21
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %364, i32 0, i32 %365, i32 %368)
  %370 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %371 = load i32, i32* @ENETDMAS_SRAM4_REG, align 4
  %372 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %373 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %372, i32 0, i32 20
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %370, i32 0, i32 %371, i32 %374)
  br label %389

376:                                              ; preds = %334
  %377 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %378 = load i32, i32* @ENETDMAC_FC, align 4
  %379 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %380 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %379, i32 0, i32 21
  %381 = load i32, i32* %380, align 8
  %382 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %377, i32 0, i32 %378, i32 %381)
  %383 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %384 = load i32, i32* @ENETDMAC_FC, align 4
  %385 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %386 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %385, i32 0, i32 20
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %383, i32 0, i32 %384, i32 %387)
  br label %389

389:                                              ; preds = %376, %339
  %390 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %391 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %392 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %391, i32 0, i32 9
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @ENET_RXMAXLEN_REG, align 4
  %395 = call i32 @enet_writel(%struct.bcm_enet_priv* %390, i32 %393, i32 %394)
  %396 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %397 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %398 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %397, i32 0, i32 9
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @ENET_TXMAXLEN_REG, align 4
  %401 = call i32 @enet_writel(%struct.bcm_enet_priv* %396, i32 %399, i32 %400)
  %402 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %403 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %404 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %403, i32 0, i32 10
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @ENETDMAC_MAXBURST, align 4
  %407 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %408 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %407, i32 0, i32 21
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %402, i32 %405, i32 %406, i32 %409)
  %411 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %412 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %413 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %412, i32 0, i32 10
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @ENETDMAC_MAXBURST, align 4
  %416 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %417 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %416, i32 0, i32 20
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %411, i32 %414, i32 %415, i32 %418)
  %420 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %421 = load i32, i32* @BCMENET_TX_FIFO_TRESH, align 4
  %422 = load i32, i32* @ENET_TXWMARK_REG, align 4
  %423 = call i32 @enet_writel(%struct.bcm_enet_priv* %420, i32 %421, i32 %422)
  %424 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %425 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %424, i32 0, i32 23
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %452

428:                                              ; preds = %389
  %429 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %430 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = sdiv i32 %431, 3
  store i32 %432, i32* %14, align 4
  %433 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %434 = load i32, i32* %14, align 4
  %435 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %436 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %435, i32 0, i32 21
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @ENETDMA_FLOWCL_REG(i32 %437)
  %439 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %433, i32 %434, i32 %438)
  %440 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %441 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = mul nsw i32 %442, 2
  %444 = sdiv i32 %443, 3
  store i32 %444, i32* %14, align 4
  %445 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %446 = load i32, i32* %14, align 4
  %447 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %448 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %447, i32 0, i32 21
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @ENETDMA_FLOWCH_REG(i32 %449)
  %451 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %445, i32 %446, i32 %450)
  br label %477

452:                                              ; preds = %389
  %453 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %454 = load i32, i32* @ENETDMAC_FC, align 4
  %455 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %456 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %455, i32 0, i32 21
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %453, i32 5, i32 %454, i32 %457)
  %459 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %460 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %461 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @ENETDMAC_LEN, align 4
  %464 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %465 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %464, i32 0, i32 21
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %459, i32 %462, i32 %463, i32 %466)
  %468 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %469 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %470 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %469, i32 0, i32 5
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @ENETDMAC_LEN, align 4
  %473 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %474 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %473, i32 0, i32 20
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %468, i32 %471, i32 %472, i32 %475)
  br label %477

477:                                              ; preds = %452, %428
  %478 = call i32 (...) @wmb()
  %479 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %480 = load i32, i32* @ENET_CTL_REG, align 4
  %481 = call i32 @enet_readl(%struct.bcm_enet_priv* %479, i32 %480)
  store i32 %481, i32* %14, align 4
  %482 = load i32, i32* @ENET_CTL_ENABLE_MASK, align 4
  %483 = load i32, i32* %14, align 4
  %484 = or i32 %483, %482
  store i32 %484, i32* %14, align 4
  %485 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %486 = load i32, i32* %14, align 4
  %487 = load i32, i32* @ENET_CTL_REG, align 4
  %488 = call i32 @enet_writel(%struct.bcm_enet_priv* %485, i32 %486, i32 %487)
  %489 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %490 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %489, i32 0, i32 23
  %491 = load i64, i64* %490, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %498

493:                                              ; preds = %477
  %494 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %495 = load i32, i32* @ENETDMA_CFG_EN_MASK, align 4
  %496 = load i32, i32* @ENETDMA_CFG_REG, align 4
  %497 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %494, i32 %495, i32 %496)
  br label %498

498:                                              ; preds = %493, %477
  %499 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %500 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %501 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %500, i32 0, i32 11
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* @ENETDMAC_CHANCFG, align 4
  %504 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %505 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %504, i32 0, i32 21
  %506 = load i32, i32* %505, align 8
  %507 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %499, i32 %502, i32 %503, i32 %506)
  %508 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %509 = load i32, i32* @ENET_IR_MIB, align 4
  %510 = load i32, i32* @ENET_IR_REG, align 4
  %511 = call i32 @enet_writel(%struct.bcm_enet_priv* %508, i32 %509, i32 %510)
  %512 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %513 = load i32, i32* @ENET_IR_MIB, align 4
  %514 = load i32, i32* @ENET_IRMASK_REG, align 4
  %515 = call i32 @enet_writel(%struct.bcm_enet_priv* %512, i32 %513, i32 %514)
  %516 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %517 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %518 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %517, i32 0, i32 12
  %519 = load i32, i32* %518, align 8
  %520 = load i32, i32* @ENETDMAC_IR, align 4
  %521 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %522 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %521, i32 0, i32 21
  %523 = load i32, i32* %522, align 8
  %524 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %516, i32 %519, i32 %520, i32 %523)
  %525 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %526 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %527 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %526, i32 0, i32 12
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* @ENETDMAC_IR, align 4
  %530 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %531 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %530, i32 0, i32 20
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %525, i32 %528, i32 %529, i32 %532)
  %534 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %535 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %534, i32 0, i32 22
  %536 = call i32 @napi_enable(i32* %535)
  %537 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %538 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %539 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %538, i32 0, i32 12
  %540 = load i32, i32* %539, align 8
  %541 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %542 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %543 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %542, i32 0, i32 21
  %544 = load i32, i32* %543, align 8
  %545 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %537, i32 %540, i32 %541, i32 %544)
  %546 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %547 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %548 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %547, i32 0, i32 12
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %551 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %552 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %551, i32 0, i32 20
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %546, i32 %549, i32 %550, i32 %553)
  %555 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %556 = icmp ne %struct.phy_device* %555, null
  br i1 %556, label %557, label %560

557:                                              ; preds = %498
  %558 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %559 = call i32 @phy_start(%struct.phy_device* %558)
  br label %563

560:                                              ; preds = %498
  %561 = load %struct.net_device*, %struct.net_device** %3, align 8
  %562 = call i32 @bcm_enet_adjust_link(%struct.net_device* %561)
  br label %563

563:                                              ; preds = %560, %557
  %564 = load %struct.net_device*, %struct.net_device** %3, align 8
  %565 = call i32 @netif_start_queue(%struct.net_device* %564)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %670

566:                                              ; preds = %286
  store i32 0, i32* %8, align 4
  br label %567

567:                                              ; preds = %607, %566
  %568 = load i32, i32* %8, align 4
  %569 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %570 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %569, i32 0, i32 2
  %571 = load i32, i32* %570, align 8
  %572 = icmp slt i32 %568, %571
  br i1 %572, label %573, label %610

573:                                              ; preds = %567
  %574 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %575 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %574, i32 0, i32 18
  %576 = load i32*, i32** %575, align 8
  %577 = load i32, i32* %8, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %576, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %583, label %582

582:                                              ; preds = %573
  br label %607

583:                                              ; preds = %573
  %584 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %585 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %584, i32 0, i32 15
  %586 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %585, align 8
  %587 = load i32, i32* %8, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %586, i64 %588
  store %struct.bcm_enet_desc* %589, %struct.bcm_enet_desc** %16, align 8
  %590 = load %struct.device*, %struct.device** %6, align 8
  %591 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %16, align 8
  %592 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %595 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %594, i32 0, i32 19
  %596 = load i32, i32* %595, align 8
  %597 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %598 = call i32 @dma_unmap_single(%struct.device* %590, i32 %593, i32 %596, i32 %597)
  %599 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %600 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %599, i32 0, i32 18
  %601 = load i32*, i32** %600, align 8
  %602 = load i32, i32* %8, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = call i32 @kfree_skb(i32 %605)
  br label %607

607:                                              ; preds = %583, %582
  %608 = load i32, i32* %8, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %8, align 4
  br label %567

610:                                              ; preds = %567
  %611 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %612 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %611, i32 0, i32 18
  %613 = load i32*, i32** %612, align 8
  %614 = call i32 @kfree(i32* %613)
  br label %615

615:                                              ; preds = %610, %252
  %616 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %617 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %616, i32 0, i32 17
  %618 = load i32*, i32** %617, align 8
  %619 = call i32 @kfree(i32* %618)
  br label %620

620:                                              ; preds = %615, %224
  %621 = load %struct.device*, %struct.device** %6, align 8
  %622 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %623 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %622, i32 0, i32 7
  %624 = load i32, i32* %623, align 4
  %625 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %626 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %625, i32 0, i32 16
  %627 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %626, align 8
  %628 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %629 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %628, i32 0, i32 6
  %630 = load i32, i32* %629, align 8
  %631 = call i32 @dma_free_coherent(%struct.device* %621, i32 %624, %struct.bcm_enet_desc* %627, i32 %630)
  br label %632

632:                                              ; preds = %620, %201
  %633 = load %struct.device*, %struct.device** %6, align 8
  %634 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %635 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %634, i32 0, i32 4
  %636 = load i32, i32* %635, align 8
  %637 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %638 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %637, i32 0, i32 15
  %639 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %638, align 8
  %640 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %641 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %640, i32 0, i32 3
  %642 = load i32, i32* %641, align 4
  %643 = call i32 @dma_free_coherent(%struct.device* %633, i32 %636, %struct.bcm_enet_desc* %639, i32 %642)
  br label %644

644:                                              ; preds = %632, %176
  %645 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %646 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %645, i32 0, i32 14
  %647 = load i32, i32* %646, align 8
  %648 = load %struct.net_device*, %struct.net_device** %3, align 8
  %649 = call i32 @free_irq(i32 %647, %struct.net_device* %648)
  br label %650

650:                                              ; preds = %644, %135
  %651 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %652 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %651, i32 0, i32 13
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.net_device*, %struct.net_device** %3, align 8
  %655 = call i32 @free_irq(i32 %653, %struct.net_device* %654)
  br label %656

656:                                              ; preds = %650, %122
  %657 = load %struct.net_device*, %struct.net_device** %3, align 8
  %658 = getelementptr inbounds %struct.net_device, %struct.net_device* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 4
  %660 = load %struct.net_device*, %struct.net_device** %3, align 8
  %661 = call i32 @free_irq(i32 %659, %struct.net_device* %660)
  br label %662

662:                                              ; preds = %656, %109
  %663 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %664 = icmp ne %struct.phy_device* %663, null
  br i1 %664, label %665, label %668

665:                                              ; preds = %662
  %666 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %667 = call i32 @phy_disconnect(%struct.phy_device* %666)
  br label %668

668:                                              ; preds = %665, %662
  %669 = load i32, i32* %9, align 4
  store i32 %669, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %670

670:                                              ; preds = %668, %563, %51
  %671 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %671)
  %672 = load i32, i32* %2, align 4
  ret i32 %672
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.phy_device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #2

declare dso_local i32 @phy_support_sym_pause(%struct.phy_device*) #2

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #2

declare dso_local i32 @phy_set_sym_pause(%struct.phy_device*, i32, i32, i32) #2

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #2

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #2

declare dso_local i32 @enet_dmac_writel(%struct.bcm_enet_priv*, i32, i32, i32) #2

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #2

declare dso_local i32 @ENET_PML_REG(i32) #2

declare dso_local i32 @ENET_PMH_REG(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @bcm_enet_set_mac_address(%struct.net_device*, %struct.sockaddr*) #2

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #2

declare dso_local i8* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @enet_dma_writel(%struct.bcm_enet_priv*, i32, i32) #2

declare dso_local i32 @ENETDMA_BUFALLOC_REG(i32) #2

declare dso_local i64 @bcm_enet_refill_rx(%struct.net_device*) #2

declare dso_local i32 @enet_dmas_writel(%struct.bcm_enet_priv*, i32, i32, i32) #2

declare dso_local i32 @ENETDMA_FLOWCL_REG(i32) #2

declare dso_local i32 @ENETDMA_FLOWCH_REG(i32) #2

declare dso_local i32 @wmb(...) #2

declare dso_local i32 @enet_readl(%struct.bcm_enet_priv*, i32) #2

declare dso_local i32 @napi_enable(i32*) #2

declare dso_local i32 @phy_start(%struct.phy_device*) #2

declare dso_local i32 @bcm_enet_adjust_link(%struct.net_device*) #2

declare dso_local i32 @netif_start_queue(%struct.net_device*) #2

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #2

declare dso_local i32 @kfree_skb(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.bcm_enet_desc*, i32) #2

declare dso_local i32 @free_irq(i32, %struct.net_device*) #2

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
