; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32, i32, i32*, i32*, i32 }
%struct.macb = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, %struct.macb_queue*, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.macb_queue = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.macb* }

@DEFAULT_TX_RING_SIZE = common dso_local global i32 0, align 4
@DEFAULT_RX_RING_SIZE = common dso_local global i32 0, align 4
@MACB_MAX_QUEUES = common dso_local global i32 0, align 4
@macb_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@MACB_ISR = common dso_local global i32 0, align 4
@MACB_IER = common dso_local global i32 0, align 4
@MACB_IDR = common dso_local global i32 0, align 4
@MACB_IMR = common dso_local global i32 0, align 4
@MACB_TBQP = common dso_local global i32 0, align 4
@MACB_RBQP = common dso_local global i32 0, align 4
@macb_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to request IRQ %d (error %d)\0A\00", align 1
@macb_tx_error_task = common dso_local global i32 0, align 4
@macb_netdev_ops = common dso_local global i32 0, align 4
@GEM_MAX_TX_LEN = common dso_local global i32 0, align 4
@gem_alloc_rx_buffers = common dso_local global i32 0, align 4
@gem_free_rx_buffers = common dso_local global i32 0, align 4
@gem_init_rings = common dso_local global i32 0, align 4
@gem_rx = common dso_local global i32 0, align 4
@gem_ethtool_ops = common dso_local global i32 0, align 4
@MACB_MAX_TX_LEN = common dso_local global i32 0, align 4
@macb_alloc_rx_buffers = common dso_local global i32 0, align 4
@macb_free_rx_buffers = common dso_local global i32 0, align 4
@macb_init_rings = common dso_local global i32 0, align 4
@macb_rx = common dso_local global i32 0, align 4
@macb_ethtool_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@PBUF_LSO = common dso_local global i32 0, align 4
@DCFG6 = common dso_local global i32 0, align 4
@MACB_NETIF_LSO = common dso_local global i32 0, align 4
@MACB_CAPS_FIFO_MODE = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@MACB_CAPS_SG_DISABLED = common dso_local global i32 0, align 4
@DCFG8 = common dso_local global i32 0, align 4
@SCR2CMP = common dso_local global i32 0, align 4
@T2SCR = common dso_local global i32 0, align 4
@SCR2ETH = common dso_local global i32 0, align 4
@ETHTCMP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@ETHT = common dso_local global i32 0, align 4
@SCRT2_ETHT = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@MACB_CAPS_USRIO_DISABLED = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@RGMII = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RMII = common dso_local global i64 0, align 8
@MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII = common dso_local global i32 0, align 4
@RMII = common dso_local global i32 0, align 4
@MII = common dso_local global i32 0, align 4
@MACB_CAPS_USRIO_HAS_CLKEN = common dso_local global i32 0, align 4
@CLKEN = common dso_local global i32 0, align 4
@USRIO = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@SGMIIEN = common dso_local global i32 0, align 4
@PCSSEL = common dso_local global i32 0, align 4
@NCFGR = common dso_local global i32 0, align 4
@HW_DMA_CAP_64B = common dso_local global i32 0, align 4
@MACB_RBQPH = common dso_local global i32 0, align 4
@MACB_TBQPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @macb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.macb*, align 8
  %8 = alloca %struct.macb_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.macb* @netdev_priv(%struct.net_device* %14)
  store %struct.macb* %15, %struct.macb** %7, align 8
  %16 = load i32, i32* @DEFAULT_TX_RING_SIZE, align 4
  %17 = load %struct.macb*, %struct.macb** %7, align 8
  %18 = getelementptr inbounds %struct.macb, %struct.macb* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DEFAULT_RX_RING_SIZE, align 4
  %20 = load %struct.macb*, %struct.macb** %7, align 8
  %21 = getelementptr inbounds %struct.macb, %struct.macb* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %144, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MACB_MAX_QUEUES, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %147

26:                                               ; preds = %22
  %27 = load %struct.macb*, %struct.macb** %7, align 8
  %28 = getelementptr inbounds %struct.macb, %struct.macb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %144

