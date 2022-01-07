; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32, i32, i32 }
%struct.smsc911x_data = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error starting phy\00", align 1
@hw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"soft reset failed\00", align 1
@HW_CFG = common dso_local global i32 0, align 4
@AFC_CFG = common dso_local global i32 0, align 4
@VLAN1 = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Timed out waiting for EEPROM busy bit to clear\00", align 1
@GPIO_CFG = common dso_local global i32 0, align 4
@INT_CFG_IRQ_EN_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"irq polarity: active high\00", align 1
@INT_CFG_IRQ_POL_ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"irq polarity: active low\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"irq type: push-pull\00", align 1
@INT_CFG_IRQ_TYPE_ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"irq type: open drain\00", align 1
@INT_CFG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Testing irq handler using IRQ %d\00", align 1
@smsc911x_irqhandler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Unable to claim requested irq: %d\00", align 1
@INT_EN = common dso_local global i32 0, align 4
@INT_EN_SW_INT_EN_ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"ISR failed signaling test (IRQ %d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"IRQ handler passed test using IRQ %d\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"SMSC911x/921x identified at %#08lx, IRQ: %d\0A\00", align 1
@HW_CFG_TX_FIF_SZ_ = common dso_local global i32 0, align 4
@HW_CFG_SF_ = common dso_local global i32 0, align 4
@FIFO_INT = common dso_local global i32 0, align 4
@FIFO_INT_TX_AVAIL_LEVEL_ = common dso_local global i32 0, align 4
@FIFO_INT_RX_STS_LEVEL_ = common dso_local global i32 0, align 4
@RX_CFG = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@INT_EN_TDFA_EN_ = common dso_local global i32 0, align 4
@INT_EN_RSFL_EN_ = common dso_local global i32 0, align 4
@INT_EN_RXSTOP_INT_EN_ = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_TXEN_ = common dso_local global i32 0, align 4
@MAC_CR_RXEN_ = common dso_local global i32 0, align 4
@MAC_CR_HBDIS_ = common dso_local global i32 0, align 4
@TX_CFG = common dso_local global i32 0, align 4
@TX_CFG_TX_ON_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc911x_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %10)
  store %struct.smsc911x_data* %11, %struct.smsc911x_data** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @smsc911x_mii_probe(%struct.net_device* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %23 = load i32, i32* @probe, align 4
  %24 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %22, i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %316

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %28 = call i32 @smsc911x_soft_reset(%struct.smsc911x_data* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %33 = load i32, i32* @hw, align 4
  %34 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %32, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %309

35:                                               ; preds = %26
  %36 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %37 = load i32, i32* @HW_CFG, align 4
  %38 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %36, i32 %37, i32 327680)
  %39 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %40 = load i32, i32* @AFC_CFG, align 4
  %41 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %39, i32 %40, i32 7223104)
  %42 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %43 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %46 = load i32, i32* @VLAN1, align 4
  %47 = load i32, i32* @ETH_P_8021Q, align 4
  %48 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %45, i32 %46, i32 %47)
  %49 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %50 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock_irq(i32* %50)
  store i32 50, i32* %5, align 4
  br label %52

52:                                               ; preds = %65, %35
  %53 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %54 = load i32, i32* @E2P_CMD, align 4
  %55 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %53, i32 %54)
  %56 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br label %63

63:                                               ; preds = %59, %52
  %64 = phi i1 [ false, %52 ], [ %62, %59 ]
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = call i32 @udelay(i32 10)
  br label %52

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %75 = load i32, i32* @ifup, align 4
  %76 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %74, i32 %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %79 = load i32, i32* @GPIO_CFG, align 4
  %80 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %78, i32 %79, i32 1879506944)
  %81 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %82 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %81, i32 0, i32 2
  %83 = call i32 @spin_lock_irq(i32* %82)
  %84 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @smsc911x_set_hw_mac_address(%struct.smsc911x_data* %84, i32 %87)
  %89 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %90 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %89, i32 0, i32 2
  %91 = call i32 @spin_unlock_irq(i32* %90)
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @smsc911x_disable_irq_chip(%struct.net_device* %92)
  %94 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %95 = or i32 167772160, %94
  store i32 %95, i32* %7, align 4
  %96 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %97 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %77
  %102 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %103 = load i32, i32* @ifup, align 4
  %104 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %102, i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @INT_CFG_IRQ_POL_, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %112

