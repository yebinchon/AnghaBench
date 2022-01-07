; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.smsc9420_pdata = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dev_addr is not a valid MAC address\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@INT_CFG = common dso_local global i32 0, align 4
@INT_CFG_IRQ_EN_ = common dso_local global i32 0, align 4
@INT_CTL = common dso_local global i32 0, align 4
@DMAC_INTR_ENA = common dso_local global i32 0, align 4
@INT_STAT = common dso_local global i32 0, align 4
@smsc9420_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to use IRQ = %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@GPIO_CFG = common dso_local global i32 0, align 4
@GPIO_CFG_LED_3_ = common dso_local global i32 0, align 4
@GPIO_CFG_LED_2_ = common dso_local global i32 0, align 4
@GPIO_CFG_LED_1_ = common dso_local global i32 0, align 4
@BUS_MODE_DMA_BURST_LENGTH_16 = common dso_local global i32 0, align 4
@BUS_MODE = common dso_local global i32 0, align 4
@BUS_CFG = common dso_local global i32 0, align 4
@BUS_CFG_RXTXWEIGHT_4_1 = common dso_local global i32 0, align 4
@DMAC_CONTROL = common dso_local global i32 0, align 4
@DMAC_CONTROL_SF_ = common dso_local global i32 0, align 4
@DMAC_CONTROL_OSF_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Testing ISR using IRQ %d\0A\00", align 1
@INT_CFG_INT_DEAS_MASK = common dso_local global i32 0, align 4
@INT_DEAS_TIME = common dso_local global i32 0, align 4
@INT_CTL_SW_INT_EN_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"ISR failed signaling test\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ISR passed test using IRQ %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to Initialize tx dma ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to Initialize rx dma ring\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to initialize Phy\0A\00", align 1
@MAC_CR_TXEN_ = common dso_local global i32 0, align 4
@MAC_CR_RXEN_ = common dso_local global i32 0, align 4
@DMAC_CONTROL_ST_ = common dso_local global i32 0, align 4
@DMAC_CONTROL_SR_ = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_TX_ = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_RX_ = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_NIS_ = common dso_local global i32 0, align 4
@RX_POLL_DEMAND = common dso_local global i32 0, align 4
@BUS_MODE_DBO_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc9420_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %15)
  store %struct.smsc9420_pdata* %16, %struct.smsc9420_pdata** %4, align 8
  %17 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %18 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @is_valid_ether_addr(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %1
  %28 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %29 = load i32, i32* @ifup, align 4
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %31 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.smsc9420_pdata*, i32, i32, i8*, ...) @netif_warn(%struct.smsc9420_pdata* %28, i32 %29, i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EADDRNOTAVAIL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %341

36:                                               ; preds = %1
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netif_carrier_off(%struct.net_device* %37)
  %39 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %40 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %39, i32 0, i32 1
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %44 = load i32, i32* @INT_CFG, align 4
  %45 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %43, i32 %44)
  %46 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %50 = load i32, i32* @INT_CFG, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %49, i32 %50, i32 %51)
  %53 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %54 = load i32, i32* @INT_CTL, align 4
  %55 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %53, i32 %54, i32 0)
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %57 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %56, i32 0, i32 1
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %61 = load i32, i32* @DMAC_INTR_ENA, align 4
  %62 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %60, i32 %61, i32 0)
  %63 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %64 = load i32, i32* @INT_STAT, align 4
  %65 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %63, i32 %64, i32 -1)
  %66 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %67 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %66)
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @smsc9420_isr, align 4
  %70 = load i32, i32* @IRQF_SHARED, align 4
  %71 = load i32, i32* @DRV_NAME, align 4
  %72 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %73 = call i32 @request_irq(i32 %68, i32 %69, i32 %70, i32 %71, %struct.smsc9420_pdata* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %36
  %77 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %78 = load i32, i32* @ifup, align 4
  %79 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %80 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (%struct.smsc9420_pdata*, i32, i32, i8*, ...) @netif_warn(%struct.smsc9420_pdata* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %341

86:                                               ; preds = %36
  %87 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %88 = call i32 @smsc9420_dmac_soft_reset(%struct.smsc9420_pdata* %87)
  %89 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %90 = load i32, i32* @MAC_CR, align 4
  %91 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %89, i32 %90, i32 0)
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @smsc9420_set_mac_address(%struct.net_device* %92)
  %94 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %95 = load i32, i32* @GPIO_CFG, align 4
  %96 = load i32, i32* @GPIO_CFG_LED_3_, align 4
  %97 = load i32, i32* @GPIO_CFG_LED_2_, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @GPIO_CFG_LED_1_, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %94, i32 %95, i32 %100)
  %102 = load i32, i32* @BUS_MODE_DMA_BURST_LENGTH_16, align 4
  store i32 %102, i32* %5, align 4
  %103 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %104 = load i32, i32* @BUS_MODE, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %103, i32 %104, i32 %105)
  %107 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %108 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %107)
  %109 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %110 = load i32, i32* @BUS_CFG, align 4
  %111 = load i32, i32* @BUS_CFG_RXTXWEIGHT_4_1, align 4
  %112 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %109, i32 %110, i32 %111)
  %113 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %114 = load i32, i32* @DMAC_CONTROL, align 4
  %115 = load i32, i32* @DMAC_CONTROL_SF_, align 4
  %116 = load i32, i32* @DMAC_CONTROL_OSF_, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %113, i32 %114, i32 %117)
  %119 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %120 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %119)
  %121 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %122 = load i32, i32* @ifup, align 4
  %123 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %124 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @netif_dbg(%struct.smsc9420_pdata* %121, i32 %122, i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %129 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %131 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %130, i32 0, i32 1
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @spin_lock_irqsave(i32* %131, i64 %132)
  %134 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %135 = load i32, i32* @INT_CFG, align 4
  %136 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %134, i32 %135)
  %137 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @INT_CFG_INT_DEAS_MASK, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* @INT_DEAS_TIME, align 4
  %144 = load i32, i32* @INT_CFG_INT_DEAS_MASK, align 4
  %145 = and i32 %143, %144
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  %148 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %149 = load i32, i32* @INT_CFG, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %148, i32 %149, i32 %150)
  %152 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %153 = load i32, i32* @INT_CTL, align 4
  %154 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %152, i32 %153)
  %155 = load i32, i32* @INT_CTL_SW_INT_EN_, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %10, align 4
  %157 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %158 = load i32, i32* @INT_CTL, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %157, i32 %158, i32 %159)
  %161 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %162 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %161, i32 0, i32 1
  %163 = load i64, i64* %12, align 8
  %164 = call i32 @spin_unlock_irqrestore(i32* %162, i64 %163)
  %165 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %166 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %165)
  store i32 1000, i32* %14, align 4
  br label %167

