; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64, i32, i32, i32, i64, i64 }
%struct.net_device = type { i32 }
%struct.bnx2 = type { i32, i32, i64, i32, i64, i32, i32, i8*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, i32, i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot enable PCI device, aborting\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Cannot find PCI device base address, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Cannot find power management capability, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@bnx2_reset_task = common dso_local global i32 0, align 4
@TX_TSS_CID = common dso_local global i64 0, align 8
@TX_MAX_TSS_RINGS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Cannot map register space, aborting\0A\00", align 1
@BNX2_PCICFG_MISC_CONFIG = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA = common dso_local global i32 0, align 4
@BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP = common dso_local global i32 0, align 4
@BNX2_MISC_ID = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Not PCIE, aborting\0A\00", align 1
@BNX2_FLAG_PCIE = common dso_local global i32 0, align 4
@BNX2_CHIP_REV_Ax = common dso_local global i64 0, align 8
@BNX2_FLAG_JUMBO_BROKEN = common dso_local global i32 0, align 4
@BNX2_FLAG_AER_ENABLED = common dso_local global i32 0, align 4
@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Cannot find PCIX capability, aborting\0A\00", align 1
@BNX2_FLAG_BROKEN_STATS = common dso_local global i32 0, align 4
@BNX2_FLAG_MSIX_CAP = common dso_local global i32 0, align 4
@BNX2_CHIP_ID_5706_A0 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5706_A1 = common dso_local global i64 0, align 8
@BNX2_FLAG_MSI_CAP = common dso_local global i32 0, align 4
@BNX2_CHIP_5708 = common dso_local global i64 0, align 8
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"pci_set_consistent_dma_mask failed, aborting\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"System does not support DMA, aborting\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@BNX2_FLAG_PCIX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"5706 A1 can only be used in a PCIX bus, aborting\0A\00", align 1
@BNX2_SHM_HDR_SIGNATURE = common dso_local global i32 0, align 4
@BNX2_MCP_TOE_ID = common dso_local global i32 0, align 4
@BNX2_MCP_TOE_ID_FUNCTION_ID = common dso_local global i32 0, align 4
@BNX2_SHM_HDR_SIGNATURE_SIG_MASK = common dso_local global i32 0, align 4
@BNX2_SHM_HDR_SIGNATURE_SIG = common dso_local global i32 0, align 4
@BNX2_SHM_HDR_ADDR_0 = common dso_local global i32 0, align 4
@HOST_VIEW_SHMEM_BASE = common dso_local global i32 0, align 4
@BNX2_DEV_INFO_SIGNATURE = common dso_local global i32 0, align 4
@BNX2_DEV_INFO_SIGNATURE_MAGIC_MASK = common dso_local global i32 0, align 4
@BNX2_DEV_INFO_SIGNATURE_MAGIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Firmware not running, aborting\0A\00", align 1
@BNX2_DEV_INFO_BC_REV = common dso_local global i32 0, align 4
@BNX2_PORT_FEATURE = common dso_local global i32 0, align 4
@BNX2_PORT_FEATURE_WOL_ENABLED = common dso_local global i32 0, align 4
@BNX2_PORT_FEATURE_ASF_ENABLED = common dso_local global i32 0, align 4
@BNX2_FLAG_ASF_ENABLE = common dso_local global i32 0, align 4
@BNX2_BC_STATE_CONDITION = common dso_local global i32 0, align 4
@BNX2_CONDITION_MFW_RUN_MASK = common dso_local global i32 0, align 4
@BNX2_CONDITION_MFW_RUN_UNKNOWN = common dso_local global i32 0, align 4
@BNX2_CONDITION_MFW_RUN_NONE = common dso_local global i32 0, align 4
@BNX2_MFW_VER_PTR = common dso_local global i32 0, align 4
@BNX2_PORT_HW_CFG_MAC_UPPER = common dso_local global i32 0, align 4
@BNX2_PORT_HW_CFG_MAC_LOWER = common dso_local global i32 0, align 4
@BNX2_MAX_TX_DESC_CNT = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@BNX2_HC_STATS_TICKS_HC_STAT_TICKS = common dso_local global i32 0, align 4
@BNX2_TIMER_INTERVAL = common dso_local global i32 0, align 4
@BNX2_CHIP_BOND_SERDES_BIT = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@BNX2_SHARED_HW_CFG_CONFIG = common dso_local global i32 0, align 4
@BNX2_SHARED_HW_CFG_GIG_LINK_ON_VAUX = common dso_local global i32 0, align 4
@BNX2_FLAG_NO_WOL = common dso_local global i32 0, align 4
@BNX2_CHIP_5706 = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_HP = common dso_local global i64 0, align 8
@BNX2_PHY_FLAG_NO_PARALLEL = common dso_local global i32 0, align 4
@BNX2_SHARED_HW_CFG_PHY_2_5G = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_2_5G_CAPABLE = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_CRC_FIX = common dso_local global i32 0, align 4
@BNX2_CHIP_REV_Bx = common dso_local global i64 0, align 8
@BNX2_PHY_FLAG_DIS_EARLY_DAC = common dso_local global i32 0, align 4
@BNX2_CHIP_ID_5708_A0 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5708_B0 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5708_B1 = common dso_local global i64 0, align 8
@BNX2_PCI_CONFIG_3 = common dso_local global i32 0, align 4
@BNX2_PCI_CONFIG_3_VAUX_PRESET = common dso_local global i32 0, align 4
@disable_msi = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_8132_BRIDGE = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@bnx2_timer = common dso_local global i32 0, align 4
@BNX2_ISCSI_INITIATOR = common dso_local global i32 0, align 4
@BNX2_ISCSI_INITIATOR_EN = common dso_local global i32 0, align 4
@BNX2_ISCSI_MAX_CONN = common dso_local global i32 0, align 4
@BNX2_ISCSI_MAX_CONN_MASK = common dso_local global i32 0, align 4
@BNX2_ISCSI_MAX_CONN_SHIFT = common dso_local global i32 0, align 4
@bnx2_cnic_probe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.net_device*)* @bnx2_init_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_init_board(%struct.pci_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 4
  %23 = call i32 @SET_NETDEV_DEV(%struct.net_device* %20, i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.bnx2* @netdev_priv(%struct.net_device* %24)
  store %struct.bnx2* %25, %struct.bnx2** %6, align 8
  %26 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kzalloc(i32 4, i32 %30)
  %32 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 21
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %35 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %34, i32 0, i32 21
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %959

41:                                               ; preds = %2
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @pci_enable_device(%struct.pci_dev* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 4
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %959

50:                                               ; preds = %41
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i32 @pci_resource_flags(%struct.pci_dev* %51, i32 0)
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 4
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %956

62:                                               ; preds = %50
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load i32, i32* @DRV_MODULE_NAME, align 4
  %65 = call i32 @pci_request_regions(%struct.pci_dev* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 4
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %956

72:                                               ; preds = %62
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = call i32 @pci_set_master(%struct.pci_dev* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %81 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 4
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %953

90:                                               ; preds = %72
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %93 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %92, i32 0, i32 40
  store %struct.net_device* %91, %struct.net_device** %93, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %96 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %95, i32 0, i32 32
  store %struct.pci_dev* %94, %struct.pci_dev** %96, align 8
  %97 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %98 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %97, i32 0, i32 39
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %101 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %100, i32 0, i32 38
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %104 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %103, i32 0, i32 36
  %105 = load i32, i32* @bnx2_reset_task, align 4
  %106 = call i32 @INIT_WORK(i32* %104, i32 %105)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = load i64, i64* @TX_TSS_CID, align 8
  %109 = load i64, i64* @TX_MAX_TSS_RINGS, align 8
  %110 = add nsw i64 %108, %109
  %111 = add nsw i64 %110, 1
  %112 = call i32 @MB_GET_CID_ADDR(i64 %111)
  %113 = call i32* @pci_iomap(%struct.pci_dev* %107, i32 0, i32 %112)
  %114 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %115 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %114, i32 0, i32 22
  store i32* %113, i32** %115, align 8
  %116 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %117 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %116, i32 0, i32 22
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %90
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 4
  %123 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %953

126:                                              ; preds = %90
  %127 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %128 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG, align 4
  %129 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_REG_WINDOW_ENA, align 4
  %130 = load i32, i32* @BNX2_PCICFG_MISC_CONFIG_TARGET_MB_WORD_SWAP, align 4
  %131 = or i32 %129, %130
  %132 = call i32 @BNX2_WR(%struct.bnx2* %127, i32 %128, i32 %131)
  %133 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %134 = load i32, i32* @BNX2_MISC_ID, align 4
  %135 = call i32 @BNX2_RD(%struct.bnx2* %133, i32 %134)
  %136 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %137 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %139 = call i64 @BNX2_CHIP(%struct.bnx2* %138)
  %140 = load i64, i64* @BNX2_CHIP_5709, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %180

142:                                              ; preds = %126
  %143 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %144 = call i32 @pci_is_pcie(%struct.pci_dev* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 4
  %149 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %7, align 4
  br label %929

152:                                              ; preds = %142
  %153 = load i32, i32* @BNX2_FLAG_PCIE, align 4
  %154 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %155 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %159 = call i64 @BNX2_CHIP_REV(%struct.bnx2* %158)
  %160 = load i64, i64* @BNX2_CHIP_REV_Ax, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %152
  %163 = load i32, i32* @BNX2_FLAG_JUMBO_BROKEN, align 4
  %164 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %165 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %162, %152
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %169)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* @BNX2_FLAG_AER_ENABLED, align 4
  %175 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %176 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %168
  br label %202

180:                                              ; preds = %126
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %183 = call i64 @pci_find_capability(%struct.pci_dev* %181, i32 %182)
  %184 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %185 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  %186 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %187 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %180
  %191 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %192 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %191, i32 0, i32 4
  %193 = call i32 @dev_err(i32* %192, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %194 = load i32, i32* @EIO, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %7, align 4
  br label %929

196:                                              ; preds = %180
  %197 = load i32, i32* @BNX2_FLAG_BROKEN_STATS, align 4
  %198 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %199 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %179
  %203 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %204 = call i64 @BNX2_CHIP(%struct.bnx2* %203)
  %205 = load i64, i64* @BNX2_CHIP_5709, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %224

207:                                              ; preds = %202
  %208 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %209 = call i64 @BNX2_CHIP_REV(%struct.bnx2* %208)
  %210 = load i64, i64* @BNX2_CHIP_REV_Ax, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %207
  %213 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %214 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load i32, i32* @BNX2_FLAG_MSIX_CAP, align 4
  %219 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %220 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %217, %212
  br label %224

224:                                              ; preds = %223, %207, %202
  %225 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %226 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %225)
  %227 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %246

229:                                              ; preds = %224
  %230 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %231 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %230)
  %232 = load i64, i64* @BNX2_CHIP_ID_5706_A1, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %229
  %235 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %236 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load i32, i32* @BNX2_FLAG_MSI_CAP, align 4
  %241 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %242 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %239, %234
  br label %246

246:                                              ; preds = %245, %229, %224
  %247 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %248 = call i64 @BNX2_CHIP(%struct.bnx2* %247)
  %249 = load i64, i64* @BNX2_CHIP_5708, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = call i32 @DMA_BIT_MASK(i32 40)
  store i32 %252, i32* %11, align 4
  store i32 %252, i32* %12, align 4
  br label %255

253:                                              ; preds = %246
  %254 = call i32 @DMA_BIT_MASK(i32 64)
  store i32 %254, i32* %11, align 4
  store i32 %254, i32* %12, align 4
  br label %255

255:                                              ; preds = %253, %251
  %256 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %257 = load i32, i32* %11, align 4
  %258 = call i64 @pci_set_dma_mask(%struct.pci_dev* %256, i32 %257)
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %255
  %261 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %262 = load %struct.net_device*, %struct.net_device** %5, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %267 = load i32, i32* %12, align 4
  %268 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %266, i32 %267)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %260
  %272 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %273 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %272, i32 0, i32 4
  %274 = call i32 @dev_err(i32* %273, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %929

275:                                              ; preds = %260
  br label %287

276:                                              ; preds = %255
  %277 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %278 = call i32 @DMA_BIT_MASK(i32 32)
  %279 = call i64 @pci_set_dma_mask(%struct.pci_dev* %277, i32 %278)
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %276
  %283 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %284 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %283, i32 0, i32 4
  %285 = call i32 @dev_err(i32* %284, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %929

286:                                              ; preds = %276
  br label %287

287:                                              ; preds = %286, %275
  %288 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %289 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @BNX2_FLAG_PCIE, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %287
  %295 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %296 = call i32 @bnx2_get_pci_speed(%struct.bnx2* %295)
  br label %297

297:                                              ; preds = %294, %287
  %298 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %299 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %298)
  %300 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %297
  %303 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %304 = load i32, i32* @PCI_COMMAND, align 4
  %305 = call i32 @BNX2_RD(%struct.bnx2* %303, i32 %304)
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %307 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %308 = or i32 %306, %307
  %309 = xor i32 %308, -1
  %310 = load i32, i32* %10, align 4
  %311 = and i32 %310, %309
  store i32 %311, i32* %10, align 4
  %312 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %313 = load i32, i32* @PCI_COMMAND, align 4
  %314 = load i32, i32* %10, align 4
  %315 = call i32 @BNX2_WR(%struct.bnx2* %312, i32 %313, i32 %314)
  br label %333

316:                                              ; preds = %297
  %317 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %318 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %317)
  %319 = load i64, i64* @BNX2_CHIP_ID_5706_A1, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %332

321:                                              ; preds = %316
  %322 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %323 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @BNX2_FLAG_PCIX, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %321
  %329 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %330 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %329, i32 0, i32 4
  %331 = call i32 @dev_err(i32* %330, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  br label %929

332:                                              ; preds = %321, %316
  br label %333

333:                                              ; preds = %332, %302
  %334 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %335 = call i32 @bnx2_init_nvram(%struct.bnx2* %334)
  %336 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %337 = load i32, i32* @BNX2_SHM_HDR_SIGNATURE, align 4
  %338 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %336, i32 %337)
  store i32 %338, i32* %10, align 4
  %339 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %340 = load i32, i32* @BNX2_MCP_TOE_ID, align 4
  %341 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %339, i32 %340)
  %342 = load i32, i32* @BNX2_MCP_TOE_ID_FUNCTION_ID, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %333
  %346 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %347 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %346, i32 0, i32 5
  store i32 1, i32* %347, align 8
  br label %348

348:                                              ; preds = %345, %333
  %349 = load i32, i32* %10, align 4
  %350 = load i32, i32* @BNX2_SHM_HDR_SIGNATURE_SIG_MASK, align 4
  %351 = and i32 %349, %350
  %352 = load i32, i32* @BNX2_SHM_HDR_SIGNATURE_SIG, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %366

354:                                              ; preds = %348
  %355 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %356 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = shl i32 %357, 2
  store i32 %358, i32* %14, align 4
  %359 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %360 = load i32, i32* @BNX2_SHM_HDR_ADDR_0, align 4
  %361 = load i32, i32* %14, align 4
  %362 = add nsw i32 %360, %361
  %363 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %359, i32 %362)
  %364 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %365 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %364, i32 0, i32 6
  store i32 %363, i32* %365, align 4
  br label %370

366:                                              ; preds = %348
  %367 = load i32, i32* @HOST_VIEW_SHMEM_BASE, align 4
  %368 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %369 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %368, i32 0, i32 6
  store i32 %367, i32* %369, align 4
  br label %370

370:                                              ; preds = %366, %354
  %371 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %372 = load i32, i32* @BNX2_DEV_INFO_SIGNATURE, align 4
  %373 = call i32 @bnx2_shmem_rd(%struct.bnx2* %371, i32 %372)
  store i32 %373, i32* %10, align 4
  %374 = load i32, i32* %10, align 4
  %375 = load i32, i32* @BNX2_DEV_INFO_SIGNATURE_MAGIC_MASK, align 4
  %376 = and i32 %374, %375
  %377 = load i32, i32* @BNX2_DEV_INFO_SIGNATURE_MAGIC, align 4
  %378 = icmp ne i32 %376, %377
  br i1 %378, label %379, label %385

379:                                              ; preds = %370
  %380 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %381 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %380, i32 0, i32 4
  %382 = call i32 @dev_err(i32* %381, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %383 = load i32, i32* @ENODEV, align 4
  %384 = sub nsw i32 0, %383
  store i32 %384, i32* %7, align 4
  br label %929

385:                                              ; preds = %370
  %386 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %387 = call i32 @bnx2_read_vpd_fw_ver(%struct.bnx2* %386)
  %388 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %389 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %388, i32 0, i32 7
  %390 = load i8*, i8** %389, align 8
  %391 = call i32 @strlen(i8* %390)
  store i32 %391, i32* %9, align 4
  %392 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %393 = load i32, i32* @BNX2_DEV_INFO_BC_REV, align 4
  %394 = call i32 @bnx2_shmem_rd(%struct.bnx2* %392, i32 %393)
  store i32 %394, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %395

395:                                              ; preds = %479, %385
  %396 = load i32, i32* %8, align 4
  %397 = icmp slt i32 %396, 3
  br i1 %397, label %398, label %401

398:                                              ; preds = %395
  %399 = load i32, i32* %9, align 4
  %400 = icmp slt i32 %399, 24
  br label %401

401:                                              ; preds = %398, %395
  %402 = phi i1 [ false, %395 ], [ %400, %398 ]
  br i1 %402, label %403, label %482

403:                                              ; preds = %401
  %404 = load i32, i32* %8, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %428

406:                                              ; preds = %403
  %407 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %408 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %407, i32 0, i32 7
  %409 = load i8*, i8** %408, align 8
  %410 = load i32, i32* %9, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %9, align 4
  %412 = sext i32 %410 to i64
  %413 = getelementptr inbounds i8, i8* %409, i64 %412
  store i8 98, i8* %413, align 1
  %414 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %415 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %414, i32 0, i32 7
  %416 = load i8*, i8** %415, align 8
  %417 = load i32, i32* %9, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %9, align 4
  %419 = sext i32 %417 to i64
  %420 = getelementptr inbounds i8, i8* %416, i64 %419
  store i8 99, i8* %420, align 1
  %421 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %422 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %421, i32 0, i32 7
  %423 = load i8*, i8** %422, align 8
  %424 = load i32, i32* %9, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %9, align 4
  %426 = sext i32 %424 to i64
  %427 = getelementptr inbounds i8, i8* %423, i64 %426
  store i8 32, i8* %427, align 1
  br label %428

428:                                              ; preds = %406, %403
  %429 = load i32, i32* %10, align 4
  %430 = load i32, i32* %8, align 4
  %431 = mul nsw i32 %430, 8
  %432 = sub nsw i32 24, %431
  %433 = ashr i32 %429, %432
  store i32 %433, i32* %15, align 4
  store i32 100, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %434

434:                                              ; preds = %461, %428
  %435 = load i32, i32* %16, align 4
  %436 = icmp sge i32 %435, 1
  br i1 %436, label %437, label %467

437:                                              ; preds = %434
  %438 = load i32, i32* %15, align 4
  %439 = load i32, i32* %16, align 4
  %440 = icmp sge i32 %438, %439
  br i1 %440, label %447, label %441

441:                                              ; preds = %437
  %442 = load i32, i32* %17, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = load i32, i32* %16, align 4
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %460

447:                                              ; preds = %444, %441, %437
  %448 = load i32, i32* %15, align 4
  %449 = load i32, i32* %16, align 4
  %450 = sdiv i32 %448, %449
  %451 = add nsw i32 %450, 48
  %452 = trunc i32 %451 to i8
  %453 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %454 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %453, i32 0, i32 7
  %455 = load i8*, i8** %454, align 8
  %456 = load i32, i32* %9, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %9, align 4
  %458 = sext i32 %456 to i64
  %459 = getelementptr inbounds i8, i8* %455, i64 %458
  store i8 %452, i8* %459, align 1
  store i32 0, i32* %17, align 4
  br label %460

460:                                              ; preds = %447, %444
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %16, align 4
  %463 = load i32, i32* %15, align 4
  %464 = srem i32 %463, %462
  store i32 %464, i32* %15, align 4
  %465 = load i32, i32* %16, align 4
  %466 = sdiv i32 %465, 10
  store i32 %466, i32* %16, align 4
  br label %434

467:                                              ; preds = %434
  %468 = load i32, i32* %8, align 4
  %469 = icmp ne i32 %468, 2
  br i1 %469, label %470, label %478

470:                                              ; preds = %467
  %471 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %472 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %471, i32 0, i32 7
  %473 = load i8*, i8** %472, align 8
  %474 = load i32, i32* %9, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %9, align 4
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i8, i8* %473, i64 %476
  store i8 46, i8* %477, align 1
  br label %478

478:                                              ; preds = %470, %467
  br label %479

479:                                              ; preds = %478
  %480 = load i32, i32* %8, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %8, align 4
  br label %395

482:                                              ; preds = %401
  %483 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %484 = load i32, i32* @BNX2_PORT_FEATURE, align 4
  %485 = call i32 @bnx2_shmem_rd(%struct.bnx2* %483, i32 %484)
  store i32 %485, i32* %10, align 4
  %486 = load i32, i32* %10, align 4
  %487 = load i32, i32* @BNX2_PORT_FEATURE_WOL_ENABLED, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %482
  %491 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %492 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %491, i32 0, i32 8
  store i32 1, i32* %492, align 8
  br label %493

493:                                              ; preds = %490, %482
  %494 = load i32, i32* %10, align 4
  %495 = load i32, i32* @BNX2_PORT_FEATURE_ASF_ENABLED, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %522

498:                                              ; preds = %493
  %499 = load i32, i32* @BNX2_FLAG_ASF_ENABLE, align 4
  %500 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %501 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = or i32 %502, %499
  store i32 %503, i32* %501, align 8
  store i32 0, i32* %8, align 4
  br label %504

504:                                              ; preds = %518, %498
  %505 = load i32, i32* %8, align 4
  %506 = icmp slt i32 %505, 30
  br i1 %506, label %507, label %521

507:                                              ; preds = %504
  %508 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %509 = load i32, i32* @BNX2_BC_STATE_CONDITION, align 4
  %510 = call i32 @bnx2_shmem_rd(%struct.bnx2* %508, i32 %509)
  store i32 %510, i32* %10, align 4
  %511 = load i32, i32* %10, align 4
  %512 = load i32, i32* @BNX2_CONDITION_MFW_RUN_MASK, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %507
  br label %521

516:                                              ; preds = %507
  %517 = call i32 @msleep(i32 10)
  br label %518

518:                                              ; preds = %516
  %519 = load i32, i32* %8, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %8, align 4
  br label %504

521:                                              ; preds = %515, %504
  br label %522

522:                                              ; preds = %521, %493
  %523 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %524 = load i32, i32* @BNX2_BC_STATE_CONDITION, align 4
  %525 = call i32 @bnx2_shmem_rd(%struct.bnx2* %523, i32 %524)
  store i32 %525, i32* %10, align 4
  %526 = load i32, i32* @BNX2_CONDITION_MFW_RUN_MASK, align 4
  %527 = load i32, i32* %10, align 4
  %528 = and i32 %527, %526
  store i32 %528, i32* %10, align 4
  %529 = load i32, i32* %10, align 4
  %530 = load i32, i32* @BNX2_CONDITION_MFW_RUN_UNKNOWN, align 4
  %531 = icmp ne i32 %529, %530
  br i1 %531, label %532, label %581

532:                                              ; preds = %522
  %533 = load i32, i32* %10, align 4
  %534 = load i32, i32* @BNX2_CONDITION_MFW_RUN_NONE, align 4
  %535 = icmp ne i32 %533, %534
  br i1 %535, label %536, label %581

536:                                              ; preds = %532
  %537 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %538 = load i32, i32* @BNX2_MFW_VER_PTR, align 4
  %539 = call i32 @bnx2_shmem_rd(%struct.bnx2* %537, i32 %538)
  store i32 %539, i32* %18, align 4
  %540 = load i32, i32* %9, align 4
  %541 = icmp slt i32 %540, 32
  br i1 %541, label %542, label %550

542:                                              ; preds = %536
  %543 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %544 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %543, i32 0, i32 7
  %545 = load i8*, i8** %544, align 8
  %546 = load i32, i32* %9, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %9, align 4
  %548 = sext i32 %546 to i64
  %549 = getelementptr inbounds i8, i8* %545, i64 %548
  store i8 32, i8* %549, align 1
  br label %550

550:                                              ; preds = %542, %536
  store i32 0, i32* %8, align 4
  br label %551

551:                                              ; preds = %577, %550
  %552 = load i32, i32* %8, align 4
  %553 = icmp slt i32 %552, 3
  br i1 %553, label %554, label %557

554:                                              ; preds = %551
  %555 = load i32, i32* %9, align 4
  %556 = icmp slt i32 %555, 28
  br label %557

557:                                              ; preds = %554, %551
  %558 = phi i1 [ false, %551 ], [ %556, %554 ]
  br i1 %558, label %559, label %580

559:                                              ; preds = %557
  %560 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %561 = load i32, i32* %18, align 4
  %562 = load i32, i32* %8, align 4
  %563 = mul nsw i32 %562, 4
  %564 = add nsw i32 %561, %563
  %565 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %560, i32 %564)
  store i32 %565, i32* %10, align 4
  %566 = load i32, i32* %10, align 4
  %567 = call i32 @be32_to_cpu(i32 %566)
  store i32 %567, i32* %10, align 4
  %568 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %569 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %568, i32 0, i32 7
  %570 = load i8*, i8** %569, align 8
  %571 = load i32, i32* %9, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i8, i8* %570, i64 %572
  %574 = call i32 @memcpy(i8* %573, i32* %10, i32 4)
  %575 = load i32, i32* %9, align 4
  %576 = add nsw i32 %575, 4
  store i32 %576, i32* %9, align 4
  br label %577

577:                                              ; preds = %559
  %578 = load i32, i32* %8, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %8, align 4
  br label %551

580:                                              ; preds = %557
  br label %581

581:                                              ; preds = %580, %532, %522
  %582 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %583 = load i32, i32* @BNX2_PORT_HW_CFG_MAC_UPPER, align 4
  %584 = call i32 @bnx2_shmem_rd(%struct.bnx2* %582, i32 %583)
  store i32 %584, i32* %10, align 4
  %585 = load i32, i32* %10, align 4
  %586 = ashr i32 %585, 8
  %587 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %588 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %587, i32 0, i32 9
  %589 = load i32*, i32** %588, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 0
  store i32 %586, i32* %590, align 4
  %591 = load i32, i32* %10, align 4
  %592 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %593 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %592, i32 0, i32 9
  %594 = load i32*, i32** %593, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 1
  store i32 %591, i32* %595, align 4
  %596 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %597 = load i32, i32* @BNX2_PORT_HW_CFG_MAC_LOWER, align 4
  %598 = call i32 @bnx2_shmem_rd(%struct.bnx2* %596, i32 %597)
  store i32 %598, i32* %10, align 4
  %599 = load i32, i32* %10, align 4
  %600 = ashr i32 %599, 24
  %601 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %602 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %601, i32 0, i32 9
  %603 = load i32*, i32** %602, align 8
  %604 = getelementptr inbounds i32, i32* %603, i64 2
  store i32 %600, i32* %604, align 4
  %605 = load i32, i32* %10, align 4
  %606 = ashr i32 %605, 16
  %607 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %608 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %607, i32 0, i32 9
  %609 = load i32*, i32** %608, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 3
  store i32 %606, i32* %610, align 4
  %611 = load i32, i32* %10, align 4
  %612 = ashr i32 %611, 8
  %613 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %614 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %613, i32 0, i32 9
  %615 = load i32*, i32** %614, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 4
  store i32 %612, i32* %616, align 4
  %617 = load i32, i32* %10, align 4
  %618 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %619 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %618, i32 0, i32 9
  %620 = load i32*, i32** %619, align 8
  %621 = getelementptr inbounds i32, i32* %620, i64 5
  store i32 %617, i32* %621, align 4
  %622 = load i32, i32* @BNX2_MAX_TX_DESC_CNT, align 4
  %623 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %624 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %623, i32 0, i32 35
  store i32 %622, i32* %624, align 8
  %625 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %626 = call i32 @bnx2_set_rx_ring_size(%struct.bnx2* %625, i32 255)
  %627 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %628 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %627, i32 0, i32 10
  store i32 2, i32* %628, align 8
  %629 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %630 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %629, i32 0, i32 11
  store i32 20, i32* %630, align 4
  %631 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %632 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %631, i32 0, i32 12
  store i32 18, i32* %632, align 8
  %633 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %634 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %633, i32 0, i32 13
  store i32 80, i32* %634, align 4
  %635 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %636 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %635, i32 0, i32 14
  store i32 2, i32* %636, align 8
  %637 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %638 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %637, i32 0, i32 15
  store i32 12, i32* %638, align 4
  %639 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %640 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %639, i32 0, i32 16
  store i32 18, i32* %640, align 8
  %641 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %642 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %641, i32 0, i32 17
  store i32 18, i32* %642, align 4
  %643 = load i32, i32* @USEC_PER_SEC, align 4
  %644 = load i32, i32* @BNX2_HC_STATS_TICKS_HC_STAT_TICKS, align 4
  %645 = and i32 %643, %644
  %646 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %647 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %646, i32 0, i32 18
  store i32 %645, i32* %647, align 8
  %648 = load i32, i32* @BNX2_TIMER_INTERVAL, align 4
  %649 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %650 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %649, i32 0, i32 34
  store i32 %648, i32* %650, align 4
  %651 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %652 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %651, i32 0, i32 19
  store i32 1, i32* %652, align 4
  %653 = load %struct.net_device*, %struct.net_device** %5, align 8
  %654 = call i32 @bnx2_alloc_stats_blk(%struct.net_device* %653)
  store i32 %654, i32* %7, align 4
  %655 = load i32, i32* %7, align 4
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %658

657:                                              ; preds = %581
  br label %929

658:                                              ; preds = %581
  %659 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %660 = call i64 @BNX2_CHIP(%struct.bnx2* %659)
  %661 = load i64, i64* @BNX2_CHIP_5709, align 8
  %662 = icmp eq i64 %660, %661
  br i1 %662, label %663, label %666

663:                                              ; preds = %658
  %664 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %665 = call i32 @bnx2_get_5709_media(%struct.bnx2* %664)
  br label %679

666:                                              ; preds = %658
  %667 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %668 = call i32 @BNX2_CHIP_BOND(%struct.bnx2* %667)
  %669 = load i32, i32* @BNX2_CHIP_BOND_SERDES_BIT, align 4
  %670 = and i32 %668, %669
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %678

672:                                              ; preds = %666
  %673 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %674 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %675 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %674, i32 0, i32 1
  %676 = load i32, i32* %675, align 4
  %677 = or i32 %676, %673
  store i32 %677, i32* %675, align 4
  br label %678

678:                                              ; preds = %672, %666
  br label %679

679:                                              ; preds = %678, %663
  %680 = load i32, i32* @PORT_TP, align 4
  %681 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %682 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %681, i32 0, i32 33
  store i32 %680, i32* %682, align 8
  %683 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %684 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %683, i32 0, i32 1
  %685 = load i32, i32* %684, align 4
  %686 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %687 = and i32 %685, %686
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %746

689:                                              ; preds = %679
  %690 = load i32, i32* @PORT_FIBRE, align 4
  %691 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %692 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %691, i32 0, i32 33
  store i32 %690, i32* %692, align 8
  %693 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %694 = load i32, i32* @BNX2_SHARED_HW_CFG_CONFIG, align 4
  %695 = call i32 @bnx2_shmem_rd(%struct.bnx2* %693, i32 %694)
  store i32 %695, i32* %10, align 4
  %696 = load i32, i32* %10, align 4
  %697 = load i32, i32* @BNX2_SHARED_HW_CFG_GIG_LINK_ON_VAUX, align 4
  %698 = and i32 %696, %697
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %708, label %700

700:                                              ; preds = %689
  %701 = load i32, i32* @BNX2_FLAG_NO_WOL, align 4
  %702 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %703 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = or i32 %704, %701
  store i32 %705, i32* %703, align 8
  %706 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %707 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %706, i32 0, i32 8
  store i32 0, i32* %707, align 8
  br label %708

708:                                              ; preds = %700, %689
  %709 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %710 = call i64 @BNX2_CHIP(%struct.bnx2* %709)
  %711 = load i64, i64* @BNX2_CHIP_5706, align 8
  %712 = icmp eq i64 %710, %711
  br i1 %712, label %713, label %731

713:                                              ; preds = %708
  %714 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %715 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %714, i32 0, i32 1
  %716 = load i64, i64* %715, align 8
  %717 = load i64, i64* @PCI_VENDOR_ID_HP, align 8
  %718 = icmp eq i64 %716, %717
  br i1 %718, label %719, label %730

719:                                              ; preds = %713
  %720 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %721 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %720, i32 0, i32 2
  %722 = load i32, i32* %721, align 8
  %723 = icmp eq i32 %722, 12556
  br i1 %723, label %724, label %730

724:                                              ; preds = %719
  %725 = load i32, i32* @BNX2_PHY_FLAG_NO_PARALLEL, align 4
  %726 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %727 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 4
  %729 = or i32 %728, %725
  store i32 %729, i32* %727, align 4
  br label %730

730:                                              ; preds = %724, %719, %713
  br label %745

731:                                              ; preds = %708
  %732 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %733 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %732, i32 0, i32 19
  store i32 2, i32* %733, align 4
  %734 = load i32, i32* %10, align 4
  %735 = load i32, i32* @BNX2_SHARED_HW_CFG_PHY_2_5G, align 4
  %736 = and i32 %734, %735
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %738, label %744

738:                                              ; preds = %731
  %739 = load i32, i32* @BNX2_PHY_FLAG_2_5G_CAPABLE, align 4
  %740 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %741 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %740, i32 0, i32 1
  %742 = load i32, i32* %741, align 4
  %743 = or i32 %742, %739
  store i32 %743, i32* %741, align 4
  br label %744

744:                                              ; preds = %738, %731
  br label %745

745:                                              ; preds = %744, %730
  br label %785

746:                                              ; preds = %679
  %747 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %748 = call i64 @BNX2_CHIP(%struct.bnx2* %747)
  %749 = load i64, i64* @BNX2_CHIP_5706, align 8
  %750 = icmp eq i64 %748, %749
  br i1 %750, label %756, label %751

751:                                              ; preds = %746
  %752 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %753 = call i64 @BNX2_CHIP(%struct.bnx2* %752)
  %754 = load i64, i64* @BNX2_CHIP_5708, align 8
  %755 = icmp eq i64 %753, %754
  br i1 %755, label %756, label %762

756:                                              ; preds = %751, %746
  %757 = load i32, i32* @BNX2_PHY_FLAG_CRC_FIX, align 4
  %758 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %759 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 4
  %761 = or i32 %760, %757
  store i32 %761, i32* %759, align 4
  br label %784

762:                                              ; preds = %751
  %763 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %764 = call i64 @BNX2_CHIP(%struct.bnx2* %763)
  %765 = load i64, i64* @BNX2_CHIP_5709, align 8
  %766 = icmp eq i64 %764, %765
  br i1 %766, label %767, label %783

767:                                              ; preds = %762
  %768 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %769 = call i64 @BNX2_CHIP_REV(%struct.bnx2* %768)
  %770 = load i64, i64* @BNX2_CHIP_REV_Ax, align 8
  %771 = icmp eq i64 %769, %770
  br i1 %771, label %777, label %772

772:                                              ; preds = %767
  %773 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %774 = call i64 @BNX2_CHIP_REV(%struct.bnx2* %773)
  %775 = load i64, i64* @BNX2_CHIP_REV_Bx, align 8
  %776 = icmp eq i64 %774, %775
  br i1 %776, label %777, label %783

777:                                              ; preds = %772, %767
  %778 = load i32, i32* @BNX2_PHY_FLAG_DIS_EARLY_DAC, align 4
  %779 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %780 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %779, i32 0, i32 1
  %781 = load i32, i32* %780, align 4
  %782 = or i32 %781, %778
  store i32 %782, i32* %780, align 4
  br label %783

783:                                              ; preds = %777, %772, %762
  br label %784

784:                                              ; preds = %783, %756
  br label %785

785:                                              ; preds = %784, %745
  %786 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %787 = call i32 @bnx2_init_fw_cap(%struct.bnx2* %786)
  %788 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %789 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %788)
  %790 = load i64, i64* @BNX2_CHIP_ID_5708_A0, align 8
  %791 = icmp eq i64 %789, %790
  br i1 %791, label %809, label %792