108:                                              ; preds = %77
  %109 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %110 = load i32, i32* @ifup, align 4
  %111 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %109, i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %101
  %113 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %114 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %120 = load i32, i32* @ifup, align 4
  %121 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %119, i32 %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* @INT_CFG_IRQ_TYPE_, align 4
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %129

125:                                              ; preds = %112
  %126 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %127 = load i32, i32* @ifup, align 4
  %128 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %126, i32 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %118
  %130 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %131 = load i32, i32* @INT_CFG, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %130, i32 %131, i32 %132)
  %134 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %135 = load i32, i32* @ifup, align 4
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %134, i32 %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %138)
  %140 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %141 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = call i32 (...) @smp_wmb()
  %143 = load %struct.net_device*, %struct.net_device** %3, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @irq_get_trigger_type(i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load %struct.net_device*, %struct.net_device** %3, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @smsc911x_irqhandler, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @IRQF_SHARED, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.net_device*, %struct.net_device** %3, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.net_device*, %struct.net_device** %3, align 8
  %158 = call i32 @request_irq(i32 %149, i32 %150, i32 %153, i32 %156, %struct.net_device* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %129
  %162 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %163 = load i32, i32* @probe, align 4
  %164 = load %struct.net_device*, %struct.net_device** %3, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %162, i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %166)
  br label %309

168:                                              ; preds = %129
  %169 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %170 = load i32, i32* @INT_EN, align 4
  %171 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %169, i32 %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* @INT_EN_SW_INT_EN_, align 4
  %173 = load i32, i32* %6, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %6, align 4
  %175 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %176 = load i32, i32* @INT_EN, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %175, i32 %176, i32 %177)
  store i32 1000, i32* %5, align 4
  br label %179

179:                                              ; preds = %189, %168
  %180 = load i32, i32* %5, align 4
  %181 = add i32 %180, -1
  store i32 %181, i32* %5, align 4
  %182 = icmp ne i32 %180, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %185 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %191

189:                                              ; preds = %183
  %190 = call i32 @msleep(i32 1)
  br label %179

