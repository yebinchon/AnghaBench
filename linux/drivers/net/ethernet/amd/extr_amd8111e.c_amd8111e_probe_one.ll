; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i64 }
%struct.pci_device_id = type { i32 }
%struct.amd8111e_priv = type { i32, i32, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i64, %struct.net_device*, %struct.pci_dev* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32*, i32, i32, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Cannot enable new PCI device\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot find PCI base address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MODULE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot obtain PCI resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"No Power Management capability\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"DMA not supported\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot map device registers\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@PADR = common dso_local global i64 0, align 8
@speed_duplex = common dso_local global i32* null, align 8
@card_idx = common dso_local global i64 0, align 8
@coalesce = common dso_local global i64* null, align 8
@OPTION_INTR_COAL_ENABLE = common dso_local global i32 0, align 4
@dynamic_ipg = common dso_local global i64* null, align 8
@OPTION_DYN_IPG_ENABLE = common dso_local global i32 0, align 4
@amd8111e_netdev_ops = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@AMD8111E_TX_TIMEOUT = common dso_local global i32 0, align 4
@AMD8111E_MIN_MTU = common dso_local global i32 0, align 4
@AMD8111E_MAX_MTU = common dso_local global i32 0, align 4
@amd8111e_rx_poll = common dso_local global i32 0, align 4
@amd8111e_mdio_read = common dso_local global i32 0, align 4
@amd8111e_mdio_write = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot register net device\0A\00", align 1
@amd8111e_config_ipg = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPG_CONVERGE_JIFFIES = common dso_local global i64 0, align 8
@DEFAULT_IPG = common dso_local global i32 0, align 4
@CSTATE = common dso_local global i32 0, align 4
@CHIPID = common dso_local global i64 0, align 8
@chip_version = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"AMD-8111e Driver Version: %s\0A\00", align 1
@MODULE_VERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"[ Rev %x ] PCI 10/100BaseT Ethernet %pM\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Found MII PHY ID 0x%08x at address 0x%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Couldn't detect MII PHY, assuming address 0x01\0A\00", align 1
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @amd8111e_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_probe_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amd8111e_priv*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pci_enable_device(%struct.pci_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %305

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_resource_flags(%struct.pci_dev* %22, i32 0)
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %301

33:                                               ; preds = %21
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load i32, i32* @MODULE_NAME, align 4
  %36 = call i32 @pci_request_regions(%struct.pci_dev* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %301

43:                                               ; preds = %33
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i32 @pci_set_master(%struct.pci_dev* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %298

56:                                               ; preds = %43
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = call i32 @DMA_BIT_MASK(i32 32)
  %59 = call i64 @pci_set_dma_mask(%struct.pci_dev* %57, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %298

67:                                               ; preds = %56
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i64 @pci_resource_start(%struct.pci_dev* %68, i32 0)
  store i64 %69, i64* %8, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i64 @pci_resource_len(%struct.pci_dev* %70, i32 0)
  store i64 %71, i64* %9, align 8
  %72 = call %struct.net_device* @alloc_etherdev(i32 104)
  store %struct.net_device* %72, %struct.net_device** %11, align 8
  %73 = load %struct.net_device*, %struct.net_device** %11, align 8
  %74 = icmp ne %struct.net_device* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %298

78:                                               ; preds = %67
  %79 = load %struct.net_device*, %struct.net_device** %11, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = call i32 @SET_NETDEV_DEV(%struct.net_device* %79, i32* %81)
  %83 = load %struct.net_device*, %struct.net_device** %11, align 8
  %84 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %83)
  store %struct.amd8111e_priv* %84, %struct.amd8111e_priv** %10, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %87 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %86, i32 0, i32 11
  store %struct.pci_dev* %85, %struct.pci_dev** %87, align 8
  %88 = load %struct.net_device*, %struct.net_device** %11, align 8
  %89 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %90 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %89, i32 0, i32 10
  store %struct.net_device* %88, %struct.net_device** %90, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %95 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %94, i32 0, i32 9
  store i64 %93, i64* %95, align 8
  %96 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %97 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %96, i32 0, i32 8
  %98 = call i32 @spin_lock_init(i32* %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i64 @devm_ioremap(i32* %100, i64 %101, i64 %102)
  %104 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %105 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  %106 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %107 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %78
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %295

116:                                              ; preds = %78
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %137, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @ETH_ALEN, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %123 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PADR, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = call i32 @readb(i64 %129)
  %131 = load %struct.net_device*, %struct.net_device** %11, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  br label %137

137:                                              ; preds = %121
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %117

140:                                              ; preds = %117
  %141 = load i32*, i32** @speed_duplex, align 8
  %142 = load i64, i64* @card_idx, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %146 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 4
  %147 = load i64*, i64** @coalesce, align 8
  %148 = load i64, i64* @card_idx, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %140
  %153 = load i32, i32* @OPTION_INTR_COAL_ENABLE, align 4
  %154 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %155 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %140
  %159 = load i64*, i64** @dynamic_ipg, align 8
  %160 = load i64, i64* @card_idx, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* @card_idx, align 8
  %162 = getelementptr inbounds i64, i64* %159, i64 %160
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i32, i32* @OPTION_DYN_IPG_ENABLE, align 4
  %167 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %168 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %158
  %172 = load %struct.net_device*, %struct.net_device** %11, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 7
  store i32* @amd8111e_netdev_ops, i32** %173, align 8
  %174 = load %struct.net_device*, %struct.net_device** %11, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 6
  store i32* @ops, i32** %175, align 8
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.net_device*, %struct.net_device** %11, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @AMD8111E_TX_TIMEOUT, align 4
  %182 = load %struct.net_device*, %struct.net_device** %11, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @AMD8111E_MIN_MTU, align 4
  %185 = load %struct.net_device*, %struct.net_device** %11, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @AMD8111E_MAX_MTU, align 4
  %188 = load %struct.net_device*, %struct.net_device** %11, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.net_device*, %struct.net_device** %11, align 8
  %191 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %192 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %191, i32 0, i32 6
  %193 = load i32, i32* @amd8111e_rx_poll, align 4
  %194 = call i32 @netif_napi_add(%struct.net_device* %190, i32* %192, i32 %193, i32 32)
  %195 = load %struct.net_device*, %struct.net_device** %11, align 8
  %196 = call i32 @amd8111e_probe_ext_phy(%struct.net_device* %195)
  %197 = load %struct.net_device*, %struct.net_device** %11, align 8
  %198 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %199 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  store %struct.net_device* %197, %struct.net_device** %200, align 8
  %201 = load i32, i32* @amd8111e_mdio_read, align 4
  %202 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %203 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  store i32 %201, i32* %204, align 8
  %205 = load i32, i32* @amd8111e_mdio_write, align 4
  %206 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %207 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  %209 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %210 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %213 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 8
  %215 = load %struct.net_device*, %struct.net_device** %11, align 8
  %216 = call i32 @amd8111e_set_rx_buff_len(%struct.net_device* %215)
  %217 = load %struct.net_device*, %struct.net_device** %11, align 8
  %218 = call i32 @register_netdev(%struct.net_device* %217)
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %171
  %222 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %223 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %222, i32 0, i32 0
  %224 = call i32 @dev_err(i32* %223, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %295

225:                                              ; preds = %171
  %226 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %227 = load %struct.net_device*, %struct.net_device** %11, align 8
  %228 = call i32 @pci_set_drvdata(%struct.pci_dev* %226, %struct.net_device* %227)
  %229 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %230 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @OPTION_DYN_IPG_ENABLE, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %225
  %236 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %237 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i32, i32* @amd8111e_config_ipg, align 4
  %240 = call i32 @timer_setup(%struct.TYPE_6__* %238, i32 %239, i32 0)
  %241 = load i64, i64* @jiffies, align 8
  %242 = load i64, i64* @IPG_CONVERGE_JIFFIES, align 8
  %243 = add nsw i64 %241, %242
  %244 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %245 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  store i64 %243, i64* %247, align 8
  %248 = load i32, i32* @DEFAULT_IPG, align 4
  %249 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %250 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  store i32 %248, i32* %251, align 4
  %252 = load i32, i32* @CSTATE, align 4
  %253 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %254 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  store i32 %252, i32* %255, align 8
  br label %256

256:                                              ; preds = %235, %225
  %257 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %258 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @CHIPID, align 8
  %261 = add nsw i64 %259, %260
  %262 = call i32 @readl(i64 %261)
  %263 = and i32 %262, -268435456
  %264 = lshr i32 %263, 28
  store i32 %264, i32* @chip_version, align 4
  %265 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %266 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %265, i32 0, i32 0
  %267 = load i32, i32* @MODULE_VERS, align 4
  %268 = call i32 (i32*, i8*, ...) @dev_info(i32* %266, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %267)
  %269 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %270 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %269, i32 0, i32 0
  %271 = load i32, i32* @chip_version, align 4
  %272 = load %struct.net_device*, %struct.net_device** %11, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 (i32*, i8*, ...) @dev_info(i32* %270, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %271, i32* %274)
  %276 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %277 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %256
  %281 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %282 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %281, i32 0, i32 0
  %283 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %284 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %10, align 8
  %287 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i32 (i32*, i8*, ...) @dev_info(i32* %282, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %285, i32 %288)
  br label %294

290:                                              ; preds = %256
  %291 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %292 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %291, i32 0, i32 0
  %293 = call i32 (i32*, i8*, ...) @dev_info(i32* %292, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %294

294:                                              ; preds = %290, %280
  store i32 0, i32* %3, align 4
  br label %305

295:                                              ; preds = %221, %110
  %296 = load %struct.net_device*, %struct.net_device** %11, align 8
  %297 = call i32 @free_netdev(%struct.net_device* %296)
  br label %298

298:                                              ; preds = %295, %75, %61, %50
  %299 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %300 = call i32 @pci_release_regions(%struct.pci_dev* %299)
  br label %301

301:                                              ; preds = %298, %39, %27
  %302 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %303 = call i32 @pci_disable_device(%struct.pci_dev* %302)
  %304 = load i32, i32* %6, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %301, %294, %16
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @devm_ioremap(i32*, i64, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @amd8111e_probe_ext_phy(%struct.net_device*) #1

declare dso_local i32 @amd8111e_set_rx_buff_len(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
