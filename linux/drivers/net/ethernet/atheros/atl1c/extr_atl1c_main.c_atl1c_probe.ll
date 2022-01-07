; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.atl1c_adapter = type { i32, %struct.TYPE_9__, i64, i32, i32, i32, %struct.TYPE_8__, i32, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_9__ = type { i32, i32, %struct.atl1c_adapter* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.net_device* }

@atl1c_probe.cards_found = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot enable PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"No usable DMA configuration,aborting\0A\00", align 1
@atl1c_driver_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot obtain PCI resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"init netdevice failed\0A\00", align 1
@atl1c_default_msg = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot map device registers\0A\00", align 1
@atl1c_mdio_read = common dso_local global i32 0, align 4
@atl1c_mdio_write = common dso_local global i32 0, align 4
@MDIO_CTRL_REG_MASK = common dso_local global i32 0, align 4
@atl1c_clean = common dso_local global i32 0, align 4
@atl1c_phy_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"net device private data init failed\0A\00", align 1
@ATL1C_PCIE_L0S_L1_DISABLE = common dso_local global i32 0, align 4
@NET_ADDR_RANDOM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"mac address : %pM\0A\00", align 1
@atl1c_common_task = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"register netdevice failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"version %s\0A\00", align 1
@ATL1C_DRV_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @atl1c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.atl1c_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device_mem(%struct.pci_dev* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %250

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @DMA_BIT_MASK(i32 32)
  %21 = call i64 @pci_set_dma_mask(%struct.pci_dev* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @DMA_BIT_MASK(i32 32)
  %26 = call i64 @pci_set_consistent_dma_mask(%struct.pci_dev* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23, %18
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %246

32:                                               ; preds = %23
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* @atl1c_driver_name, align 4
  %35 = call i32 @pci_request_regions(%struct.pci_dev* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %245

42:                                               ; preds = %32
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_set_master(%struct.pci_dev* %43)
  %45 = call %struct.net_device* @alloc_etherdev(i32 96)
  store %struct.net_device* %45, %struct.net_device** %6, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = icmp eq %struct.net_device* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %242

51:                                               ; preds = %42
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @atl1c_init_netdev(%struct.net_device* %52, %struct.pci_dev* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %238

61:                                               ; preds = %51
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %62)
  store %struct.atl1c_adapter* %63, %struct.atl1c_adapter** %7, align 8
  %64 = load i32, i32* @atl1c_probe.cards_found, align 4
  %65 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %68, i32 0, i32 9
  store %struct.net_device* %67, %struct.net_device** %69, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %72 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %71, i32 0, i32 8
  store %struct.pci_dev* %70, %struct.pci_dev** %72, align 8
  %73 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %74 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %75 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store %struct.atl1c_adapter* %73, %struct.atl1c_adapter** %76, align 8
  %77 = load i32, i32* @atl1c_default_msg, align 4
  %78 = call i32 @netif_msg_init(i32 -1, i32 %77)
  %79 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i32 @pci_resource_start(%struct.pci_dev* %81, i32 0)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = call i32 @pci_resource_len(%struct.pci_dev* %83, i32 0)
  %85 = call i32 @ioremap(i32 %82, i32 %84)
  %86 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %90 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %61
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %239

100:                                              ; preds = %61
  %101 = load %struct.net_device*, %struct.net_device** %6, align 8
  %102 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %103 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store %struct.net_device* %101, %struct.net_device** %104, align 8
  %105 = load i32, i32* @atl1c_mdio_read, align 4
  %106 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %107 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @atl1c_mdio_write, align 4
  %110 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %111 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 8
  %113 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %114 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32 31, i32* %115, align 8
  %116 = load i32, i32* @MDIO_CTRL_REG_MASK, align 4
  %117 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %118 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %122 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %121, i32 0, i32 5
  %123 = load i32, i32* @atl1c_clean, align 4
  %124 = call i32 @netif_napi_add(%struct.net_device* %120, i32* %122, i32 %123, i32 64)
  %125 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %126 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %125, i32 0, i32 4
  %127 = load i32, i32* @atl1c_phy_config, align 4
  %128 = call i32 @timer_setup(i32* %126, i32 %127, i32 0)
  %129 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %130 = call i32 @atl1c_sw_init(%struct.atl1c_adapter* %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %100
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %232

137:                                              ; preds = %100
  %138 = load %struct.net_device*, %struct.net_device** %6, align 8
  %139 = call i32 @atl1c_set_max_mtu(%struct.net_device* %138)
  %140 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %141 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %140, i32 0, i32 1
  %142 = load i32, i32* @ATL1C_PCIE_L0S_L1_DISABLE, align 4
  %143 = call i32 @atl1c_reset_pcie(%struct.TYPE_9__* %141, i32 %142)
  %144 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %145 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %144, i32 0, i32 1
  %146 = call i32 @atl1c_phy_reset(%struct.TYPE_9__* %145)
  %147 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %148 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %147, i32 0, i32 1
  %149 = call i32 @atl1c_reset_mac(%struct.TYPE_9__* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %137
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  br label %230

155:                                              ; preds = %137
  %156 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %157 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %156, i32 0, i32 1
  %158 = call i32 @atl1c_phy_init(%struct.TYPE_9__* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %8, align 4
  br label %230

164:                                              ; preds = %155
  %165 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %166 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %165, i32 0, i32 1
  %167 = call i64 @atl1c_read_mac_addr(%struct.TYPE_9__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i32, i32* @NET_ADDR_RANDOM, align 4
  %171 = load %struct.net_device*, %struct.net_device** %6, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %164
  %174 = load %struct.net_device*, %struct.net_device** %6, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %178 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.net_device*, %struct.net_device** %6, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @memcpy(i32 %176, i32 %180, i32 %183)
  %185 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %186 = call i64 @netif_msg_probe(%struct.atl1c_adapter* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %173
  %189 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %190 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %189, i32 0, i32 0
  %191 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %192 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @dev_dbg(i32* %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %188, %173
  %197 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %198 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %197, i32 0, i32 1
  %199 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %200 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @atl1c_hw_set_mac_addr(%struct.TYPE_9__* %198, i32 %202)
  %204 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %205 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %204, i32 0, i32 3
  %206 = load i32, i32* @atl1c_common_task, align 4
  %207 = call i32 @INIT_WORK(i32* %205, i32 %206)
  %208 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %209 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %208, i32 0, i32 2
  store i64 0, i64* %209, align 8
  %210 = load %struct.net_device*, %struct.net_device** %6, align 8
  %211 = call i32 @register_netdev(%struct.net_device* %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %196
  %215 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %216 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %215, i32 0, i32 0
  %217 = call i32 @dev_err(i32* %216, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %231

218:                                              ; preds = %196
  %219 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %220 = call i64 @netif_msg_probe(%struct.atl1c_adapter* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %224 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %223, i32 0, i32 0
  %225 = load i32, i32* @ATL1C_DRV_VERSION, align 4
  %226 = call i32 @dev_info(i32* %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %222, %218
  %228 = load i32, i32* @atl1c_probe.cards_found, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* @atl1c_probe.cards_found, align 4
  store i32 0, i32* %3, align 4
  br label %250

230:                                              ; preds = %161, %152
  br label %231

231:                                              ; preds = %230, %214
  br label %232

232:                                              ; preds = %231, %133
  %233 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %234 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @iounmap(i32 %236)
  br label %238

238:                                              ; preds = %232, %57
  br label %239

239:                                              ; preds = %238, %94
  %240 = load %struct.net_device*, %struct.net_device** %6, align 8
  %241 = call i32 @free_netdev(%struct.net_device* %240)
  br label %242

242:                                              ; preds = %239, %48
  %243 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %244 = call i32 @pci_release_regions(%struct.pci_dev* %243)
  br label %245

245:                                              ; preds = %242, %38
  br label %246

246:                                              ; preds = %245, %28
  %247 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %248 = call i32 @pci_disable_device(%struct.pci_dev* %247)
  %249 = load i32, i32* %8, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %246, %227, %13
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @atl1c_init_netdev(%struct.net_device*, %struct.pci_dev*) #1

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @atl1c_sw_init(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_set_max_mtu(%struct.net_device*) #1

declare dso_local i32 @atl1c_reset_pcie(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @atl1c_phy_reset(%struct.TYPE_9__*) #1

declare dso_local i32 @atl1c_reset_mac(%struct.TYPE_9__*) #1

declare dso_local i32 @atl1c_phy_init(%struct.TYPE_9__*) #1

declare dso_local i64 @atl1c_read_mac_addr(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @netif_msg_probe(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @atl1c_hw_set_mac_addr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