191:                                              ; preds = %188, %179
  %192 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %193 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %191
  %197 = load %struct.net_device*, %struct.net_device** %3, align 8
  %198 = load %struct.net_device*, %struct.net_device** %3, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @netdev_warn(%struct.net_device* %197, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @ENODEV, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %8, align 4
  br label %303

204:                                              ; preds = %191
  %205 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %206 = load i32, i32* @ifup, align 4
  %207 = load %struct.net_device*, %struct.net_device** %3, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %205, i32 %206, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %209)
  %211 = load %struct.net_device*, %struct.net_device** %3, align 8
  %212 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %213 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.net_device*, %struct.net_device** %3, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @netdev_info(%struct.net_device* %211, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i64 %214, i32 %217)
  %219 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %220 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %219, i32 0, i32 0
  store i32 -1, i32* %220, align 8
  %221 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %222 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %221, i32 0, i32 1
  store i32 -1, i32* %222, align 4
  %223 = load %struct.net_device*, %struct.net_device** %3, align 8
  %224 = getelementptr inbounds %struct.net_device, %struct.net_device* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @phy_start(i32* %225)
  %227 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %228 = load i32, i32* @HW_CFG, align 4
  %229 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %227, i32 %228)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* @HW_CFG_TX_FIF_SZ_, align 4
  %231 = or i32 %230, 4095
  %232 = load i32, i32* %6, align 4
  %233 = and i32 %232, %231
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* @HW_CFG_SF_, align 4
  %235 = load i32, i32* %6, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %6, align 4
  %237 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %238 = load i32, i32* @HW_CFG, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %237, i32 %238, i32 %239)
  %241 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %242 = load i32, i32* @FIFO_INT, align 4
  %243 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %241, i32 %242)
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* @FIFO_INT_TX_AVAIL_LEVEL_, align 4
  %245 = load i32, i32* %6, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* @FIFO_INT_RX_STS_LEVEL_, align 4
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %6, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %6, align 4
  %251 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %252 = load i32, i32* @FIFO_INT, align 4
  %253 = load i32, i32* %6, align 4
  %254 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %251, i32 %252, i32 %253)
  %255 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %256 = load i32, i32* @RX_CFG, align 4
  %257 = load i32, i32* @NET_IP_ALIGN, align 4
  %258 = shl i32 %257, 8
  %259 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %255, i32 %256, i32 %258)
  %260 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %261 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %260, i32 0, i32 3
  %262 = call i32 @napi_enable(i32* %261)
  %263 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %264 = load i32, i32* @INT_EN, align 4
  %265 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %263, i32 %264)
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* @INT_EN_TDFA_EN_, align 4
  %267 = load i32, i32* @INT_EN_RSFL_EN_, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @INT_EN_RXSTOP_INT_EN_, align 4
  %270 = or i32 %268, %269
  %271 = load i32, i32* %6, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %6, align 4
  %273 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %274 = load i32, i32* @INT_EN, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %273, i32 %274, i32 %275)
  %277 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %278 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %277, i32 0, i32 2
  %279 = call i32 @spin_lock_irq(i32* %278)
  %280 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %281 = load i32, i32* @MAC_CR, align 4
  %282 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %280, i32 %281)
  store i32 %282, i32* %6, align 4
  %283 = load i32, i32* @MAC_CR_TXEN_, align 4
  %284 = load i32, i32* @MAC_CR_RXEN_, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @MAC_CR_HBDIS_, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* %6, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %6, align 4
  %290 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %291 = load i32, i32* @MAC_CR, align 4
  %292 = load i32, i32* %6, align 4
  %293 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %290, i32 %291, i32 %292)
  %294 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %295 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %294, i32 0, i32 2
  %296 = call i32 @spin_unlock_irq(i32* %295)
  %297 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %298 = load i32, i32* @TX_CFG, align 4
  %299 = load i32, i32* @TX_CFG_TX_ON_, align 4
  %300 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %297, i32 %298, i32 %299)
  %301 = load %struct.net_device*, %struct.net_device** %3, align 8
  %302 = call i32 @netif_start_queue(%struct.net_device* %301)
  store i32 0, i32* %2, align 4
  br label %318

303:                                              ; preds = %196
  %304 = load %struct.net_device*, %struct.net_device** %3, align 8
  %305 = getelementptr inbounds %struct.net_device, %struct.net_device* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.net_device*, %struct.net_device** %3, align 8
  %308 = call i32 @free_irq(i32 %306, %struct.net_device* %307)
  br label %309

309:                                              ; preds = %303, %161, %31
  %310 = load %struct.net_device*, %struct.net_device** %3, align 8
  %311 = getelementptr inbounds %struct.net_device, %struct.net_device* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = call i32 @phy_disconnect(i32* %312)
  %314 = load %struct.net_device*, %struct.net_device** %3, align 8
  %315 = getelementptr inbounds %struct.net_device, %struct.net_device* %314, i32 0, i32 0
  store i32* null, i32** %315, align 8
  br label %316

316:                                              ; preds = %309, %21
  %317 = load i32, i32* %8, align 4
  store i32 %317, i32* %2, align 4
  br label %318

318:                                              ; preds = %316, %204
  %319 = load i32, i32* %2, align 4
  ret i32 %319
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc911x_mii_probe(%struct.net_device*) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @smsc911x_soft_reset(%struct.smsc911x_data*) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @smsc911x_mac_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smsc911x_set_hw_mac_address(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @smsc911x_disable_irq_chip(%struct.net_device*) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i32) #1

declare dso_local i32 @phy_start(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @smsc911x_mac_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