792:                                              ; preds = %785
  %793 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %794 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %793)
  %795 = load i64, i64* @BNX2_CHIP_ID_5708_B0, align 8
  %796 = icmp eq i64 %794, %795
  br i1 %796, label %809, label %797

797:                                              ; preds = %792
  %798 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %799 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %798)
  %800 = load i64, i64* @BNX2_CHIP_ID_5708_B1, align 8
  %801 = icmp eq i64 %799, %800
  br i1 %801, label %809, label %802

802:                                              ; preds = %797
  %803 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %804 = load i32, i32* @BNX2_PCI_CONFIG_3, align 4
  %805 = call i32 @BNX2_RD(%struct.bnx2* %803, i32 %804)
  %806 = load i32, i32* @BNX2_PCI_CONFIG_3_VAUX_PRESET, align 4
  %807 = and i32 %805, %806
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %817, label %809

809:                                              ; preds = %802, %797, %792, %785
  %810 = load i32, i32* @BNX2_FLAG_NO_WOL, align 4
  %811 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %812 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 8
  %814 = or i32 %813, %810
  store i32 %814, i32* %812, align 8
  %815 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %816 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %815, i32 0, i32 8
  store i32 0, i32* %816, align 8
  br label %817

817:                                              ; preds = %809, %802
  %818 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %819 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %818, i32 0, i32 0
  %820 = load i32, i32* %819, align 8
  %821 = load i32, i32* @BNX2_FLAG_NO_WOL, align 4
  %822 = and i32 %820, %821
  %823 = icmp ne i32 %822, 0
  br i1 %823, label %824, label %830

