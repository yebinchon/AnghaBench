; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.atl1e_adapter = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_5__, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_6__ = type { i32, i32, %struct.atl1e_adapter* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.net_device* }

@atl1e_probe.cards_found = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot enable PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"No usable DMA configuration,aborting\0A\00", align 1
@atl1e_driver_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot obtain PCI resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"init netdevice failed\0A\00", align 1
@BAR_0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot map device registers\0A\00", align 1
@atl1e_mdio_read = common dso_local global i32 0, align 4
@atl1e_mdio_write = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_MASK = common dso_local global i32 0, align 4
@atl1e_clean = common dso_local global i32 0, align 4
@atl1e_phy_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"net device private data init failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"get mac address failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"mac address : %pM\0A\00", align 1
@atl1e_reset_task = common dso_local global i32 0, align 4
@atl1e_link_chg_task = common dso_local global i32 0, align 4
@MAX_TSO_SEG_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"register netdevice failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @atl1e_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.atl1e_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.atl1e_adapter* null, %struct.atl1e_adapter** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
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
  br label %219

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
  br label %215

32:                                               ; preds = %23
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* @atl1e_driver_name, align 4
  %35 = call i32 @pci_request_regions(%struct.pci_dev* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %214

42:                                               ; preds = %32
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_set_master(%struct.pci_dev* %43)
  %45 = call %struct.net_device* @alloc_etherdev(i32 80)
  store %struct.net_device* %45, %struct.net_device** %6, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = icmp eq %struct.net_device* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %211

51:                                               ; preds = %42
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @atl1e_init_netdev(%struct.net_device* %52, %struct.pci_dev* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = call i32 @netdev_err(%struct.net_device* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %207

60:                                               ; preds = %51
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %61)
  store %struct.atl1e_adapter* %62, %struct.atl1e_adapter** %7, align 8
  %63 = load i32, i32* @atl1e_probe.cards_found, align 4
  %64 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %65 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %68 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %67, i32 0, i32 8
  store %struct.net_device* %66, %struct.net_device** %68, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %71 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %70, i32 0, i32 7
  store %struct.pci_dev* %69, %struct.pci_dev** %71, align 8
  %72 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %73 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %74 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store %struct.atl1e_adapter* %72, %struct.atl1e_adapter** %75, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = load i32, i32* @BAR_0, align 4
  %78 = call i32 @pci_iomap(%struct.pci_dev* %76, i32 %77, i32 0)
  %79 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %83 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %60
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = call i32 @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %208

92:                                               ; preds = %60
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %95 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  store %struct.net_device* %93, %struct.net_device** %96, align 8
  %97 = load i32, i32* @atl1e_mdio_read, align 4
  %98 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %99 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @atl1e_mdio_write, align 4
  %102 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %103 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  %105 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %106 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 31, i32* %107, align 8
  %108 = load i32, i32* @MDIO_REG_ADDR_MASK, align 4
  %109 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %110 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %114 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %113, i32 0, i32 5
  %115 = load i32, i32* @atl1e_clean, align 4
  %116 = call i32 @netif_napi_add(%struct.net_device* %112, i32* %114, i32 %115, i32 64)
  %117 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %118 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %117, i32 0, i32 4
  %119 = load i32, i32* @atl1e_phy_config, align 4
  %120 = call i32 @timer_setup(i32* %118, i32 %119, i32 0)
  %121 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %122 = call i32 @atl1e_check_options(%struct.atl1e_adapter* %121)
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = call i32 @atl1e_setup_pcicmd(%struct.pci_dev* %123)
  %125 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %126 = call i32 @atl1e_sw_init(%struct.atl1e_adapter* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %92
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = call i32 @netdev_err(%struct.net_device* %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %199

132:                                              ; preds = %92
  %133 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %134 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %133, i32 0, i32 1
  %135 = call i32 @atl1e_phy_init(%struct.TYPE_6__* %134)
  %136 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %137 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %136, i32 0, i32 1
  %138 = call i32 @atl1e_reset_hw(%struct.TYPE_6__* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %8, align 4
  br label %197

144:                                              ; preds = %132
  %145 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %146 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %145, i32 0, i32 1
  %147 = call i64 @atl1e_read_mac_addr(%struct.TYPE_6__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %8, align 4
  %152 = load %struct.net_device*, %struct.net_device** %6, align 8
  %153 = call i32 @netdev_err(%struct.net_device* %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %200

154:                                              ; preds = %144
  %155 = load %struct.net_device*, %struct.net_device** %6, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %159 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.net_device*, %struct.net_device** %6, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @memcpy(i32 %157, i32 %161, i32 %164)
  %166 = load %struct.net_device*, %struct.net_device** %6, align 8
  %167 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %168 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @netdev_dbg(%struct.net_device* %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  %172 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %173 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %172, i32 0, i32 3
  %174 = load i32, i32* @atl1e_reset_task, align 4
  %175 = call i32 @INIT_WORK(i32* %173, i32 %174)
  %176 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %177 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %176, i32 0, i32 2
  %178 = load i32, i32* @atl1e_link_chg_task, align 4
  %179 = call i32 @INIT_WORK(i32* %177, i32 %178)
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = load i32, i32* @MAX_TSO_SEG_SIZE, align 4
  %182 = call i32 @netif_set_gso_max_size(%struct.net_device* %180, i32 %181)
  %183 = load %struct.net_device*, %struct.net_device** %6, align 8
  %184 = call i32 @register_netdev(%struct.net_device* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %154
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = call i32 @netdev_err(%struct.net_device* %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %198

190:                                              ; preds = %154
  %191 = load %struct.net_device*, %struct.net_device** %6, align 8
  %192 = call i32 @netif_stop_queue(%struct.net_device* %191)
  %193 = load %struct.net_device*, %struct.net_device** %6, align 8
  %194 = call i32 @netif_carrier_off(%struct.net_device* %193)
  %195 = load i32, i32* @atl1e_probe.cards_found, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* @atl1e_probe.cards_found, align 4
  store i32 0, i32* %3, align 4
  br label %219

197:                                              ; preds = %141
  br label %198

198:                                              ; preds = %197, %187
  br label %199

199:                                              ; preds = %198, %129
  br label %200

200:                                              ; preds = %199, %149
  %201 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %202 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %7, align 8
  %203 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @pci_iounmap(%struct.pci_dev* %201, i32 %205)
  br label %207

207:                                              ; preds = %200, %57
  br label %208

208:                                              ; preds = %207, %87
  %209 = load %struct.net_device*, %struct.net_device** %6, align 8
  %210 = call i32 @free_netdev(%struct.net_device* %209)
  br label %211

211:                                              ; preds = %208, %48
  %212 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %213 = call i32 @pci_release_regions(%struct.pci_dev* %212)
  br label %214

214:                                              ; preds = %211, %38
  br label %215

215:                                              ; preds = %214, %28
  %216 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %217 = call i32 @pci_disable_device(%struct.pci_dev* %216)
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %215, %190, %13
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @atl1e_init_netdev(%struct.net_device*, %struct.pci_dev*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @atl1e_check_options(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_setup_pcicmd(%struct.pci_dev*) #1

declare dso_local i32 @atl1e_sw_init(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_phy_init(%struct.TYPE_6__*) #1

declare dso_local i32 @atl1e_reset_hw(%struct.TYPE_6__*) #1

declare dso_local i64 @atl1e_read_mac_addr(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.net_device*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
