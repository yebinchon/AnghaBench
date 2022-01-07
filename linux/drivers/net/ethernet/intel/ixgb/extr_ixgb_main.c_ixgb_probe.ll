; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i64, i32, i32* }
%struct.ixgb_adapter = type { i32, %struct.TYPE_4__, %struct.net_device*, i32, i32, i32, i64, i64, i32, i32, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32, i32, %struct.ixgb_adapter* }

@ixgb_probe.cards_found = internal global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No usable DMA configuration, aborting\0A\00", align 1
@ixgb_driver_name = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@BAR_0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BAR_1 = common dso_local global i32 0, align 4
@BAR_5 = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@ixgb_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ixgb_clean = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@IXGB_MAX_JUMBO_FRAME_SIZE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@probe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"The EEPROM Checksum Is Not Valid\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid MAC Address\0A\00", align 1
@ixgb_watchdog = common dso_local global i32 0, align 4
@ixgb_tx_timeout_task = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Intel(R) PRO/10GbE Network Connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ixgb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ixgb_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %3, align 4
  br label %289

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @DMA_BIT_MASK(i32 64)
  %21 = call i32 @dma_set_mask_and_coherent(i32* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %35

25:                                               ; preds = %17
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = call i32 @DMA_BIT_MASK(i32 32)
  %29 = call i32 @dma_set_mask_and_coherent(i32* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %285

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %24
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* @ixgb_driver_name, align 4
  %38 = call i32 @pci_request_regions(%struct.pci_dev* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %284

42:                                               ; preds = %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_set_master(%struct.pci_dev* %43)
  %45 = call %struct.net_device* @alloc_etherdev(i32 80)
  store %struct.net_device* %45, %struct.net_device** %6, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = icmp ne %struct.net_device* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  br label %281

51:                                               ; preds = %42
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 @SET_NETDEV_DEV(%struct.net_device* %52, i32* %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i32 @pci_set_drvdata(%struct.pci_dev* %56, %struct.net_device* %57)
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %59)
  store %struct.ixgb_adapter* %60, %struct.ixgb_adapter** %7, align 8
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %63 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %62, i32 0, i32 2
  store %struct.net_device* %61, %struct.net_device** %63, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %65, i32 0, i32 10
  store %struct.pci_dev* %64, %struct.pci_dev** %66, align 8
  %67 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %68 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store %struct.ixgb_adapter* %67, %struct.ixgb_adapter** %70, align 8
  %71 = load i32, i32* @debug, align 4
  %72 = load i32, i32* @DEFAULT_MSG_ENABLE, align 4
  %73 = call i32 @netif_msg_init(i32 %71, i32 %72)
  %74 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %75 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = load i32, i32* @BAR_0, align 4
  %78 = call i32 @pci_ioremap_bar(%struct.pci_dev* %76, i32 %77)
  %79 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %83 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %51
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %278

90:                                               ; preds = %51
  %91 = load i32, i32* @BAR_1, align 4
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %117, %90
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @BAR_5, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @pci_resource_len(%struct.pci_dev* %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %117

102:                                              ; preds = %96
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @pci_resource_flags(%struct.pci_dev* %103, i32 %104)
  %106 = load i32, i32* @IORESOURCE_IO, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @pci_resource_start(%struct.pci_dev* %110, i32 %111)
  %113 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %114 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  br label %120

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %101
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %92

120:                                              ; preds = %109, %92
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 8
  store i32* @ixgb_netdev_ops, i32** %122, align 8
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = call i32 @ixgb_set_ethtool_ops(%struct.net_device* %123)
  %125 = load i32, i32* @HZ, align 4
  %126 = mul nsw i32 5, %125
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %131 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %130, i32 0, i32 8
  %132 = load i32, i32* @ixgb_clean, align 4
  %133 = call i32 @netif_napi_add(%struct.net_device* %129, i32* %131, i32 %132, i32 64)
  %134 = load %struct.net_device*, %struct.net_device** %6, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = call i32 @pci_name(%struct.pci_dev* %137)
  %139 = call i32 @strncpy(i32 %136, i32 %138, i32 3)
  %140 = load i32, i32* @ixgb_probe.cards_found, align 4
  %141 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %142 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %144 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %143, i32 0, i32 7
  store i64 0, i64* %144, align 8
  %145 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %146 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %145, i32 0, i32 6
  store i64 0, i64* %146, align 8
  %147 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %148 = call i32 @ixgb_sw_init(%struct.ixgb_adapter* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %120
  br label %271

152:                                              ; preds = %120
  %153 = load i32, i32* @NETIF_F_SG, align 4
  %154 = load i32, i32* @NETIF_F_TSO, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.net_device*, %struct.net_device** %6, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.net_device*, %struct.net_device** %6, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.net_device*, %struct.net_device** %6, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %172 = load %struct.net_device*, %struct.net_device** %6, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %152
  %179 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %185 = load %struct.net_device*, %struct.net_device** %6, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %178, %152
  %190 = load i32, i32* @ETH_MIN_MTU, align 4
  %191 = load %struct.net_device*, %struct.net_device** %6, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 7
  store i32 %190, i32* %192, align 8
  %193 = load i64, i64* @IXGB_MAX_JUMBO_FRAME_SIZE, align 8
  %194 = load i64, i64* @ETH_HLEN, align 8
  %195 = sub nsw i64 %193, %194
  %196 = load %struct.net_device*, %struct.net_device** %6, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 6
  store i64 %195, i64* %197, align 8
  %198 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %199 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %198, i32 0, i32 1
  %200 = call i32 @ixgb_validate_eeprom_checksum(%struct.TYPE_4__* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %189
  %203 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %204 = load i32, i32* @probe, align 4
  %205 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %206 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %205, i32 0, i32 2
  %207 = load %struct.net_device*, %struct.net_device** %206, align 8
  %208 = call i32 @netif_err(%struct.ixgb_adapter* %203, i32 %204, %struct.net_device* %207, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i32, i32* @EIO, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %10, align 4
  br label %272

211:                                              ; preds = %189
  %212 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %213 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %212, i32 0, i32 1
  %214 = load %struct.net_device*, %struct.net_device** %6, align 8
  %215 = getelementptr inbounds %struct.net_device, %struct.net_device* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ixgb_get_ee_mac_addr(%struct.TYPE_4__* %213, i32 %216)
  %218 = load %struct.net_device*, %struct.net_device** %6, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @is_valid_ether_addr(i32 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %211
  %224 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %225 = load i32, i32* @probe, align 4
  %226 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %227 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %226, i32 0, i32 2
  %228 = load %struct.net_device*, %struct.net_device** %227, align 8
  %229 = call i32 @netif_err(%struct.ixgb_adapter* %224, i32 %225, %struct.net_device* %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %230 = load i32, i32* @EIO, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %10, align 4
  br label %272

232:                                              ; preds = %211
  %233 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %234 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %233, i32 0, i32 1
  %235 = call i32 @ixgb_get_ee_pba_number(%struct.TYPE_4__* %234)
  %236 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %237 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 8
  %238 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %239 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %238, i32 0, i32 4
  %240 = load i32, i32* @ixgb_watchdog, align 4
  %241 = call i32 @timer_setup(i32* %239, i32 %240, i32 0)
  %242 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %243 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %242, i32 0, i32 3
  %244 = load i32, i32* @ixgb_tx_timeout_task, align 4
  %245 = call i32 @INIT_WORK(i32* %243, i32 %244)
  %246 = load %struct.net_device*, %struct.net_device** %6, align 8
  %247 = getelementptr inbounds %struct.net_device, %struct.net_device* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @strcpy(i32 %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %250 = load %struct.net_device*, %struct.net_device** %6, align 8
  %251 = call i32 @register_netdev(%struct.net_device* %250)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %232
  br label %270

255:                                              ; preds = %232
  %256 = load %struct.net_device*, %struct.net_device** %6, align 8
  %257 = call i32 @netif_carrier_off(%struct.net_device* %256)
  %258 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %259 = load i32, i32* @probe, align 4
  %260 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %261 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %260, i32 0, i32 2
  %262 = load %struct.net_device*, %struct.net_device** %261, align 8
  %263 = call i32 @netif_info(%struct.ixgb_adapter* %258, i32 %259, %struct.net_device* %262, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %264 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %265 = call i32 @ixgb_check_options(%struct.ixgb_adapter* %264)
  %266 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %267 = call i32 @ixgb_reset(%struct.ixgb_adapter* %266)
  %268 = load i32, i32* @ixgb_probe.cards_found, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* @ixgb_probe.cards_found, align 4
  store i32 0, i32* %3, align 4
  br label %289

270:                                              ; preds = %254
  br label %271

271:                                              ; preds = %270, %151
  br label %272

272:                                              ; preds = %271, %223, %202
  %273 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %274 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @iounmap(i32 %276)
  br label %278

278:                                              ; preds = %272, %87
  %279 = load %struct.net_device*, %struct.net_device** %6, align 8
  %280 = call i32 @free_netdev(%struct.net_device* %279)
  br label %281

281:                                              ; preds = %278, %48
  %282 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %283 = call i32 @pci_release_regions(%struct.pci_dev* %282)
  br label %284

284:                                              ; preds = %281, %41
  br label %285

285:                                              ; preds = %284, %32
  %286 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %287 = call i32 @pci_disable_device(%struct.pci_dev* %286)
  %288 = load i32, i32* %10, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %285, %255, %15
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @ixgb_set_ethtool_ops(%struct.net_device*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @ixgb_sw_init(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_validate_eeprom_checksum(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_err(%struct.ixgb_adapter*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @ixgb_get_ee_mac_addr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @ixgb_get_ee_pba_number(%struct.TYPE_4__*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.ixgb_adapter*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @ixgb_check_options(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

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