824:                                              ; preds = %817
  %825 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %826 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %825, i32 0, i32 32
  %827 = load %struct.pci_dev*, %struct.pci_dev** %826, align 8
  %828 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %827, i32 0, i32 4
  %829 = call i32 @device_set_wakeup_capable(i32* %828, i32 0)
  br label %839

830:                                              ; preds = %817
  %831 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %832 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %831, i32 0, i32 32
  %833 = load %struct.pci_dev*, %struct.pci_dev** %832, align 8
  %834 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %833, i32 0, i32 4
  %835 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %836 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %835, i32 0, i32 8
  %837 = load i32, i32* %836, align 8
  %838 = call i32 @device_set_wakeup_enable(i32* %834, i32 %837)
  br label %839

839:                                              ; preds = %830, %824
  %840 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %841 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %840)
  %842 = load i64, i64* @BNX2_CHIP_ID_5706_A0, align 8
  %843 = icmp eq i64 %841, %842
  br i1 %843, label %844, label %880

844:                                              ; preds = %839
  %845 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %846 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %845, i32 0, i32 11
  %847 = load i32, i32* %846, align 4
  %848 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %849 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %848, i32 0, i32 10
  store i32 %847, i32* %849, align 8
  %850 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %851 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %850, i32 0, i32 13
  %852 = load i32, i32* %851, align 4
  %853 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %854 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %853, i32 0, i32 12
  store i32 %852, i32* %854, align 8
  %855 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %856 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %855, i32 0, i32 15
  %857 = load i32, i32* %856, align 4
  %858 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %859 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %858, i32 0, i32 14
  store i32 %857, i32* %859, align 8
  %860 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %861 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %860, i32 0, i32 17
  %862 = load i32, i32* %861, align 4
  %863 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %864 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %863, i32 0, i32 16
  store i32 %862, i32* %864, align 8
  %865 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %866 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %865, i32 0, i32 30
  %867 = load i32, i32* %866, align 4
  %868 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %869 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %868, i32 0, i32 31
  store i32 %867, i32* %869, align 8
  %870 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %871 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %870, i32 0, i32 28
  %872 = load i32, i32* %871, align 4
  %873 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %874 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %873, i32 0, i32 29
  store i32 %872, i32* %874, align 8
  %875 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %876 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %875, i32 0, i32 26
  %877 = load i32, i32* %876, align 4
  %878 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %879 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %878, i32 0, i32 27
  store i32 %877, i32* %879, align 8
  br label %880