35:                                               ; preds = %26
  %36 = load %struct.macb*, %struct.macb** %7, align 8
  %37 = getelementptr inbounds %struct.macb, %struct.macb* %36, i32 0, i32 9
  %38 = load %struct.macb_queue*, %struct.macb_queue** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %38, i64 %40
  store %struct.macb_queue* %41, %struct.macb_queue** %8, align 8
  %42 = load %struct.macb*, %struct.macb** %7, align 8
  %43 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %44 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %43, i32 0, i32 12
  store %struct.macb* %42, %struct.macb** %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %47 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %46, i32 0, i32 11
  %48 = load i32, i32* @macb_poll, align 4
  %49 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %50 = call i32 @netif_napi_add(%struct.net_device* %45, i32* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %35
  %54 = load i32, i32* %5, align 4
  %55 = sub i32 %54, 1
  %56 = call i32 @GEM_ISR(i32 %55)
  %57 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %58 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub i32 %59, 1
  %61 = call i32 @GEM_IER(i32 %60)
  %62 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %63 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sub i32 %64, 1
  %66 = call i32 @GEM_IDR(i32 %65)
  %67 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %68 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sub i32 %69, 1
  %71 = call i32 @GEM_IMR(i32 %70)
  %72 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %73 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sub i32 %74, 1
  %76 = call i32 @GEM_TBQP(i32 %75)
  %77 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %78 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sub i32 %79, 1
  %81 = call i32 @GEM_RBQP(i32 %80)
  %82 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %83 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sub i32 %84, 1
  %86 = call i32 @GEM_RBQS(i32 %85)
  %87 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %88 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %87, i32 0, i32 10
  store i32 %86, i32* %88, align 8
  br label %108

89:                                               ; preds = %35
  %90 = load i32, i32* @MACB_ISR, align 4
  %91 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %92 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @MACB_IER, align 4
  %94 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %95 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @MACB_IDR, align 4
  %97 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %98 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @MACB_IMR, align 4
  %100 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %101 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @MACB_TBQP, align 4
  %103 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %104 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @MACB_RBQP, align 4
  %106 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %107 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %89, %53
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @platform_get_irq(%struct.platform_device* %109, i32 %110)
  %112 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %113 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %117 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @macb_interrupt, align 4
  %120 = load i32, i32* @IRQF_SHARED, align 4
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %125 = call i32 @devm_request_irq(i32* %115, i32 %118, i32 %119, i32 %120, i32 %123, %struct.macb_queue* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %108
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %132 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  store i32 %136, i32* %2, align 4
  br label %390

137:                                              ; preds = %108
  %138 = load %struct.macb_queue*, %struct.macb_queue** %8, align 8
  %139 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %138, i32 0, i32 0
  %140 = load i32, i32* @macb_tx_error_task, align 4
  %141 = call i32 @INIT_WORK(i32* %139, i32 %140)
  %142 = load i32, i32* %6, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %137, %34
  %145 = load i32, i32* %5, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %22

147:                                              ; preds = %22
  %148 = load %struct.net_device*, %struct.net_device** %4, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 3
  store i32* @macb_netdev_ops, i32** %149, align 8
  %150 = load %struct.macb*, %struct.macb** %7, align 8
  %151 = call i64 @macb_is_gem(%struct.macb* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %175

153:                                              ; preds = %147
  %154 = load i32, i32* @GEM_MAX_TX_LEN, align 4
  %155 = load %struct.macb*, %struct.macb** %7, align 8
  %156 = getelementptr inbounds %struct.macb, %struct.macb* %155, i32 0, i32 8
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @gem_alloc_rx_buffers, align 4
  %158 = load %struct.macb*, %struct.macb** %7, align 8
  %159 = getelementptr inbounds %struct.macb, %struct.macb* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* @gem_free_rx_buffers, align 4
  %162 = load %struct.macb*, %struct.macb** %7, align 8
  %163 = getelementptr inbounds %struct.macb, %struct.macb* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load i32, i32* @gem_init_rings, align 4
  %166 = load %struct.macb*, %struct.macb** %7, align 8
  %167 = getelementptr inbounds %struct.macb, %struct.macb* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* @gem_rx, align 4
  %170 = load %struct.macb*, %struct.macb** %7, align 8
  %171 = getelementptr inbounds %struct.macb, %struct.macb* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = load %struct.net_device*, %struct.net_device** %4, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 2
  store i32* @gem_ethtool_ops, i32** %174, align 8
  br label %197

175:                                              ; preds = %147
  %176 = load i32, i32* @MACB_MAX_TX_LEN, align 4
  %177 = load %struct.macb*, %struct.macb** %7, align 8
  %178 = getelementptr inbounds %struct.macb, %struct.macb* %177, i32 0, i32 8
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @macb_alloc_rx_buffers, align 4
  %180 = load %struct.macb*, %struct.macb** %7, align 8
  %181 = getelementptr inbounds %struct.macb, %struct.macb* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  store i32 %179, i32* %182, align 4
  %183 = load i32, i32* @macb_free_rx_buffers, align 4
  %184 = load %struct.macb*, %struct.macb** %7, align 8
  %185 = getelementptr inbounds %struct.macb, %struct.macb* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  store i32 %183, i32* %186, align 8
  %187 = load i32, i32* @macb_init_rings, align 4
  %188 = load %struct.macb*, %struct.macb** %7, align 8
  %189 = getelementptr inbounds %struct.macb, %struct.macb* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* @macb_rx, align 4
  %192 = load %struct.macb*, %struct.macb** %7, align 8
  %193 = getelementptr inbounds %struct.macb, %struct.macb* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load %struct.net_device*, %struct.net_device** %4, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 2
  store i32* @macb_ethtool_ops, i32** %196, align 8
  br label %197

197:                                              ; preds = %175, %153
  %198 = load i32, i32* @NETIF_F_SG, align 4
  %199 = load %struct.net_device*, %struct.net_device** %4, align 8
  %200 = getelementptr inbounds %struct.net_device, %struct.net_device* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @PBUF_LSO, align 4
  %202 = load %struct.macb*, %struct.macb** %7, align 8
  %203 = load i32, i32* @DCFG6, align 4
  %204 = call i32 @gem_readl(%struct.macb* %202, i32 %203)
  %205 = call i32 @GEM_BFEXT(i32 %201, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %197
  %208 = load i32, i32* @MACB_NETIF_LSO, align 4
  %209 = load %struct.net_device*, %struct.net_device** %4, align 8
  %210 = getelementptr inbounds %struct.net_device, %struct.net_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %207, %197
  %214 = load %struct.macb*, %struct.macb** %7, align 8
  %215 = call i64 @macb_is_gem(%struct.macb* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %213
  %218 = load %struct.macb*, %struct.macb** %7, align 8
  %219 = getelementptr inbounds %struct.macb, %struct.macb* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @MACB_CAPS_FIFO_MODE, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %217
  %225 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %226 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.net_device*, %struct.net_device** %4, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %224, %217, %213
  %233 = load %struct.macb*, %struct.macb** %7, align 8
  %234 = getelementptr inbounds %struct.macb, %struct.macb* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @MACB_CAPS_SG_DISABLED, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %232
  %240 = load i32, i32* @NETIF_F_SG, align 4
  %241 = xor i32 %240, -1
  %242 = load %struct.net_device*, %struct.net_device** %4, align 8
  %243 = getelementptr inbounds %struct.net_device, %struct.net_device* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = and i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %239, %232
  %247 = load %struct.net_device*, %struct.net_device** %4, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.net_device*, %struct.net_device** %4, align 8
  %251 = getelementptr inbounds %struct.net_device, %struct.net_device* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load %struct.macb*, %struct.macb** %7, align 8
  %253 = load i32, i32* @DCFG8, align 4
  %254 = call i32 @gem_readl(%struct.macb* %252, i32 %253)
  store i32 %254, i32* %11, align 4
  %255 = load i32, i32* @SCR2CMP, align 4
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @GEM_BFEXT(i32 %255, i32 %256)
  %258 = sdiv i32 %257, 3
  %259 = load i32, i32* @T2SCR, align 4
  %260 = load i32, i32* %11, align 4
  %261 = call i32 @GEM_BFEXT(i32 %259, i32 %260)
  %262 = call i64 @min(i32 %258, i32 %261)
  %263 = load %struct.macb*, %struct.macb** %7, align 8
  %264 = getelementptr inbounds %struct.macb, %struct.macb* %263, i32 0, i32 3
  store i64 %262, i64* %264, align 8
  %265 = load %struct.macb*, %struct.macb** %7, align 8
  %266 = getelementptr inbounds %struct.macb, %struct.macb* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp sgt i64 %267, 0
  br i1 %268, label %269, label %304

269:                                              ; preds = %246
  %270 = load i32, i32* @SCR2ETH, align 4
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @GEM_BFEXT(i32 %270, i32 %271)
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %300

274:                                              ; preds = %269
  store i32 0, i32* %11, align 4
  %275 = load i32, i32* @ETHTCMP, align 4
  %276 = load i64, i64* @ETH_P_IP, align 8
  %277 = trunc i64 %276 to i32
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @GEM_BFINS(i32 %275, i32 %277, i32 %278)
  store i32 %279, i32* %11, align 4
  %280 = load %struct.macb*, %struct.macb** %7, align 8
  %281 = load i32, i32* @ETHT, align 4
  %282 = load i32, i32* @SCRT2_ETHT, align 4
  %283 = load i32, i32* %11, align 4
  %284 = call i32 @gem_writel_n(%struct.macb* %280, i32 %281, i32 %282, i32 %283)
  %285 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %286 = load %struct.net_device*, %struct.net_device** %4, align 8
  %287 = getelementptr inbounds %struct.net_device, %struct.net_device* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  %290 = load %struct.macb*, %struct.macb** %7, align 8
  %291 = getelementptr inbounds %struct.macb, %struct.macb* %290, i32 0, i32 6
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 1
  %293 = call i32 @INIT_LIST_HEAD(i32* %292)
  %294 = load %struct.macb*, %struct.macb** %7, align 8
  %295 = getelementptr inbounds %struct.macb, %struct.macb* %294, i32 0, i32 6
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 0
  store i64 0, i64* %296, align 8
  %297 = load %struct.macb*, %struct.macb** %7, align 8
  %298 = getelementptr inbounds %struct.macb, %struct.macb* %297, i32 0, i32 5
  %299 = call i32 @spin_lock_init(i32* %298)
  br label %303

300:                                              ; preds = %269
  %301 = load %struct.macb*, %struct.macb** %7, align 8
  %302 = getelementptr inbounds %struct.macb, %struct.macb* %301, i32 0, i32 3
  store i64 0, i64* %302, align 8
  br label %303

303:                                              ; preds = %300, %274
  br label %304

304:                                              ; preds = %303, %246
  %305 = load %struct.macb*, %struct.macb** %7, align 8
  %306 = getelementptr inbounds %struct.macb, %struct.macb* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @MACB_CAPS_USRIO_DISABLED, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %365, label %311

311:                                              ; preds = %304
  store i32 0, i32* %10, align 4
  %312 = load %struct.macb*, %struct.macb** %7, align 8
  %313 = getelementptr inbounds %struct.macb, %struct.macb* %312, i32 0, i32 4
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load i32, i32* @RGMII, align 4
  %319 = call i32 @GEM_BIT(i32 %318)
  store i32 %319, i32* %10, align 4
  br label %348

320:                                              ; preds = %311
  %321 = load %struct.macb*, %struct.macb** %7, align 8
  %322 = getelementptr inbounds %struct.macb, %struct.macb* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %336

326:                                              ; preds = %320
  %327 = load %struct.macb*, %struct.macb** %7, align 8
  %328 = getelementptr inbounds %struct.macb, %struct.macb* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* @MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %326
  %334 = load i32, i32* @RMII, align 4
  %335 = call i32 @MACB_BIT(i32 %334)
  store i32 %335, i32* %10, align 4
  br label %347

336:                                              ; preds = %326, %320
  %337 = load %struct.macb*, %struct.macb** %7, align 8
  %338 = getelementptr inbounds %struct.macb, %struct.macb* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %336
  %344 = load i32, i32* @MII, align 4
  %345 = call i32 @MACB_BIT(i32 %344)
  store i32 %345, i32* %10, align 4
  br label %346

346:                                              ; preds = %343, %336
  br label %347

347:                                              ; preds = %346, %333
  br label %348

348:                                              ; preds = %347, %317
  %349 = load %struct.macb*, %struct.macb** %7, align 8
  %350 = getelementptr inbounds %struct.macb, %struct.macb* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @MACB_CAPS_USRIO_HAS_CLKEN, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %348
  %356 = load i32, i32* @CLKEN, align 4
  %357 = call i32 @MACB_BIT(i32 %356)
  %358 = load i32, i32* %10, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %10, align 4
  br label %360

360:                                              ; preds = %355, %348
  %361 = load %struct.macb*, %struct.macb** %7, align 8
  %362 = load i32, i32* @USRIO, align 4
  %363 = load i32, i32* %10, align 4
  %364 = call i32 @macb_or_gem_writel(%struct.macb* %361, i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %360, %304
  %366 = load %struct.macb*, %struct.macb** %7, align 8
  %367 = call i32 @macb_mdc_clk_div(%struct.macb* %366)
  store i32 %367, i32* %10, align 4
  %368 = load %struct.macb*, %struct.macb** %7, align 8
  %369 = call i32 @macb_dbw(%struct.macb* %368)
  %370 = load i32, i32* %10, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %10, align 4
  %372 = load %struct.macb*, %struct.macb** %7, align 8
  %373 = getelementptr inbounds %struct.macb, %struct.macb* %372, i32 0, i32 4
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %385

377:                                              ; preds = %365
  %378 = load i32, i32* @SGMIIEN, align 4
  %379 = call i32 @GEM_BIT(i32 %378)
  %380 = load i32, i32* @PCSSEL, align 4
  %381 = call i32 @GEM_BIT(i32 %380)
  %382 = or i32 %379, %381
  %383 = load i32, i32* %10, align 4
  %384 = or i32 %383, %382
  store i32 %384, i32* %10, align 4
  br label %385

385:                                              ; preds = %377, %365
  %386 = load %struct.macb*, %struct.macb** %7, align 8
  %387 = load i32, i32* @NCFGR, align 4
  %388 = load i32, i32* %10, align 4
  %389 = call i32 @macb_writel(%struct.macb* %386, i32 %387, i32 %388)
  store i32 0, i32* %2, align 4
  br label %390

390:                                              ; preds = %385, %128
  %391 = load i32, i32* %2, align 4
  ret i32 %391
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @GEM_ISR(i32) #1

declare dso_local i32 @GEM_IER(i32) #1

declare dso_local i32 @GEM_IDR(i32) #1

declare dso_local i32 @GEM_IMR(i32) #1

declare dso_local i32 @GEM_TBQP(i32) #1

declare dso_local i32 @GEM_RBQP(i32) #1

declare dso_local i32 @GEM_RBQS(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.macb_queue*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @macb_is_gem(%struct.macb*) #1

declare dso_local i32 @GEM_BFEXT(i32, i32) #1

declare dso_local i32 @gem_readl(%struct.macb*, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @GEM_BFINS(i32, i32, i32) #1

declare dso_local i32 @gem_writel_n(%struct.macb*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @GEM_BIT(i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i32 @macb_or_gem_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @macb_mdc_clk_div(%struct.macb*) #1

declare dso_local i32 @macb_dbw(%struct.macb*) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
