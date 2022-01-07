; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.il_priv = type { i64, %struct.ieee80211_hw*, %struct.pci_dev*, i32*, %struct.TYPE_5__, %struct.TYPE_4__*, i32, %struct.il_cfg*, i64, i32, i32, i32*, i32*, i32 }
%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.il_cfg = type { i32 }
%struct.il3945_eeprom = type { i64 }

@il3945_mac_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IL39_CMD_QUEUE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"*** LOAD DRIVER ***\0A\00", align 1
@il3945_ops = common dso_local global i32 0, align 4
@CSR_INI_SET_MASK = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L0S = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L1 = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_CLKPM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No suitable DMA available.\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"pci_resource_len = 0x%08llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pci_resource_base = %p\0A\00", align 1
@CSR_RESET = common dso_local global i32 0, align 4
@CSR_RESET_REG_FLAG_NEVO_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Unable to init EEPROM\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"MAC address: %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to set hw settings\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"initializing driver failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Detected Intel Wireless WiFi Link %s\0A\00", align 1
@il_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Error allocating IRQ %d\0A\00", align 1
@il3945_attribute_group = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"failed to create sysfs device attributes\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@il3945_debugfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @il3945_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.il_cfg*, align 8
  %10 = alloca %struct.il3945_eeprom*, align 8
  %11 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.il_cfg*
  store %struct.il_cfg* %15, %struct.il_cfg** %9, align 8
  %16 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 104, i32* @il3945_mac_ops)
  store %struct.ieee80211_hw* %16, %struct.ieee80211_hw** %8, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %18 = icmp ne %struct.ieee80211_hw* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %291

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 0
  %25 = load %struct.il_priv*, %struct.il_priv** %24, align 8
  store %struct.il_priv* %25, %struct.il_priv** %7, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %27 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 1
  store %struct.ieee80211_hw* %26, %struct.ieee80211_hw** %28, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %29, %struct.TYPE_6__* %31)
  %33 = load i32, i32* @IL39_CMD_QUEUE_NUM, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.il_cfg*, %struct.il_cfg** %9, align 8
  %38 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 7
  store %struct.il_cfg* %37, %struct.il_cfg** %39, align 8
  %40 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 12
  store i32* @il3945_ops, i32** %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 2
  store %struct.pci_dev* %42, %struct.pci_dev** %44, align 8
  %45 = load i32, i32* @CSR_INI_SET_MASK, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* @PCIE_LINK_STATE_L0S, align 4
  %50 = load i32, i32* @PCIE_LINK_STATE_L1, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PCIE_LINK_STATE_CLKPM, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @pci_disable_link_state(%struct.pci_dev* %48, i32 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i64 @pci_enable_device(%struct.pci_dev* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %22
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %286

61:                                               ; preds = %22
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @pci_set_master(%struct.pci_dev* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @DMA_BIT_MASK(i32 32)
  %66 = call i32 @pci_set_dma_mask(%struct.pci_dev* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @DMA_BIT_MASK(i32 32)
  %72 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %61
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @IL_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %283

78:                                               ; preds = %73
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %81 = call i32 @pci_set_drvdata(%struct.pci_dev* %79, %struct.il_priv* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load i32, i32* @DRV_NAME, align 4
  %84 = call i32 @pci_request_regions(%struct.pci_dev* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %283

88:                                               ; preds = %78
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i64 @pci_ioremap_bar(%struct.pci_dev* %89, i32 0)
  %91 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %280

100:                                              ; preds = %88
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = call i64 @pci_resource_len(%struct.pci_dev* %101, i32 0)
  %103 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  %104 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = call i32 @pci_write_config_byte(%struct.pci_dev* %108, i32 65, i32 0)
  %110 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %111 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %110, i32 0, i32 9
  %112 = call i32 @spin_lock_init(i32* %111)
  %113 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %114 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %113, i32 0, i32 6
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %117 = load i32, i32* @CSR_RESET, align 4
  %118 = load i32, i32* @CSR_RESET_REG_FLAG_NEVO_RESET, align 4
  %119 = call i32 @_il_wr(%struct.il_priv* %116, i32 %117, i32 %118)
  %120 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %121 = call i32 @il_eeprom_init(%struct.il_priv* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %100
  %125 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %275

126:                                              ; preds = %100
  %127 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %128 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %130, %struct.il3945_eeprom** %10, align 8
  %131 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %10, align 8
  %132 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %133)
  %135 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %136 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %135, i32 0, i32 1
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %136, align 8
  %138 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %10, align 8
  %139 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %137, i64 %140)
  %142 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %143 = call i32 @il3945_hw_set_hw_params(%struct.il_priv* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %126
  %147 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %272

148:                                              ; preds = %126
  %149 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %150 = call i32 @il3945_init_drv(%struct.il_priv* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %269

155:                                              ; preds = %148
  %156 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %157 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %156, i32 0, i32 7
  %158 = load %struct.il_cfg*, %struct.il_cfg** %157, align 8
  %159 = getelementptr inbounds %struct.il_cfg, %struct.il_cfg* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @IL_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %160)
  %162 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %163 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %162, i32 0, i32 6
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @spin_lock_irqsave(i32* %163, i64 %164)
  %166 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %167 = call i32 @il_disable_interrupts(%struct.il_priv* %166)
  %168 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %169 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %168, i32 0, i32 6
  %170 = load i64, i64* %11, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  %172 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %173 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %172, i32 0, i32 2
  %174 = load %struct.pci_dev*, %struct.pci_dev** %173, align 8
  %175 = call i32 @pci_enable_msi(%struct.pci_dev* %174)
  %176 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %177 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %176, i32 0, i32 2
  %178 = load %struct.pci_dev*, %struct.pci_dev** %177, align 8
  %179 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @il_isr, align 4
  %182 = load i32, i32* @IRQF_SHARED, align 4
  %183 = load i32, i32* @DRV_NAME, align 4
  %184 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %185 = call i32 @request_irq(i32 %180, i32 %181, i32 %182, i32 %183, %struct.il_priv* %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %155
  %189 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %190 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %189, i32 0, i32 2
  %191 = load %struct.pci_dev*, %struct.pci_dev** %190, align 8
  %192 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %193)
  br label %260

195:                                              ; preds = %155
  %196 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %197 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = call i32 @sysfs_create_group(i32* %198, i32* @il3945_attribute_group)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  br label %252

204:                                              ; preds = %195
  %205 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %206 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %207 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %206, i32 0, i32 5
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 5
  %214 = call i32 @il_set_rxon_channel(%struct.il_priv* %205, i32* %213)
  %215 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %216 = call i32 @il3945_setup_deferred_work(%struct.il_priv* %215)
  %217 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %218 = call i32 @il3945_setup_handlers(%struct.il_priv* %217)
  %219 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %220 = call i32 @il_power_initialize(%struct.il_priv* %219)
  %221 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %222 = call i32 @il_enable_interrupts(%struct.il_priv* %221)
  %223 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %224 = call i32 @il3945_setup_mac(%struct.il_priv* %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %204
  br label %241

228:                                              ; preds = %204
  %229 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %230 = load i32, i32* @DRV_NAME, align 4
  %231 = call i32 @il_dbgfs_register(%struct.il_priv* %229, i32 %230)
  %232 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %233 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %236 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* @HZ, align 4
  %239 = mul nsw i32 2, %238
  %240 = call i32 @queue_delayed_work(i32* %234, i32* %237, i32 %239)
  store i32 0, i32* %3, align 4
  br label %293

241:                                              ; preds = %227
  %242 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %243 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @destroy_workqueue(i32* %244)
  %246 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %247 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %246, i32 0, i32 3
  store i32* null, i32** %247, align 8
  %248 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %249 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = call i32 @sysfs_remove_group(i32* %250, i32* @il3945_attribute_group)
  br label %252

252:                                              ; preds = %241, %202
  %253 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %254 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %253, i32 0, i32 2
  %255 = load %struct.pci_dev*, %struct.pci_dev** %254, align 8
  %256 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %259 = call i32 @free_irq(i32 %257, %struct.il_priv* %258)
  br label %260

260:                                              ; preds = %252, %188
  %261 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %262 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %261, i32 0, i32 2
  %263 = load %struct.pci_dev*, %struct.pci_dev** %262, align 8
  %264 = call i32 @pci_disable_msi(%struct.pci_dev* %263)
  %265 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %266 = call i32 @il_free_geos(%struct.il_priv* %265)
  %267 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %268 = call i32 @il_free_channel_map(%struct.il_priv* %267)
  br label %269

269:                                              ; preds = %260, %153
  %270 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %271 = call i32 @il3945_unset_hw_params(%struct.il_priv* %270)
  br label %272

272:                                              ; preds = %269, %146
  %273 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %274 = call i32 @il_eeprom_free(%struct.il_priv* %273)
  br label %275

275:                                              ; preds = %272, %124
  %276 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %277 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i32 @iounmap(i64 %278)
  br label %280

280:                                              ; preds = %275, %97
  %281 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %282 = call i32 @pci_release_regions(%struct.pci_dev* %281)
  br label %283

283:                                              ; preds = %280, %87, %76
  %284 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %285 = call i32 @pci_disable_device(%struct.pci_dev* %284)
  br label %286

286:                                              ; preds = %283, %58
  %287 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %288 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %287, i32 0, i32 1
  %289 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %288, align 8
  %290 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %289)
  br label %291

291:                                              ; preds = %286, %19
  %292 = load i32, i32* %6, align 4
  store i32 %292, i32* %3, align 4
  br label %293

293:                                              ; preds = %291, %228
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @pci_disable_link_state(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.il_priv*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_eeprom_init(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i64) #1

declare dso_local i32 @il3945_hw_set_hw_params(%struct.il_priv*) #1

declare dso_local i32 @il3945_init_drv(%struct.il_priv*) #1

declare dso_local i32 @IL_INFO(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_disable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.il_priv*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @il_set_rxon_channel(%struct.il_priv*, i32*) #1

declare dso_local i32 @il3945_setup_deferred_work(%struct.il_priv*) #1

declare dso_local i32 @il3945_setup_handlers(%struct.il_priv*) #1

declare dso_local i32 @il_power_initialize(%struct.il_priv*) #1

declare dso_local i32 @il_enable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @il3945_setup_mac(%struct.il_priv*) #1

declare dso_local i32 @il_dbgfs_register(%struct.il_priv*, i32) #1

declare dso_local i32 @queue_delayed_work(i32*, i32*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.il_priv*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @il_free_geos(%struct.il_priv*) #1

declare dso_local i32 @il_free_channel_map(%struct.il_priv*) #1

declare dso_local i32 @il3945_unset_hw_params(%struct.il_priv*) #1

declare dso_local i32 @il_eeprom_free(%struct.il_priv*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