880:                                              ; preds = %844, %839
  %881 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %882 = call i64 @BNX2_CHIP(%struct.bnx2* %881)
  %883 = load i64, i64* @BNX2_CHIP_5706, align 8
  %884 = icmp eq i64 %882, %883
  br i1 %884, label %885, label %910

885:                                              ; preds = %880
  %886 = load i32, i32* @disable_msi, align 4
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %910

888:                                              ; preds = %885
  store %struct.pci_dev* null, %struct.pci_dev** %19, align 8
  br label %889

889:                                              ; preds = %908, %888
  %890 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %891 = load i32, i32* @PCI_DEVICE_ID_AMD_8132_BRIDGE, align 4
  %892 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %893 = call %struct.pci_dev* @pci_get_device(i32 %890, i32 %891, %struct.pci_dev* %892)
  store %struct.pci_dev* %893, %struct.pci_dev** %19, align 8
  %894 = icmp ne %struct.pci_dev* %893, null
  br i1 %894, label %895, label %909

895:                                              ; preds = %889
  %896 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %897 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %896, i32 0, i32 3
  %898 = load i32, i32* %897, align 4
  %899 = icmp sge i32 %898, 16
  br i1 %899, label %900, label %908

900:                                              ; preds = %895
  %901 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %902 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %901, i32 0, i32 3
  %903 = load i32, i32* %902, align 4
  %904 = icmp sle i32 %903, 19
  br i1 %904, label %905, label %908

