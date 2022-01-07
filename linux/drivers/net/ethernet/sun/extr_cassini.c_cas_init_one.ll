; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i64, i32, i32, i32*, i32*, i32 }
%struct.cas = type { i64, i32, i64, i32, i64, i32, i32, %struct.cas_init_block*, i32, i32*, i32*, i32*, i32*, i64, %struct.net_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i64, i32, i64, i64, %struct.pci_dev* }
%struct.cas_init_block = type { i32*, i32*, i32* }

@cas_init_one.cas_version_printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot enable PCI device, aborting\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Cannot find proper PCI device base address, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Could not enable MWI for %s\0A\00", align 1
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@CAS_PREF_CACHELINE_SIZE = common dso_local global i64 0, align 8
@SMP_CACHE_BYTES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Could not set PCI cache line size\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Unable to obtain 64-bit DMA for consistent allocations\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"No usable DMA configuration, aborting\0A\00", align 1
@cassini_debug = common dso_local global i64 0, align 8
@CAS_DEF_MSG_ENABLE = common dso_local global i64 0, align 8
@LINK_TRANSITION_UNKNOWN = common dso_local global i32 0, align 4
@N_TX_RINGS = common dso_local global i32 0, align 4
@cas_link_timer = common dso_local global i32 0, align 4
@cas_reset_task = common dso_local global i32 0, align 4
@link_mode = common dso_local global i32 0, align 4
@link_modes = common dso_local global i32* null, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@link_down = common dso_local global i32 0, align 4
@LINK_TRANSITION_LINK_DOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"Cannot map device registers, aborting\0A\00", align 1
@CAS_FLAG_SATURN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"Cannot allocate init block, aborting\0A\00", align 1
@N_RX_DESC_RINGS = common dso_local global i32 0, align 4
@N_RX_COMP_RINGS = common dso_local global i32 0, align 4
@N_RX_FLOWS = common dso_local global i32 0, align 4
@cas_netdev_ops = common dso_local global i32 0, align 4
@cas_ethtool_ops = common dso_local global i32 0, align 4
@CAS_TX_TIMEOUT = common dso_local global i32 0, align 4
@CAS_FLAG_NO_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@CAS_MIN_MTU = common dso_local global i32 0, align 4
@CAS_MAX_MTU = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Cannot register net device, aborting\0A\00", align 1
@REG_BIM_CFG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [53 x i8] c"Sun Cassini%s (%sbit/%sMHz PCI/%s) Ethernet[%d] %pM\0A\00", align 1
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BIM_CFG_32BIT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@BIM_CFG_66MHZ = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"66\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"33\00", align 1
@CAS_PHY_SERDES = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"Fi\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"Cu\00", align 1
@cas_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cas_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @cas_init_one.cas_version_printed, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @cas_init_one.cas_version_printed, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @version, align 4
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_enable_device(%struct.pci_dev* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %566

31:                                               ; preds = %21
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_resource_flags(%struct.pci_dev* %32, i32 0)
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %561

43:                                               ; preds = %31
  %44 = call %struct.net_device* @alloc_etherdev(i32 224)
  store %struct.net_device* %44, %struct.net_device** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %561

50:                                               ; preds = %43
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = call i32 @SET_NETDEV_DEV(%struct.net_device* %51, i32* %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pci_request_regions(%struct.pci_dev* %55, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 1
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %558

66:                                               ; preds = %50
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_set_master(%struct.pci_dev* %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = load i32, i32* @PCI_COMMAND, align 4
  %71 = call i32 @pci_read_config_word(%struct.pci_dev* %69, i32 %70, i32* %12)
  %72 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load i32, i32* @PCI_COMMAND, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @pci_write_config_word(%struct.pci_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = call i64 @pci_try_set_mwi(%struct.pci_dev* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %66
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = call i32 @pci_name(%struct.pci_dev* %87)
  %89 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %66
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = call i32 @cas_program_bridge(%struct.pci_dev* %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %95 = call i32 @pci_read_config_byte(%struct.pci_dev* %93, i32 %94, i64* %13)
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @CAS_PREF_CACHELINE_SIZE, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %90
  %100 = load i64, i64* @CAS_PREF_CACHELINE_SIZE, align 8
  %101 = load i64, i64* @SMP_CACHE_BYTES, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* @CAS_PREF_CACHELINE_SIZE, align 8
  br label %107

105:                                              ; preds = %99
  %106 = load i64, i64* @SMP_CACHE_BYTES, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i64 [ %104, %103 ], [ %106, %105 ]
  store i64 %108, i64* %14, align 8
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %111 = load i64, i64* %14, align 8
  %112 = call i64 @pci_write_config_byte(%struct.pci_dev* %109, i32 %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 1
  %117 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %553

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %90
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = call i32 @DMA_BIT_MASK(i32 64)
  %122 = call i32 @pci_set_dma_mask(%struct.pci_dev* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  store i32 1, i32* %11, align 4
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = call i32 @DMA_BIT_MASK(i32 64)
  %127 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 1
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  br label %550

134:                                              ; preds = %124
  br label %146

135:                                              ; preds = %119
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = call i32 @DMA_BIT_MASK(i32 32)
  %138 = call i32 @pci_set_dma_mask(%struct.pci_dev* %136, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 1
  %144 = call i32 @dev_err(i32* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %550

145:                                              ; preds = %135
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %145, %134
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = call i64 @pci_resource_len(%struct.pci_dev* %147, i32 0)
  store i64 %148, i64* %6, align 8
  %149 = load %struct.net_device*, %struct.net_device** %7, align 8
  %150 = call %struct.cas* @netdev_priv(%struct.net_device* %149)
  store %struct.cas* %150, %struct.cas** %8, align 8
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = load %struct.cas*, %struct.cas** %8, align 8
  %153 = getelementptr inbounds %struct.cas, %struct.cas* %152, i32 0, i32 33
  store %struct.pci_dev* %151, %struct.pci_dev** %153, align 8
  %154 = load i64, i64* %14, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i64, i64* %13, align 8
  br label %159

158:                                              ; preds = %146
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i64 [ %157, %156 ], [ 0, %158 ]
  %161 = load %struct.cas*, %struct.cas** %8, align 8
  %162 = getelementptr inbounds %struct.cas, %struct.cas* %161, i32 0, i32 32
  store i64 %160, i64* %162, align 8
  %163 = load %struct.net_device*, %struct.net_device** %7, align 8
  %164 = load %struct.cas*, %struct.cas** %8, align 8
  %165 = getelementptr inbounds %struct.cas, %struct.cas* %164, i32 0, i32 14
  store %struct.net_device* %163, %struct.net_device** %165, align 8
  %166 = load i64, i64* @cassini_debug, align 8
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = load i64, i64* @CAS_DEF_MSG_ENABLE, align 8
  br label %172

170:                                              ; preds = %159
  %171 = load i64, i64* @cassini_debug, align 8
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i64 [ %169, %168 ], [ %171, %170 ]
  %174 = load %struct.cas*, %struct.cas** %8, align 8
  %175 = getelementptr inbounds %struct.cas, %struct.cas* %174, i32 0, i32 31
  store i64 %173, i64* %175, align 8
  %176 = load i32, i32* @LINK_TRANSITION_UNKNOWN, align 4
  %177 = load %struct.cas*, %struct.cas** %8, align 8
  %178 = getelementptr inbounds %struct.cas, %struct.cas* %177, i32 0, i32 15
  store i32 %176, i32* %178, align 8
  %179 = load %struct.cas*, %struct.cas** %8, align 8
  %180 = getelementptr inbounds %struct.cas, %struct.cas* %179, i32 0, i32 29
  store i64 0, i64* %180, align 8
  %181 = load %struct.cas*, %struct.cas** %8, align 8
  %182 = getelementptr inbounds %struct.cas, %struct.cas* %181, i32 0, i32 28
  %183 = call i32 @spin_lock_init(i32* %182)
  %184 = load %struct.cas*, %struct.cas** %8, align 8
  %185 = getelementptr inbounds %struct.cas, %struct.cas* %184, i32 0, i32 27
  %186 = call i32 @spin_lock_init(i32* %185)
  %187 = load %struct.cas*, %struct.cas** %8, align 8
  %188 = getelementptr inbounds %struct.cas, %struct.cas* %187, i32 0, i32 26
  %189 = call i32 @spin_lock_init(i32* %188)
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %209, %172
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @N_TX_RINGS, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %190
  %195 = load %struct.cas*, %struct.cas** %8, align 8
  %196 = getelementptr inbounds %struct.cas, %struct.cas* %195, i32 0, i32 24
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = call i32 @spin_lock_init(i32* %200)
  %202 = load %struct.cas*, %struct.cas** %8, align 8
  %203 = getelementptr inbounds %struct.cas, %struct.cas* %202, i32 0, i32 25
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = call i32 @spin_lock_init(i32* %207)
  br label %209

209:                                              ; preds = %194
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %190

212:                                              ; preds = %190
  %213 = load %struct.cas*, %struct.cas** %8, align 8
  %214 = getelementptr inbounds %struct.cas, %struct.cas* %213, i32 0, i32 24
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* @N_TX_RINGS, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = call i32 @spin_lock_init(i32* %218)
  %220 = load %struct.cas*, %struct.cas** %8, align 8
  %221 = getelementptr inbounds %struct.cas, %struct.cas* %220, i32 0, i32 5
  %222 = call i32 @mutex_init(i32* %221)
  %223 = load %struct.cas*, %struct.cas** %8, align 8
  %224 = getelementptr inbounds %struct.cas, %struct.cas* %223, i32 0, i32 23
  %225 = load i32, i32* @cas_link_timer, align 4
  %226 = call i32 @timer_setup(i32* %224, i32 %225, i32 0)
  %227 = load %struct.cas*, %struct.cas** %8, align 8
  %228 = getelementptr inbounds %struct.cas, %struct.cas* %227, i32 0, i32 22
  %229 = call i32 @atomic_set(i32* %228, i32 0)
  %230 = load %struct.cas*, %struct.cas** %8, align 8
  %231 = getelementptr inbounds %struct.cas, %struct.cas* %230, i32 0, i32 21
  %232 = call i32 @atomic_set(i32* %231, i32 0)
  %233 = load %struct.cas*, %struct.cas** %8, align 8
  %234 = getelementptr inbounds %struct.cas, %struct.cas* %233, i32 0, i32 20
  %235 = call i32 @atomic_set(i32* %234, i32 0)
  %236 = load %struct.cas*, %struct.cas** %8, align 8
  %237 = getelementptr inbounds %struct.cas, %struct.cas* %236, i32 0, i32 19
  %238 = call i32 @atomic_set(i32* %237, i32 0)
  %239 = load %struct.cas*, %struct.cas** %8, align 8
  %240 = getelementptr inbounds %struct.cas, %struct.cas* %239, i32 0, i32 18
  %241 = load i32, i32* @cas_reset_task, align 4
  %242 = call i32 @INIT_WORK(i32* %240, i32 %241)
  %243 = load i32, i32* @link_mode, align 4
  %244 = icmp sge i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %212
  %246 = load i32, i32* @link_mode, align 4
  %247 = icmp slt i32 %246, 6
  br i1 %247, label %248, label %256

248:                                              ; preds = %245
  %249 = load i32*, i32** @link_modes, align 8
  %250 = load i32, i32* @link_mode, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.cas*, %struct.cas** %8, align 8
  %255 = getelementptr inbounds %struct.cas, %struct.cas* %254, i32 0, i32 17
  store i32 %253, i32* %255, align 8
  br label %260

256:                                              ; preds = %245, %212
  %257 = load i32, i32* @BMCR_ANENABLE, align 4
  %258 = load %struct.cas*, %struct.cas** %8, align 8
  %259 = getelementptr inbounds %struct.cas, %struct.cas* %258, i32 0, i32 17
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %256, %248
  %261 = load i32, i32* @link_down, align 4
  %262 = load %struct.cas*, %struct.cas** %8, align 8
  %263 = getelementptr inbounds %struct.cas, %struct.cas* %262, i32 0, i32 16
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* @LINK_TRANSITION_LINK_DOWN, align 4
  %265 = load %struct.cas*, %struct.cas** %8, align 8
  %266 = getelementptr inbounds %struct.cas, %struct.cas* %265, i32 0, i32 15
  store i32 %264, i32* %266, align 8
  %267 = load %struct.cas*, %struct.cas** %8, align 8
  %268 = getelementptr inbounds %struct.cas, %struct.cas* %267, i32 0, i32 14
  %269 = load %struct.net_device*, %struct.net_device** %268, align 8
  %270 = call i32 @netif_carrier_off(%struct.net_device* %269)
  %271 = load %struct.cas*, %struct.cas** %8, align 8
  %272 = getelementptr inbounds %struct.cas, %struct.cas* %271, i32 0, i32 13
  store i64 0, i64* %272, align 8
  %273 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %274 = load i64, i64* %6, align 8
  %275 = call i64 @pci_iomap(%struct.pci_dev* %273, i32 0, i64 %274)
  %276 = load %struct.cas*, %struct.cas** %8, align 8
  %277 = getelementptr inbounds %struct.cas, %struct.cas* %276, i32 0, i32 4
  store i64 %275, i64* %277, align 8
  %278 = load %struct.cas*, %struct.cas** %8, align 8
  %279 = getelementptr inbounds %struct.cas, %struct.cas* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %260
  %283 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %284 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %283, i32 0, i32 1
  %285 = call i32 @dev_err(i32* %284, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %550

286:                                              ; preds = %260
  %287 = load i64, i64* %6, align 8
  %288 = load %struct.cas*, %struct.cas** %8, align 8
  %289 = getelementptr inbounds %struct.cas, %struct.cas* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  %290 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %291 = call i32 @pci_save_state(%struct.pci_dev* %290)
  %292 = load %struct.cas*, %struct.cas** %8, align 8
  %293 = call i32 @cas_check_pci_invariants(%struct.cas* %292)
  %294 = load %struct.cas*, %struct.cas** %8, align 8
  %295 = call i32 @cas_hard_reset(%struct.cas* %294)
  %296 = load %struct.cas*, %struct.cas** %8, align 8
  %297 = call i32 @cas_reset(%struct.cas* %296, i32 0)
  %298 = load %struct.cas*, %struct.cas** %8, align 8
  %299 = call i64 @cas_check_invariants(%struct.cas* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %286
  br label %530

302:                                              ; preds = %286
  %303 = load %struct.cas*, %struct.cas** %8, align 8
  %304 = getelementptr inbounds %struct.cas, %struct.cas* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @CAS_FLAG_SATURN, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %302
  %310 = load %struct.cas*, %struct.cas** %8, align 8
  %311 = call i32 @cas_saturn_firmware_init(%struct.cas* %310)
  br label %312

312:                                              ; preds = %309, %302
  %313 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %314 = load %struct.cas*, %struct.cas** %8, align 8
  %315 = getelementptr inbounds %struct.cas, %struct.cas* %314, i32 0, i32 6
  %316 = call i64 @pci_alloc_consistent(%struct.pci_dev* %313, i32 24, i32* %315)
  %317 = inttoptr i64 %316 to %struct.cas_init_block*
  %318 = load %struct.cas*, %struct.cas** %8, align 8
  %319 = getelementptr inbounds %struct.cas, %struct.cas* %318, i32 0, i32 7
  store %struct.cas_init_block* %317, %struct.cas_init_block** %319, align 8
  %320 = load %struct.cas*, %struct.cas** %8, align 8
  %321 = getelementptr inbounds %struct.cas, %struct.cas* %320, i32 0, i32 7
  %322 = load %struct.cas_init_block*, %struct.cas_init_block** %321, align 8
  %323 = icmp ne %struct.cas_init_block* %322, null
  br i1 %323, label %328, label %324

324:                                              ; preds = %312
  %325 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %326 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %325, i32 0, i32 1
  %327 = call i32 @dev_err(i32* %326, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %530

328:                                              ; preds = %312
  store i32 0, i32* %9, align 4
  br label %329

329:                                              ; preds = %349, %328
  %330 = load i32, i32* %9, align 4
  %331 = load i32, i32* @N_TX_RINGS, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %352

333:                                              ; preds = %329
  %334 = load %struct.cas*, %struct.cas** %8, align 8
  %335 = getelementptr inbounds %struct.cas, %struct.cas* %334, i32 0, i32 7
  %336 = load %struct.cas_init_block*, %struct.cas_init_block** %335, align 8
  %337 = getelementptr inbounds %struct.cas_init_block, %struct.cas_init_block* %336, i32 0, i32 2
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.cas*, %struct.cas** %8, align 8
  %344 = getelementptr inbounds %struct.cas, %struct.cas* %343, i32 0, i32 12
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %9, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  store i32 %342, i32* %348, align 4
  br label %349

349:                                              ; preds = %333
  %350 = load i32, i32* %9, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %9, align 4
  br label %329

352:                                              ; preds = %329
  store i32 0, i32* %9, align 4
  br label %353

353:                                              ; preds = %373, %352
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* @N_RX_DESC_RINGS, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %376

357:                                              ; preds = %353
  %358 = load %struct.cas*, %struct.cas** %8, align 8
  %359 = getelementptr inbounds %struct.cas, %struct.cas* %358, i32 0, i32 7
  %360 = load %struct.cas_init_block*, %struct.cas_init_block** %359, align 8
  %361 = getelementptr inbounds %struct.cas_init_block, %struct.cas_init_block* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %9, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.cas*, %struct.cas** %8, align 8
  %368 = getelementptr inbounds %struct.cas, %struct.cas* %367, i32 0, i32 11
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  store i32 %366, i32* %372, align 4
  br label %373

373:                                              ; preds = %357
  %374 = load i32, i32* %9, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %9, align 4
  br label %353

376:                                              ; preds = %353
  store i32 0, i32* %9, align 4
  br label %377

377:                                              ; preds = %397, %376
  %378 = load i32, i32* %9, align 4
  %379 = load i32, i32* @N_RX_COMP_RINGS, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %400

381:                                              ; preds = %377
  %382 = load %struct.cas*, %struct.cas** %8, align 8
  %383 = getelementptr inbounds %struct.cas, %struct.cas* %382, i32 0, i32 7
  %384 = load %struct.cas_init_block*, %struct.cas_init_block** %383, align 8
  %385 = getelementptr inbounds %struct.cas_init_block, %struct.cas_init_block* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %9, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.cas*, %struct.cas** %8, align 8
  %392 = getelementptr inbounds %struct.cas, %struct.cas* %391, i32 0, i32 10
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %9, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  store i32 %390, i32* %396, align 4
  br label %397

397:                                              ; preds = %381
  %398 = load i32, i32* %9, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %9, align 4
  br label %377

400:                                              ; preds = %377
  store i32 0, i32* %9, align 4
  br label %401

401:                                              ; preds = %413, %400
  %402 = load i32, i32* %9, align 4
  %403 = load i32, i32* @N_RX_FLOWS, align 4
  %404 = icmp slt i32 %402, %403
  br i1 %404, label %405, label %416

405:                                              ; preds = %401
  %406 = load %struct.cas*, %struct.cas** %8, align 8
  %407 = getelementptr inbounds %struct.cas, %struct.cas* %406, i32 0, i32 9
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %9, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = call i32 @skb_queue_head_init(i32* %411)
  br label %413

413:                                              ; preds = %405
  %414 = load i32, i32* %9, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %9, align 4
  br label %401

416:                                              ; preds = %401
  %417 = load %struct.net_device*, %struct.net_device** %7, align 8
  %418 = getelementptr inbounds %struct.net_device, %struct.net_device* %417, i32 0, i32 8
  store i32* @cas_netdev_ops, i32** %418, align 8
  %419 = load %struct.net_device*, %struct.net_device** %7, align 8
  %420 = getelementptr inbounds %struct.net_device, %struct.net_device* %419, i32 0, i32 7
  store i32* @cas_ethtool_ops, i32** %420, align 8
  %421 = load i32, i32* @CAS_TX_TIMEOUT, align 4
  %422 = load %struct.net_device*, %struct.net_device** %7, align 8
  %423 = getelementptr inbounds %struct.net_device, %struct.net_device* %422, i32 0, i32 6
  store i32 %421, i32* %423, align 4
  %424 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %425 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.net_device*, %struct.net_device** %7, align 8
  %428 = getelementptr inbounds %struct.net_device, %struct.net_device* %427, i32 0, i32 5
  store i32 %426, i32* %428, align 8
  %429 = load %struct.net_device*, %struct.net_device** %7, align 8
  %430 = getelementptr inbounds %struct.net_device, %struct.net_device* %429, i32 0, i32 4
  store i64 0, i64* %430, align 8
  %431 = load %struct.cas*, %struct.cas** %8, align 8
  %432 = getelementptr inbounds %struct.cas, %struct.cas* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @CAS_FLAG_NO_HW_CSUM, align 4
  %435 = and i32 %433, %434
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %416
  %438 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %439 = load i32, i32* @NETIF_F_SG, align 4
  %440 = or i32 %438, %439
  %441 = load %struct.net_device*, %struct.net_device** %7, align 8
  %442 = getelementptr inbounds %struct.net_device, %struct.net_device* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = or i32 %443, %440
  store i32 %444, i32* %442, align 8
  br label %445

445:                                              ; preds = %437, %416
  %446 = load i32, i32* %11, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %454

448:                                              ; preds = %445
  %449 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %450 = load %struct.net_device*, %struct.net_device** %7, align 8
  %451 = getelementptr inbounds %struct.net_device, %struct.net_device* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = or i32 %452, %449
  store i32 %453, i32* %451, align 8
  br label %454

454:                                              ; preds = %448, %445
  %455 = load i32, i32* @CAS_MIN_MTU, align 4
  %456 = load %struct.net_device*, %struct.net_device** %7, align 8
  %457 = getelementptr inbounds %struct.net_device, %struct.net_device* %456, i32 0, i32 3
  store i32 %455, i32* %457, align 4
  %458 = load i32, i32* @CAS_MAX_MTU, align 4
  %459 = load %struct.net_device*, %struct.net_device** %7, align 8
  %460 = getelementptr inbounds %struct.net_device, %struct.net_device* %459, i32 0, i32 2
  store i32 %458, i32* %460, align 8
  %461 = load %struct.net_device*, %struct.net_device** %7, align 8
  %462 = call i64 @register_netdev(%struct.net_device* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %468

464:                                              ; preds = %454
  %465 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %466 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %465, i32 0, i32 1
  %467 = call i32 @dev_err(i32* %466, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %521

468:                                              ; preds = %454
  %469 = load %struct.cas*, %struct.cas** %8, align 8
  %470 = getelementptr inbounds %struct.cas, %struct.cas* %469, i32 0, i32 4
  %471 = load i64, i64* %470, align 8
  %472 = load i64, i64* @REG_BIM_CFG, align 8
  %473 = add nsw i64 %471, %472
  %474 = call i32 @readl(i64 %473)
  store i32 %474, i32* %9, align 4
  %475 = load %struct.net_device*, %struct.net_device** %7, align 8
  %476 = load %struct.cas*, %struct.cas** %8, align 8
  %477 = getelementptr inbounds %struct.cas, %struct.cas* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  %482 = zext i1 %481 to i64
  %483 = select i1 %481, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %484 = load i32, i32* %9, align 4
  %485 = load i32, i32* @BIM_CFG_32BIT, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  %488 = zext i1 %487 to i64
  %489 = select i1 %487, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)
  %490 = load i32, i32* %9, align 4
  %491 = load i32, i32* @BIM_CFG_66MHZ, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  %494 = zext i1 %493 to i64
  %495 = select i1 %493, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)
  %496 = load %struct.cas*, %struct.cas** %8, align 8
  %497 = getelementptr inbounds %struct.cas, %struct.cas* %496, i32 0, i32 2
  %498 = load i64, i64* %497, align 8
  %499 = load i64, i64* @CAS_PHY_SERDES, align 8
  %500 = icmp eq i64 %498, %499
  %501 = zext i1 %500 to i64
  %502 = select i1 %500, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)
  %503 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %504 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = load %struct.net_device*, %struct.net_device** %7, align 8
  %507 = getelementptr inbounds %struct.net_device, %struct.net_device* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @netdev_info(%struct.net_device* %475, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* %483, i8* %489, i8* %495, i8* %502, i32 %505, i32 %508)
  %510 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %511 = load %struct.net_device*, %struct.net_device** %7, align 8
  %512 = call i32 @pci_set_drvdata(%struct.pci_dev* %510, %struct.net_device* %511)
  %513 = load %struct.cas*, %struct.cas** %8, align 8
  %514 = getelementptr inbounds %struct.cas, %struct.cas* %513, i32 0, i32 3
  store i32 1, i32* %514, align 8
  %515 = load %struct.cas*, %struct.cas** %8, align 8
  %516 = call i32 @cas_entropy_reset(%struct.cas* %515)
  %517 = load %struct.cas*, %struct.cas** %8, align 8
  %518 = call i32 @cas_phy_init(%struct.cas* %517)
  %519 = load %struct.cas*, %struct.cas** %8, align 8
  %520 = call i32 @cas_begin_auto_negotiation(%struct.cas* %519, i32* null)
  store i32 0, i32* %3, align 4
  br label %566

521:                                              ; preds = %464
  %522 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %523 = load %struct.cas*, %struct.cas** %8, align 8
  %524 = getelementptr inbounds %struct.cas, %struct.cas* %523, i32 0, i32 7
  %525 = load %struct.cas_init_block*, %struct.cas_init_block** %524, align 8
  %526 = load %struct.cas*, %struct.cas** %8, align 8
  %527 = getelementptr inbounds %struct.cas, %struct.cas* %526, i32 0, i32 6
  %528 = load i32, i32* %527, align 4
  %529 = call i32 @pci_free_consistent(%struct.pci_dev* %522, i32 24, %struct.cas_init_block* %525, i32 %528)
  br label %530

530:                                              ; preds = %521, %324, %301
  %531 = load %struct.cas*, %struct.cas** %8, align 8
  %532 = getelementptr inbounds %struct.cas, %struct.cas* %531, i32 0, i32 5
  %533 = call i32 @mutex_lock(i32* %532)
  %534 = load %struct.cas*, %struct.cas** %8, align 8
  %535 = getelementptr inbounds %struct.cas, %struct.cas* %534, i32 0, i32 3
  %536 = load i32, i32* %535, align 8
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %541

538:                                              ; preds = %530
  %539 = load %struct.cas*, %struct.cas** %8, align 8
  %540 = call i32 @cas_shutdown(%struct.cas* %539)
  br label %541

541:                                              ; preds = %538, %530
  %542 = load %struct.cas*, %struct.cas** %8, align 8
  %543 = getelementptr inbounds %struct.cas, %struct.cas* %542, i32 0, i32 5
  %544 = call i32 @mutex_unlock(i32* %543)
  %545 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %546 = load %struct.cas*, %struct.cas** %8, align 8
  %547 = getelementptr inbounds %struct.cas, %struct.cas* %546, i32 0, i32 4
  %548 = load i64, i64* %547, align 8
  %549 = call i32 @pci_iounmap(%struct.pci_dev* %545, i64 %548)
  br label %550

550:                                              ; preds = %541, %282, %141, %130
  %551 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %552 = call i32 @pci_release_regions(%struct.pci_dev* %551)
  br label %553

553:                                              ; preds = %550, %114
  %554 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %555 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %556 = load i64, i64* %13, align 8
  %557 = call i64 @pci_write_config_byte(%struct.pci_dev* %554, i32 %555, i64 %556)
  br label %558

558:                                              ; preds = %553, %62
  %559 = load %struct.net_device*, %struct.net_device** %7, align 8
  %560 = call i32 @free_netdev(%struct.net_device* %559)
  br label %561

561:                                              ; preds = %558, %47, %37
  %562 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %563 = call i32 @pci_disable_device(%struct.pci_dev* %562)
  %564 = load i32, i32* @ENODEV, align 4
  %565 = sub nsw i32 0, %564
  store i32 %565, i32* %3, align 4
  br label %566

566:                                              ; preds = %561, %468, %26
  %567 = load i32, i32* %3, align 4
  ret i32 %567
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_try_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @cas_program_bridge(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @pci_iomap(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @cas_check_pci_invariants(%struct.cas*) #1

declare dso_local i32 @cas_hard_reset(%struct.cas*) #1

declare dso_local i32 @cas_reset(%struct.cas*, i32) #1

declare dso_local i64 @cas_check_invariants(%struct.cas*) #1

declare dso_local i32 @cas_saturn_firmware_init(%struct.cas*) #1

declare dso_local i64 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @cas_entropy_reset(%struct.cas*) #1

declare dso_local i32 @cas_phy_init(%struct.cas*) #1

declare dso_local i32 @cas_begin_auto_negotiation(%struct.cas*, i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, %struct.cas_init_block*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cas_shutdown(%struct.cas*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
