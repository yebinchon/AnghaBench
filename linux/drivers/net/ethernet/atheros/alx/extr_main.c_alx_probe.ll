; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.alx_priv = type { i32, i32, i32, %struct.alx_hw, %struct.net_device*, i32, i32 }
%struct.alx_hw = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, %struct.pci_dev*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.net_device*, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"DMA to 64-BIT addresses\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No usable DMA config, aborting\0A\00", align 1
@alx_drv_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"pci_request_mem_regions failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Can't find power management capability, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ALX_MAX_TX_QUEUES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@NETIF_MSG_TX_ERR = common dso_local global i32 0, align 4
@NETIF_MSG_RX_ERR = common dso_local global i32 0, align 4
@NETIF_MSG_WOL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot map device registers\0A\00", align 1
@alx_netdev_ops = common dso_local global i32 0, align 4
@alx_ethtool_ops = common dso_local global i32 0, align 4
@ALX_WATCHDOG_TIME = common dso_local global i32 0, align 4
@ALX_DEV_QUIRK_MSI_INTX_DISABLE_BUG = common dso_local global i32 0, align 4
@PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"net device private data init failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"MAC Reset failed, error = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"failed to configure PHY speed/duplex (err=%d)\0A\00", align 1
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"Invalid permanent address programmed, using random one\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C22 = common dso_local global i32 0, align 4
@MDIO_EMULATE_C22 = common dso_local global i32 0, align 4
@alx_mdio_read = common dso_local global i32 0, align 4
@alx_mdio_write = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"failed to identify PHY\0A\00", align 1
@alx_link_check = common dso_local global i32 0, align 4
@alx_reset = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"register netdevice failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Qualcomm Atheros AR816x/AR817x Ethernet [%pM]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @alx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.alx_priv*, align 8
  %8 = alloca %struct.alx_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_enable_device_mem(%struct.pci_dev* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %3, align 4
  br label %335

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @DMA_BIT_MASK(i32 64)
  %21 = call i32 @dma_set_mask_and_coherent(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %39

27:                                               ; preds = %17
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @DMA_BIT_MASK(i32 32)
  %31 = call i32 @dma_set_mask_and_coherent(i32* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %331

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* @alx_drv_name, align 4
  %42 = call i32 @pci_request_mem_regions(%struct.pci_dev* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %331

49:                                               ; preds = %39
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_set_master(%struct.pci_dev* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %328

64:                                               ; preds = %49
  %65 = load i32, i32* @ALX_MAX_TX_QUEUES, align 4
  %66 = call %struct.net_device* @alloc_etherdev_mqs(i32 112, i32 %65, i32 1)
  store %struct.net_device* %66, %struct.net_device** %6, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = icmp ne %struct.net_device* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %328

72:                                               ; preds = %64
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @SET_NETDEV_DEV(%struct.net_device* %73, i32* %75)
  %77 = load %struct.net_device*, %struct.net_device** %6, align 8
  %78 = call %struct.alx_priv* @netdev_priv(%struct.net_device* %77)
  store %struct.alx_priv* %78, %struct.alx_priv** %7, align 8
  %79 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %80 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %80, i32 0, i32 7
  %82 = call i32 @spin_lock_init(i32* %81)
  %83 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %84 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %83, i32 0, i32 6
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %87 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %86, i32 0, i32 5
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %91 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %90, i32 0, i32 4
  store %struct.net_device* %89, %struct.net_device** %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %94 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %94, i32 0, i32 6
  store %struct.pci_dev* %92, %struct.pci_dev** %95, align 8
  %96 = load i32, i32* @NETIF_MSG_LINK, align 4
  %97 = load i32, i32* @NETIF_MSG_HW, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @NETIF_MSG_TX_ERR, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @NETIF_MSG_RX_ERR, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @NETIF_MSG_WOL, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %108 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %110 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %109, i32 0, i32 3
  store %struct.alx_hw* %110, %struct.alx_hw** %8, align 8
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %113 = call i32 @pci_set_drvdata(%struct.pci_dev* %111, %struct.alx_priv* %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i32 @pci_ioremap_bar(%struct.pci_dev* %114, i32 0)
  %116 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %117 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %119 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %72
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %325

128:                                              ; preds = %72
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 7
  store i32* @alx_netdev_ops, i32** %130, align 8
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 6
  store i32* @alx_ethtool_ops, i32** %132, align 8
  %133 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %134 = call i32 @pci_irq_vector(%struct.pci_dev* %133, i32 0)
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @ALX_WATCHDOG_TIME, align 4
  %138 = load %struct.net_device*, %struct.net_device** %6, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %141 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ALX_DEV_QUIRK_MSI_INTX_DISABLE_BUG, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %128
  %147 = load i32, i32* @PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG, align 4
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %128
  %153 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %154 = call i32 @alx_init_sw(%struct.alx_priv* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %320

161:                                              ; preds = %152
  %162 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %163 = call i32 @alx_reset_pcie(%struct.alx_hw* %162)
  %164 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %165 = call i32 @alx_phy_configured(%struct.alx_hw* %164)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %161
  %169 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %170 = call i32 @alx_reset_phy(%struct.alx_hw* %169)
  br label %171

171:                                              ; preds = %168, %161
  %172 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %173 = call i32 @alx_reset_mac(%struct.alx_hw* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %10, align 4
  %180 = call i32 (i32*, i8*, ...) @dev_err(i32* %178, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  br label %320

181:                                              ; preds = %171
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %201, label %184

184:                                              ; preds = %181
  %185 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %186 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %187 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %190 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @alx_setup_speed_duplex(%struct.alx_hw* %185, i32 %188, i32 %191)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %184
  %196 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %197 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %196, i32 0, i32 0
  %198 = load i32, i32* %10, align 4
  %199 = call i32 (i32*, i8*, ...) @dev_err(i32* %197, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %198)
  br label %320

200:                                              ; preds = %184
  br label %201

201:                                              ; preds = %200, %181
  %202 = load i32, i32* @NETIF_F_SG, align 4
  %203 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @NETIF_F_TSO, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @NETIF_F_TSO6, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.net_device*, %struct.net_device** %6, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %214 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %215 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @alx_get_perm_macaddr(%struct.alx_hw* %213, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %201
  %220 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %221 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %220, i32 0, i32 0
  %222 = call i32 @dev_warn(i32* %221, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %223 = load %struct.net_device*, %struct.net_device** %6, align 8
  %224 = call i32 @eth_hw_addr_random(%struct.net_device* %223)
  %225 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %226 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.net_device*, %struct.net_device** %6, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.net_device*, %struct.net_device** %6, align 8
  %232 = getelementptr inbounds %struct.net_device, %struct.net_device* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @memcpy(i32 %227, i32 %230, i32 %233)
  br label %235

235:                                              ; preds = %219, %201
  %236 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %237 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %240 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @ETH_ALEN, align 4
  %243 = call i32 @memcpy(i32 %238, i32 %241, i32 %242)
  %244 = load %struct.net_device*, %struct.net_device** %6, align 8
  %245 = getelementptr inbounds %struct.net_device, %struct.net_device* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %248 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ETH_ALEN, align 4
  %251 = call i32 @memcpy(i32 %246, i32 %249, i32 %250)
  %252 = load %struct.net_device*, %struct.net_device** %6, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %256 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @ETH_ALEN, align 4
  %259 = call i32 @memcpy(i32 %254, i32 %257, i32 %258)
  %260 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %261 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 5
  store i64 0, i64* %262, align 8
  %263 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %264 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 4
  store i64 0, i64* %265, align 8
  %266 = load %struct.net_device*, %struct.net_device** %6, align 8
  %267 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %268 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 3
  store %struct.net_device* %266, %struct.net_device** %269, align 8
  %270 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %271 = load i32, i32* @MDIO_SUPPORTS_C22, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @MDIO_EMULATE_C22, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %276 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  %278 = load i32, i32* @alx_mdio_read, align 4
  %279 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %280 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 2
  store i32 %278, i32* %281, align 8
  %282 = load i32, i32* @alx_mdio_write, align 4
  %283 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %284 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 1
  store i32 %282, i32* %285, align 4
  %286 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %287 = call i32 @alx_get_phy_info(%struct.alx_hw* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %295, label %289

289:                                              ; preds = %235
  %290 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %291 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %290, i32 0, i32 0
  %292 = call i32 (i32*, i8*, ...) @dev_err(i32* %291, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %293 = load i32, i32* @EIO, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %10, align 4
  br label %320

295:                                              ; preds = %235
  %296 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %297 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %296, i32 0, i32 2
  %298 = load i32, i32* @alx_link_check, align 4
  %299 = call i32 @INIT_WORK(i32* %297, i32 %298)
  %300 = load %struct.alx_priv*, %struct.alx_priv** %7, align 8
  %301 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %300, i32 0, i32 1
  %302 = load i32, i32* @alx_reset, align 4
  %303 = call i32 @INIT_WORK(i32* %301, i32 %302)
  %304 = load %struct.net_device*, %struct.net_device** %6, align 8
  %305 = call i32 @netif_carrier_off(%struct.net_device* %304)
  %306 = load %struct.net_device*, %struct.net_device** %6, align 8
  %307 = call i32 @register_netdev(%struct.net_device* %306)
  store i32 %307, i32* %10, align 4
  %308 = load i32, i32* %10, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %295
  %311 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %312 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %311, i32 0, i32 0
  %313 = call i32 (i32*, i8*, ...) @dev_err(i32* %312, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %320

314:                                              ; preds = %295
  %315 = load %struct.net_device*, %struct.net_device** %6, align 8
  %316 = load %struct.net_device*, %struct.net_device** %6, align 8
  %317 = getelementptr inbounds %struct.net_device, %struct.net_device* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @netdev_info(%struct.net_device* %315, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %318)
  store i32 0, i32* %3, align 4
  br label %335

320:                                              ; preds = %310, %289, %195, %176, %157
  %321 = load %struct.alx_hw*, %struct.alx_hw** %8, align 8
  %322 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @iounmap(i32 %323)
  br label %325

325:                                              ; preds = %320, %122
  %326 = load %struct.net_device*, %struct.net_device** %6, align 8
  %327 = call i32 @free_netdev(%struct.net_device* %326)
  br label %328

328:                                              ; preds = %325, %69, %58
  %329 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %330 = call i32 @pci_release_mem_regions(%struct.pci_dev* %329)
  br label %331

331:                                              ; preds = %328, %45, %34
  %332 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %333 = call i32 @pci_disable_device(%struct.pci_dev* %332)
  %334 = load i32, i32* %10, align 4
  store i32 %334, i32* %3, align 4
  br label %335

335:                                              ; preds = %331, %314, %15
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_request_mem_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.alx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.alx_priv*) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @alx_init_sw(%struct.alx_priv*) #1

declare dso_local i32 @alx_reset_pcie(%struct.alx_hw*) #1

declare dso_local i32 @alx_phy_configured(%struct.alx_hw*) #1

declare dso_local i32 @alx_reset_phy(%struct.alx_hw*) #1

declare dso_local i32 @alx_reset_mac(%struct.alx_hw*) #1

declare dso_local i32 @alx_setup_speed_duplex(%struct.alx_hw*, i32, i32) #1

declare dso_local i64 @alx_get_perm_macaddr(%struct.alx_hw*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @alx_get_phy_info(%struct.alx_hw*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_mem_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