905:                                              ; preds = %900
  store i32 1, i32* @disable_msi, align 4
  %906 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %907 = call i32 @pci_dev_put(%struct.pci_dev* %906)
  br label %909

908:                                              ; preds = %900, %895
  br label %889

909:                                              ; preds = %905, %889
  br label %910

910:                                              ; preds = %909, %885, %880
  %911 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %912 = call i32 @bnx2_set_default_link(%struct.bnx2* %911)
  %913 = load i32, i32* @FLOW_CTRL_RX, align 4
  %914 = load i32, i32* @FLOW_CTRL_TX, align 4
  %915 = or i32 %913, %914
  %916 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %917 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %916, i32 0, i32 20
  store i32 %915, i32* %917, align 8
  %918 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %919 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %918, i32 0, i32 25
  %920 = load i32, i32* @bnx2_timer, align 4
  %921 = call i32 @timer_setup(%struct.TYPE_4__* %919, i32 %920, i32 0)
  %922 = load i32, i32* @BNX2_TIMER_INTERVAL, align 4
  %923 = call i32 @RUN_AT(i32 %922)
  %924 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %925 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %924, i32 0, i32 25
  %926 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %925, i32 0, i32 0
  store i32 %923, i32* %926, align 8
  %927 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %928 = call i32 @pci_save_state(%struct.pci_dev* %927)
  store i32 0, i32* %3, align 4
  br label %965

