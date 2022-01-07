; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.nic = type { i32, i64, i32*, i32, %struct.net_device*, i32, %struct.TYPE_4__, %struct.pci_dev*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@IFF_SUPP_NOFCS = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@e100_netdev_ops = common dso_local global i32 0, align 4
@e100_ethtool_ops = common dso_local global i32 0, align 4
@E100_WATCHDOG_PERIOD = common dso_local global i32 0, align 4
@e100_poll = common dso_local global i32 0, align 4
@E100_NAPI_WEIGHT = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@mdio_ctrl_hw = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot enable PCI device, aborting\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Cannot find proper PCI device base address, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"No usable DMA configuration, aborting\0A\00", align 1
@use_io = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"using i/o access mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Cannot map device registers, aborting\0A\00", align 1
@ich = common dso_local global i32 0, align 4
@mac_82558_D101_A4 = common dso_local global i64 0, align 8
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@e100_watchdog = common dso_local global i32 0, align 4
@e100_tx_timeout_task = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Cannot alloc driver memory, aborting\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@eeprom_bad_csum_allow = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Invalid MAC address from EEPROM, aborting\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"Invalid MAC address from EEPROM, you MUST configure one.\0A\00", align 1
@eeprom_id = common dso_local global i64 0, align 8
@eeprom_id_wol = common dso_local global i32 0, align 4
@wol_magic = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Cannot register net device, aborting\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Cannot create DMA pool, aborting\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"addr 0x%llx, irq %d, MAC addr %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @e100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nic*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = call %struct.net_device* @alloc_etherdev(i32 88)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %373

14:                                               ; preds = %2
  %15 = load i32, i32* @NETIF_F_RXFCS, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @IFF_SUPP_NOFCS, align 4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @NETIF_F_RXALL, align 4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 5
  store i32* @e100_netdev_ops, i32** %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 4
  store i32* @e100_ethtool_ops, i32** %33, align 8
  %34 = load i32, i32* @E100_WATCHDOG_PERIOD, align 4
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = call i32 @pci_name(%struct.pci_dev* %40)
  %42 = call i32 @strncpy(i32 %39, i32 %41, i32 3)
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call %struct.nic* @netdev_priv(%struct.net_device* %43)
  store %struct.nic* %44, %struct.nic** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = load %struct.nic*, %struct.nic** %7, align 8
  %47 = getelementptr inbounds %struct.nic, %struct.nic* %46, i32 0, i32 15
  %48 = load i32, i32* @e100_poll, align 4
  %49 = load i32, i32* @E100_NAPI_WEIGHT, align 4
  %50 = call i32 @netif_napi_add(%struct.net_device* %45, i32* %47, i32 %48, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = load %struct.nic*, %struct.nic** %7, align 8
  %53 = getelementptr inbounds %struct.nic, %struct.nic* %52, i32 0, i32 4
  store %struct.net_device* %51, %struct.net_device** %53, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load %struct.nic*, %struct.nic** %7, align 8
  %56 = getelementptr inbounds %struct.nic, %struct.nic* %55, i32 0, i32 7
  store %struct.pci_dev* %54, %struct.pci_dev** %56, align 8
  %57 = load i32, i32* @debug, align 4
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.nic*, %struct.nic** %7, align 8
  %61 = getelementptr inbounds %struct.nic, %struct.nic* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @mdio_ctrl_hw, align 4
  %63 = load %struct.nic*, %struct.nic** %7, align 8
  %64 = getelementptr inbounds %struct.nic, %struct.nic* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = call i32 @pci_set_drvdata(%struct.pci_dev* %65, %struct.net_device* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_enable_device(%struct.pci_dev* %68)
  store i32 %69, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %14
  %72 = load %struct.nic*, %struct.nic** %7, align 8
  %73 = load i32, i32* @probe, align 4
  %74 = load %struct.nic*, %struct.nic** %7, align 8
  %75 = getelementptr inbounds %struct.nic, %struct.nic* %74, i32 0, i32 4
  %76 = load %struct.net_device*, %struct.net_device** %75, align 8
  %77 = call i32 @netif_err(%struct.nic* %72, i32 %73, %struct.net_device* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %369

78:                                               ; preds = %14
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i32 @pci_resource_flags(%struct.pci_dev* %79, i32 0)
  %81 = load i32, i32* @IORESOURCE_MEM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  %85 = load %struct.nic*, %struct.nic** %7, align 8
  %86 = load i32, i32* @probe, align 4
  %87 = load %struct.nic*, %struct.nic** %7, align 8
  %88 = getelementptr inbounds %struct.nic, %struct.nic* %87, i32 0, i32 4
  %89 = load %struct.net_device*, %struct.net_device** %88, align 8
  %90 = call i32 @netif_err(%struct.nic* %85, i32 %86, %struct.net_device* %89, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %366

93:                                               ; preds = %78
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = load i32, i32* @DRV_NAME, align 4
  %96 = call i32 @pci_request_regions(%struct.pci_dev* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.nic*, %struct.nic** %7, align 8
  %100 = load i32, i32* @probe, align 4
  %101 = load %struct.nic*, %struct.nic** %7, align 8
  %102 = getelementptr inbounds %struct.nic, %struct.nic* %101, i32 0, i32 4
  %103 = load %struct.net_device*, %struct.net_device** %102, align 8
  %104 = call i32 @netif_err(%struct.nic* %99, i32 %100, %struct.net_device* %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %366

105:                                              ; preds = %93
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i32 @DMA_BIT_MASK(i32 32)
  %108 = call i32 @pci_set_dma_mask(%struct.pci_dev* %106, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.nic*, %struct.nic** %7, align 8
  %112 = load i32, i32* @probe, align 4
  %113 = load %struct.nic*, %struct.nic** %7, align 8
  %114 = getelementptr inbounds %struct.nic, %struct.nic* %113, i32 0, i32 4
  %115 = load %struct.net_device*, %struct.net_device** %114, align 8
  %116 = call i32 @netif_err(%struct.nic* %111, i32 %112, %struct.net_device* %115, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %363

117:                                              ; preds = %105
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 1
  %121 = call i32 @SET_NETDEV_DEV(%struct.net_device* %118, i32* %120)
  %122 = load i64, i64* @use_io, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.nic*, %struct.nic** %7, align 8
  %126 = load i32, i32* @probe, align 4
  %127 = load %struct.nic*, %struct.nic** %7, align 8
  %128 = getelementptr inbounds %struct.nic, %struct.nic* %127, i32 0, i32 4
  %129 = load %struct.net_device*, %struct.net_device** %128, align 8
  %130 = call i32 (%struct.nic*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.nic* %125, i32 %126, %struct.net_device* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %133 = load i64, i64* @use_io, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 0
  %137 = call i32 @pci_iomap(%struct.pci_dev* %132, i32 %136, i32 4)
  %138 = load %struct.nic*, %struct.nic** %7, align 8
  %139 = getelementptr inbounds %struct.nic, %struct.nic* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.nic*, %struct.nic** %7, align 8
  %141 = getelementptr inbounds %struct.nic, %struct.nic* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %131
  %145 = load %struct.nic*, %struct.nic** %7, align 8
  %146 = load i32, i32* @probe, align 4
  %147 = load %struct.nic*, %struct.nic** %7, align 8
  %148 = getelementptr inbounds %struct.nic, %struct.nic* %147, i32 0, i32 4
  %149 = load %struct.net_device*, %struct.net_device** %148, align 8
  %150 = call i32 @netif_err(%struct.nic* %145, i32 %146, %struct.net_device* %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %363

153:                                              ; preds = %131
  %154 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %155 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @ich, align 4
  %160 = load %struct.nic*, %struct.nic** %7, align 8
  %161 = getelementptr inbounds %struct.nic, %struct.nic* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %171

164:                                              ; preds = %153
  %165 = load i32, i32* @ich, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.nic*, %struct.nic** %7, align 8
  %168 = getelementptr inbounds %struct.nic, %struct.nic* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %164, %158
  %172 = load %struct.nic*, %struct.nic** %7, align 8
  %173 = call i32 @e100_get_defaults(%struct.nic* %172)
  %174 = load %struct.nic*, %struct.nic** %7, align 8
  %175 = getelementptr inbounds %struct.nic, %struct.nic* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @mac_82558_D101_A4, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %171
  %180 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %181 = load %struct.net_device*, %struct.net_device** %6, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %171
  %186 = load %struct.nic*, %struct.nic** %7, align 8
  %187 = getelementptr inbounds %struct.nic, %struct.nic* %186, i32 0, i32 13
  %188 = call i32 @spin_lock_init(i32* %187)
  %189 = load %struct.nic*, %struct.nic** %7, align 8
  %190 = getelementptr inbounds %struct.nic, %struct.nic* %189, i32 0, i32 12
  %191 = call i32 @spin_lock_init(i32* %190)
  %192 = load %struct.nic*, %struct.nic** %7, align 8
  %193 = getelementptr inbounds %struct.nic, %struct.nic* %192, i32 0, i32 11
  %194 = call i32 @spin_lock_init(i32* %193)
  %195 = load %struct.nic*, %struct.nic** %7, align 8
  %196 = call i32 @e100_hw_reset(%struct.nic* %195)
  %197 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %198 = call i32 @pci_set_master(%struct.pci_dev* %197)
  %199 = load %struct.nic*, %struct.nic** %7, align 8
  %200 = getelementptr inbounds %struct.nic, %struct.nic* %199, i32 0, i32 10
  %201 = load i32, i32* @e100_watchdog, align 4
  %202 = call i32 @timer_setup(i32* %200, i32 %201, i32 0)
  %203 = load %struct.nic*, %struct.nic** %7, align 8
  %204 = getelementptr inbounds %struct.nic, %struct.nic* %203, i32 0, i32 9
  %205 = load i32, i32* @e100_tx_timeout_task, align 4
  %206 = call i32 @INIT_WORK(i32* %204, i32 %205)
  %207 = load %struct.nic*, %struct.nic** %7, align 8
  %208 = call i32 @e100_alloc(%struct.nic* %207)
  store i32 %208, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %185
  %211 = load %struct.nic*, %struct.nic** %7, align 8
  %212 = load i32, i32* @probe, align 4
  %213 = load %struct.nic*, %struct.nic** %7, align 8
  %214 = getelementptr inbounds %struct.nic, %struct.nic* %213, i32 0, i32 4
  %215 = load %struct.net_device*, %struct.net_device** %214, align 8
  %216 = call i32 @netif_err(%struct.nic* %211, i32 %212, %struct.net_device* %215, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %357

217:                                              ; preds = %185
  %218 = load %struct.nic*, %struct.nic** %7, align 8
  %219 = call i32 @e100_eeprom_load(%struct.nic* %218)
  store i32 %219, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %354

222:                                              ; preds = %217
  %223 = load %struct.nic*, %struct.nic** %7, align 8
  %224 = call i32 @e100_phy_init(%struct.nic* %223)
  %225 = load %struct.net_device*, %struct.net_device** %6, align 8
  %226 = getelementptr inbounds %struct.net_device, %struct.net_device* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.nic*, %struct.nic** %7, align 8
  %229 = getelementptr inbounds %struct.nic, %struct.nic* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* @ETH_ALEN, align 4
  %232 = call i32 @memcpy(i32 %227, i32* %230, i32 %231)
  %233 = load %struct.net_device*, %struct.net_device** %6, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @is_valid_ether_addr(i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %258, label %238

238:                                              ; preds = %222
  %239 = load i32, i32* @eeprom_bad_csum_allow, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %238
  %242 = load %struct.nic*, %struct.nic** %7, align 8
  %243 = load i32, i32* @probe, align 4
  %244 = load %struct.nic*, %struct.nic** %7, align 8
  %245 = getelementptr inbounds %struct.nic, %struct.nic* %244, i32 0, i32 4
  %246 = load %struct.net_device*, %struct.net_device** %245, align 8
  %247 = call i32 @netif_err(%struct.nic* %242, i32 %243, %struct.net_device* %246, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %248 = load i32, i32* @EAGAIN, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %8, align 4
  br label %354

250:                                              ; preds = %238
  %251 = load %struct.nic*, %struct.nic** %7, align 8
  %252 = load i32, i32* @probe, align 4
  %253 = load %struct.nic*, %struct.nic** %7, align 8
  %254 = getelementptr inbounds %struct.nic, %struct.nic* %253, i32 0, i32 4
  %255 = load %struct.net_device*, %struct.net_device** %254, align 8
  %256 = call i32 @netif_err(%struct.nic* %251, i32 %252, %struct.net_device* %255, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  br label %257

257:                                              ; preds = %250
  br label %258

258:                                              ; preds = %257, %222
  %259 = load %struct.nic*, %struct.nic** %7, align 8
  %260 = getelementptr inbounds %struct.nic, %struct.nic* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @mac_82558_D101_A4, align 8
  %263 = icmp sge i64 %261, %262
  br i1 %263, label %264, label %283

264:                                              ; preds = %258
  %265 = load %struct.nic*, %struct.nic** %7, align 8
  %266 = getelementptr inbounds %struct.nic, %struct.nic* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = load i64, i64* @eeprom_id, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @eeprom_id_wol, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %264
  %275 = load i32, i32* @wol_magic, align 4
  %276 = load %struct.nic*, %struct.nic** %7, align 8
  %277 = getelementptr inbounds %struct.nic, %struct.nic* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %281 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %280, i32 0, i32 1
  %282 = call i32 @device_set_wakeup_enable(i32* %281, i32 1)
  br label %283

283:                                              ; preds = %274, %264, %258
  %284 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %285 = call i32 @pci_pme_active(%struct.pci_dev* %284, i32 0)
  %286 = load %struct.net_device*, %struct.net_device** %6, align 8
  %287 = getelementptr inbounds %struct.net_device, %struct.net_device* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @strcpy(i32 %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %290 = load %struct.net_device*, %struct.net_device** %6, align 8
  %291 = call i32 @register_netdev(%struct.net_device* %290)
  store i32 %291, i32* %8, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %283
  %294 = load %struct.nic*, %struct.nic** %7, align 8
  %295 = load i32, i32* @probe, align 4
  %296 = load %struct.nic*, %struct.nic** %7, align 8
  %297 = getelementptr inbounds %struct.nic, %struct.nic* %296, i32 0, i32 4
  %298 = load %struct.net_device*, %struct.net_device** %297, align 8
  %299 = call i32 @netif_err(%struct.nic* %294, i32 %295, %struct.net_device* %298, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %354

300:                                              ; preds = %283
  %301 = load %struct.net_device*, %struct.net_device** %6, align 8
  %302 = getelementptr inbounds %struct.net_device, %struct.net_device* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.nic*, %struct.nic** %7, align 8
  %305 = getelementptr inbounds %struct.nic, %struct.nic* %304, i32 0, i32 7
  %306 = load %struct.pci_dev*, %struct.pci_dev** %305, align 8
  %307 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %306, i32 0, i32 1
  %308 = load %struct.nic*, %struct.nic** %7, align 8
  %309 = getelementptr inbounds %struct.nic, %struct.nic* %308, i32 0, i32 6
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = mul i64 %313, 4
  %315 = trunc i64 %314 to i32
  %316 = call i32 @dma_pool_create(i32 %303, i32* %307, i32 %315, i32 4, i32 0)
  %317 = load %struct.nic*, %struct.nic** %7, align 8
  %318 = getelementptr inbounds %struct.nic, %struct.nic* %317, i32 0, i32 5
  store i32 %316, i32* %318, align 8
  %319 = load %struct.nic*, %struct.nic** %7, align 8
  %320 = getelementptr inbounds %struct.nic, %struct.nic* %319, i32 0, i32 5
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %332, label %323

323:                                              ; preds = %300
  %324 = load %struct.nic*, %struct.nic** %7, align 8
  %325 = load i32, i32* @probe, align 4
  %326 = load %struct.nic*, %struct.nic** %7, align 8
  %327 = getelementptr inbounds %struct.nic, %struct.nic* %326, i32 0, i32 4
  %328 = load %struct.net_device*, %struct.net_device** %327, align 8
  %329 = call i32 @netif_err(%struct.nic* %324, i32 %325, %struct.net_device* %328, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %330 = load i32, i32* @ENOMEM, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %8, align 4
  br label %351

332:                                              ; preds = %300
  %333 = load %struct.nic*, %struct.nic** %7, align 8
  %334 = load i32, i32* @probe, align 4
  %335 = load %struct.nic*, %struct.nic** %7, align 8
  %336 = getelementptr inbounds %struct.nic, %struct.nic* %335, i32 0, i32 4
  %337 = load %struct.net_device*, %struct.net_device** %336, align 8
  %338 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %339 = load i64, i64* @use_io, align 8
  %340 = icmp ne i64 %339, 0
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i32 1, i32 0
  %343 = call i64 @pci_resource_start(%struct.pci_dev* %338, i32 %342)
  %344 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %345 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.net_device*, %struct.net_device** %6, align 8
  %348 = getelementptr inbounds %struct.net_device, %struct.net_device* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 (%struct.nic*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.nic* %333, i32 %334, %struct.net_device* %337, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i64 %343, i32 %346, i32 %349)
  store i32 0, i32* %3, align 4
  br label %373

351:                                              ; preds = %323
  %352 = load %struct.net_device*, %struct.net_device** %6, align 8
  %353 = call i32 @unregister_netdev(%struct.net_device* %352)
  br label %354

354:                                              ; preds = %351, %293, %241, %221
  %355 = load %struct.nic*, %struct.nic** %7, align 8
  %356 = call i32 @e100_free(%struct.nic* %355)
  br label %357

357:                                              ; preds = %354, %210
  %358 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %359 = load %struct.nic*, %struct.nic** %7, align 8
  %360 = getelementptr inbounds %struct.nic, %struct.nic* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @pci_iounmap(%struct.pci_dev* %358, i32 %361)
  br label %363

363:                                              ; preds = %357, %144, %110
  %364 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %365 = call i32 @pci_release_regions(%struct.pci_dev* %364)
  br label %366

366:                                              ; preds = %363, %98, %84
  %367 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %368 = call i32 @pci_disable_device(%struct.pci_dev* %367)
  br label %369

369:                                              ; preds = %366, %71
  %370 = load %struct.net_device*, %struct.net_device** %6, align 8
  %371 = call i32 @free_netdev(%struct.net_device* %370)
  %372 = load i32, i32* %8, align 4
  store i32 %372, i32* %3, align 4
  br label %373

373:                                              ; preds = %369, %332, %11
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @netif_err(%struct.nic*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_info(%struct.nic*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @e100_get_defaults(%struct.nic*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @e100_hw_reset(%struct.nic*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @e100_alloc(%struct.nic*) #1

declare dso_local i32 @e100_eeprom_load(%struct.nic*) #1

declare dso_local i32 @e100_phy_init(%struct.nic*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @pci_pme_active(%struct.pci_dev*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dma_pool_create(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @e100_free(%struct.nic*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