167:                                              ; preds = %177, %86
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %14, align 4
  %170 = icmp ne i32 %168, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %173 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %179

177:                                              ; preds = %171
  %178 = call i32 @msleep(i32 1)
  br label %167

179:                                              ; preds = %176, %167
  %180 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %181 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %180, i32 0, i32 1
  %182 = load i64, i64* %12, align 8
  %183 = call i32 @spin_lock_irqsave(i32* %181, i64 %182)
  %184 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %185 = load i32, i32* @INT_CFG, align 4
  %186 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %184, i32 %185)
  %187 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %188 = xor i32 %187, -1
  %189 = and i32 %186, %188
  store i32 %189, i32* %8, align 4
  %190 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %191 = load i32, i32* @INT_CFG, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %190, i32 %191, i32 %192)
  %194 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %195 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %194, i32 0, i32 1
  %196 = load i64, i64* %12, align 8
  %197 = call i32 @spin_unlock_irqrestore(i32* %195, i64 %196)
  %198 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %199 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %179
  %203 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %204 = load i32, i32* @ifup, align 4
  %205 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %206 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (%struct.smsc9420_pdata*, i32, i32, i8*, ...) @netif_warn(%struct.smsc9420_pdata* %203, i32 %204, i32 %207, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %209 = load i32, i32* @ENODEV, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %13, align 4
  br label %337

211:                                              ; preds = %179
  %212 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %213 = load i32, i32* @ifup, align 4
  %214 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %215 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @netif_dbg(%struct.smsc9420_pdata* %212, i32 %213, i32 %216, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %217)
  %219 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %220 = call i32 @smsc9420_alloc_tx_ring(%struct.smsc9420_pdata* %219)
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %211
  %224 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %225 = load i32, i32* @ifup, align 4
  %226 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %227 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (%struct.smsc9420_pdata*, i32, i32, i8*, ...) @netif_warn(%struct.smsc9420_pdata* %224, i32 %225, i32 %228, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %230 = load i32, i32* @ENOMEM, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %13, align 4
  br label %337

232:                                              ; preds = %211
  %233 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %234 = call i32 @smsc9420_alloc_rx_ring(%struct.smsc9420_pdata* %233)
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %239 = load i32, i32* @ifup, align 4
  %240 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %241 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (%struct.smsc9420_pdata*, i32, i32, i8*, ...) @netif_warn(%struct.smsc9420_pdata* %238, i32 %239, i32 %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %244 = load i32, i32* @ENOMEM, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %13, align 4
  br label %334

246:                                              ; preds = %232
  %247 = load %struct.net_device*, %struct.net_device** %3, align 8
  %248 = call i32 @smsc9420_mii_init(%struct.net_device* %247)
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %253 = load i32, i32* @ifup, align 4
  %254 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %255 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (%struct.smsc9420_pdata*, i32, i32, i8*, ...) @netif_warn(%struct.smsc9420_pdata* %252, i32 %253, i32 %256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %258 = load i32, i32* @ENODEV, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %13, align 4
  br label %331

260:                                              ; preds = %246
  %261 = load %struct.net_device*, %struct.net_device** %3, align 8
  %262 = getelementptr inbounds %struct.net_device, %struct.net_device* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @phy_start(i32 %263)
  %265 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %266 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %265, i32 0, i32 2
  %267 = call i32 @napi_enable(i32* %266)
  %268 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %269 = load i32, i32* @MAC_CR, align 4
  %270 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %268, i32 %269)
  %271 = load i32, i32* @MAC_CR_TXEN_, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @MAC_CR_RXEN_, align 4
  %274 = or i32 %272, %273
  store i32 %274, i32* %6, align 4
  %275 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %276 = load i32, i32* @MAC_CR, align 4
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %275, i32 %276, i32 %277)
  %279 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %280 = load i32, i32* @DMAC_CONTROL, align 4
  %281 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %279, i32 %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* @DMAC_CONTROL_ST_, align 4
  %283 = load i32, i32* @DMAC_CONTROL_SR_, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* %7, align 4
  %286 = or i32 %285, %284
  store i32 %286, i32* %7, align 4
  %287 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %288 = load i32, i32* @DMAC_CONTROL, align 4
  %289 = load i32, i32* %7, align 4
  %290 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %287, i32 %288, i32 %289)
  %291 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %292 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %291)
  %293 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %294 = load i32, i32* @DMAC_INTR_ENA, align 4
  %295 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %293, i32 %294)
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* @DMAC_INTR_ENA_TX_, align 4
  %297 = load i32, i32* @DMAC_INTR_ENA_RX_, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @DMAC_INTR_ENA_NIS_, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* %9, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %9, align 4
  %303 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %304 = load i32, i32* @DMAC_INTR_ENA, align 4
  %305 = load i32, i32* %9, align 4
  %306 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %303, i32 %304, i32 %305)
  %307 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %308 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %307)
  %309 = load %struct.net_device*, %struct.net_device** %3, align 8
  %310 = call i32 @netif_wake_queue(%struct.net_device* %309)
  %311 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %312 = load i32, i32* @RX_POLL_DEMAND, align 4
  %313 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %311, i32 %312, i32 1)
  %314 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %315 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %314, i32 0, i32 1
  %316 = load i64, i64* %12, align 8
  %317 = call i32 @spin_lock_irqsave(i32* %315, i64 %316)
  %318 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %319 = load i32, i32* @INT_CFG, align 4
  %320 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %318, i32 %319)
  %321 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %322 = or i32 %320, %321
  store i32 %322, i32* %8, align 4
  %323 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %324 = load i32, i32* @INT_CFG, align 4
  %325 = load i32, i32* %8, align 4
  %326 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %323, i32 %324, i32 %325)
  %327 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %328 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %327, i32 0, i32 1
  %329 = load i64, i64* %12, align 8
  %330 = call i32 @spin_unlock_irqrestore(i32* %328, i64 %329)
  store i32 0, i32* %2, align 4
  br label %343

331:                                              ; preds = %251
  %332 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %333 = call i32 @smsc9420_free_rx_ring(%struct.smsc9420_pdata* %332)
  br label %334

334:                                              ; preds = %331, %237
  %335 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %336 = call i32 @smsc9420_free_tx_ring(%struct.smsc9420_pdata* %335)
  br label %337

337:                                              ; preds = %334, %223, %202
  %338 = load i32, i32* %11, align 4
  %339 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %340 = call i32 @free_irq(i32 %338, %struct.smsc9420_pdata* %339)
  br label %341

341:                                              ; preds = %337, %76, %27
  %342 = load i32, i32* %13, align 4
  store i32 %342, i32* %2, align 4
  br label %343

343:                                              ; preds = %341, %260
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @netif_warn(%struct.smsc9420_pdata*, i32, i32, i8*, ...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_dmac_soft_reset(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_set_mac_address(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.smsc9420_pdata*, i32, i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smsc9420_alloc_tx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_alloc_rx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_mii_init(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @smsc9420_free_rx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @smsc9420_free_tx_ring(%struct.smsc9420_pdata*) #1

declare dso_local i32 @free_irq(i32, %struct.smsc9420_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