929:                                              ; preds = %657, %379, %328, %282, %271, %190, %146
  %930 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %931 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %930, i32 0, i32 0
  %932 = load i32, i32* %931, align 8
  %933 = load i32, i32* @BNX2_FLAG_AER_ENABLED, align 4
  %934 = and i32 %932, %933
  %935 = icmp ne i32 %934, 0
  br i1 %935, label %936, label %945

936:                                              ; preds = %929
  %937 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %938 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %937)
  %939 = load i32, i32* @BNX2_FLAG_AER_ENABLED, align 4
  %940 = xor i32 %939, -1
  %941 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %942 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %941, i32 0, i32 0
  %943 = load i32, i32* %942, align 8
  %944 = and i32 %943, %940
  store i32 %944, i32* %942, align 8
  br label %945

945:                                              ; preds = %936, %929
  %946 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %947 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %948 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %947, i32 0, i32 22
  %949 = load i32*, i32** %948, align 8
  %950 = call i32 @pci_iounmap(%struct.pci_dev* %946, i32* %949)
  %951 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %952 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %951, i32 0, i32 22
  store i32* null, i32** %952, align 8
  br label %953

953:                                              ; preds = %945, %120, %84
  %954 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %955 = call i32 @pci_release_regions(%struct.pci_dev* %954)
  br label %956

956:                                              ; preds = %953, %68, %56
  %957 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %958 = call i32 @pci_disable_device(%struct.pci_dev* %957)
  br label %959

959:                                              ; preds = %956, %46, %38
  %960 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %961 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %960, i32 0, i32 21
  %962 = load i32, i32* %961, align 4
  %963 = call i32 @kfree(i32 %962)
  %964 = load i32, i32* %7, align 4
  store i32 %964, i32* %3, align 4
  br label %965

965:                                              ; preds = %959, %910
  %966 = load i32, i32* %3, align 4
  ret i32 %966
}

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @MB_GET_CID_ADDR(i64) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @BNX2_CHIP_REV(%struct.bnx2*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i64 @BNX2_CHIP_ID(%struct.bnx2*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @bnx2_get_pci_speed(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_nvram(%struct.bnx2*) #1

declare dso_local i32 @bnx2_reg_rd_ind(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_shmem_rd(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_read_vpd_fw_ver(%struct.bnx2*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @bnx2_set_rx_ring_size(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_alloc_stats_blk(%struct.net_device*) #1

declare dso_local i32 @bnx2_get_5709_media(%struct.bnx2*) #1

declare dso_local i32 @BNX2_CHIP_BOND(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_fw_cap(%struct.bnx2*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @bnx2_set_default_link(%struct.bnx2*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @RUN_AT(i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
