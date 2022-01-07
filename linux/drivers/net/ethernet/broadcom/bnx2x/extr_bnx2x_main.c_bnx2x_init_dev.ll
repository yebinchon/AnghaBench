; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_2__, i32, %struct.pci_dev*, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.net_device*, i64, i32 }
%struct.pci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32 }

@BCM57710 = common dso_local global i64 0, align 8
@BCM57711 = common dso_local global i64 0, align 8
@BCM57711E = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Cannot enable PCI device, aborting\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Cannot find PCI device base address, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Cannot find second PCI device base address, aborting\0A\00", align 1
@PCICFG_REVISION_ID_OFFSET = common dso_local global i32 0, align 4
@PCICFG_REVESION_ID_MASK = common dso_local global i32 0, align 4
@PCICFG_REVESION_ID_ERROR_VAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"PCI device error, probably due to fan failure, aborting\0A\00", align 1
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Cannot find power management capability, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Not PCI Express, aborting\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Cannot map register space, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCICFG_ME_REGISTER = common dso_local global i32 0, align 4
@ME_REG_ABS_PF_NUM = common dso_local global i32 0, align 4
@ME_REG_ABS_PF_NUM_SHIFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"me reg PF num: %d\0A\00", align 1
@PCICFG_GRC_ADDRESS = common dso_local global i32 0, align 4
@PCICFG_VENDOR_ID_OFFSET = common dso_local global i32 0, align 4
@AER_ENABLED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed To configure PCIe AER [%d]\0A\00", align 1
@PXP2_REG_PGL_ADDR_88_F0 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_8C_F0 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_90_F0 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_94_F0 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_88_F1 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_8C_F1 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_90_F1 = common dso_local global i32 0, align 4
@PXP2_REG_PGL_ADDR_94_F1 = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@bnx2x_netdev_ops = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_GRO_HW = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_IPXIP4 = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_PARTIAL = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_LOOPBACK = common dso_local global i32 0, align 4
@ETH_MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@ETH_MAX_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@MDIO_PRTAD_NONE = common dso_local global i32 0, align 4
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_EMULATE_C22 = common dso_local global i32 0, align 4
@bnx2x_mdio_read = common dso_local global i32 0, align 4
@bnx2x_mdio_write = common dso_local global i32 0, align 4
@bnx2x_dcbnl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.pci_dev*, %struct.net_device*, i64)* @bnx2x_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_dev(%struct.bnx2x* %0, %struct.pci_dev* %1, %struct.net_device* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @BCM57710, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @BCM57711, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @BCM57711E, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %16, %4
  %25 = phi i1 [ true, %16 ], [ true, %4 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 3
  %30 = call i32 @SET_NETDEV_DEV(%struct.net_device* %27, i32* %29)
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 6
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 4
  store %struct.pci_dev* %34, %struct.pci_dev** %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = call i32 @pci_enable_device(%struct.pci_dev* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %43, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 3
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %470

47:                                               ; preds = %24
  %48 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %49 = call i32 @pci_resource_flags(%struct.pci_dev* %48, i32 0)
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %55, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 3
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %467

61:                                               ; preds = %47
  %62 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %63 = call i64 @IS_PF(%struct.bnx2x* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %67 = call i32 @pci_resource_flags(%struct.pci_dev* %66, i32 2)
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %73 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %72, i32 0, i32 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %73, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 3
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %467

79:                                               ; preds = %65, %61
  %80 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %81 = load i32, i32* @PCICFG_REVISION_ID_OFFSET, align 4
  %82 = call i32 @pci_read_config_dword(%struct.pci_dev* %80, i32 %81, i32* %11)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @PCICFG_REVESION_ID_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @PCICFG_REVESION_ID_ERROR_VAL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %467

92:                                               ; preds = %79
  %93 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 1
  %95 = call i32 @atomic_read(i32* %94)
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %99 = load i32, i32* @DRV_MODULE_NAME, align 4
  %100 = call i32 @pci_request_regions(%struct.pci_dev* %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 4
  %106 = load %struct.pci_dev*, %struct.pci_dev** %105, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 3
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %467

109:                                              ; preds = %97
  %110 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %111 = call i32 @pci_set_master(%struct.pci_dev* %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %113 = call i32 @pci_save_state(%struct.pci_dev* %112)
  br label %114

114:                                              ; preds = %109, %92
  %115 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %116 = call i64 @IS_PF(%struct.bnx2x* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 4
  %126 = load %struct.pci_dev*, %struct.pci_dev** %125, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 3
  %128 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %10, align 4
  br label %458

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131, %114
  %133 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %134 = call i32 @pci_is_pcie(%struct.pci_dev* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %138 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %137, i32 0, i32 4
  %139 = load %struct.pci_dev*, %struct.pci_dev** %138, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 3
  %141 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %10, align 4
  br label %458

144:                                              ; preds = %132
  %145 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %146 = call i32 @bnx2x_set_coherency_mask(%struct.bnx2x* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %458

150:                                              ; preds = %144
  %151 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %152 = call i32 @pci_resource_start(%struct.pci_dev* %151, i32 0)
  %153 = load %struct.net_device*, %struct.net_device** %8, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 13
  store i32 %152, i32* %154, align 4
  %155 = load %struct.net_device*, %struct.net_device** %8, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.net_device*, %struct.net_device** %8, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 14
  store i32 %157, i32* %159, align 8
  %160 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %161 = call i32 @pci_resource_end(%struct.pci_dev* %160, i32 0)
  %162 = load %struct.net_device*, %struct.net_device** %8, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 12
  store i32 %161, i32* %163, align 8
  %164 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.net_device*, %struct.net_device** %8, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 11
  store i32 %166, i32* %168, align 4
  %169 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %170 = call i32 @pci_ioremap_bar(%struct.pci_dev* %169, i32 0)
  %171 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %172 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %174 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %150
  %178 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %179 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %178, i32 0, i32 4
  %180 = load %struct.pci_dev*, %struct.pci_dev** %179, align 8
  %181 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %180, i32 0, i32 3
  %182 = call i32 @dev_err(i32* %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %10, align 4
  br label %458

185:                                              ; preds = %150
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %190 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @PCI_FUNC(i32 %191)
  %193 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %194 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  br label %208

195:                                              ; preds = %185
  %196 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %197 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %196, i32 0, i32 4
  %198 = load %struct.pci_dev*, %struct.pci_dev** %197, align 8
  %199 = load i32, i32* @PCICFG_ME_REGISTER, align 4
  %200 = call i32 @pci_read_config_dword(%struct.pci_dev* %198, i32 %199, i32* %11)
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @ME_REG_ABS_PF_NUM, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* @ME_REG_ABS_PF_NUM_SHIFT, align 4
  %205 = ashr i32 %203, %204
  %206 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %207 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %195, %188
  %209 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %210 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %211)
  %213 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %214 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %213, i32 0, i32 4
  %215 = load %struct.pci_dev*, %struct.pci_dev** %214, align 8
  %216 = load i32, i32* @PCICFG_GRC_ADDRESS, align 4
  %217 = load i32, i32* @PCICFG_VENDOR_ID_OFFSET, align 4
  %218 = call i32 @pci_write_config_dword(%struct.pci_dev* %215, i32 %216, i32 %217)
  %219 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %220 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %219, i32 0, i32 0
  store i32 1, i32* %220, align 4
  %221 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %222 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %208
  %226 = load i32, i32* @AER_ENABLED, align 4
  %227 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %228 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %234

231:                                              ; preds = %208
  %232 = load i32, i32* %10, align 4
  %233 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %231, %225
  %235 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %236 = call i64 @IS_PF(%struct.bnx2x* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %274

238:                                              ; preds = %234
  %239 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %240 = load i32, i32* @PXP2_REG_PGL_ADDR_88_F0, align 4
  %241 = call i32 @REG_WR(%struct.bnx2x* %239, i32 %240, i32 0)
  %242 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %243 = load i32, i32* @PXP2_REG_PGL_ADDR_8C_F0, align 4
  %244 = call i32 @REG_WR(%struct.bnx2x* %242, i32 %243, i32 0)
  %245 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %246 = load i32, i32* @PXP2_REG_PGL_ADDR_90_F0, align 4
  %247 = call i32 @REG_WR(%struct.bnx2x* %245, i32 %246, i32 0)
  %248 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %249 = load i32, i32* @PXP2_REG_PGL_ADDR_94_F0, align 4
  %250 = call i32 @REG_WR(%struct.bnx2x* %248, i32 %249, i32 0)
  %251 = load i32, i32* %12, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %238
  %254 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %255 = load i32, i32* @PXP2_REG_PGL_ADDR_88_F1, align 4
  %256 = call i32 @REG_WR(%struct.bnx2x* %254, i32 %255, i32 0)
  %257 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %258 = load i32, i32* @PXP2_REG_PGL_ADDR_8C_F1, align 4
  %259 = call i32 @REG_WR(%struct.bnx2x* %257, i32 %258, i32 0)
  %260 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %261 = load i32, i32* @PXP2_REG_PGL_ADDR_90_F1, align 4
  %262 = call i32 @REG_WR(%struct.bnx2x* %260, i32 %261, i32 0)
  %263 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %264 = load i32, i32* @PXP2_REG_PGL_ADDR_94_F1, align 4
  %265 = call i32 @REG_WR(%struct.bnx2x* %263, i32 %264, i32 0)
  br label %266

266:                                              ; preds = %253, %238
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %266
  %270 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %271 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, align 4
  %272 = call i32 @REG_WR(%struct.bnx2x* %270, i32 %271, i32 1)
  br label %273

273:                                              ; preds = %269, %266
  br label %274

274:                                              ; preds = %273, %234
  %275 = load i32, i32* @TX_TIMEOUT, align 4
  %276 = load %struct.net_device*, %struct.net_device** %8, align 8
  %277 = getelementptr inbounds %struct.net_device, %struct.net_device* %276, i32 0, i32 10
  store i32 %275, i32* %277, align 8
  %278 = load %struct.net_device*, %struct.net_device** %8, align 8
  %279 = getelementptr inbounds %struct.net_device, %struct.net_device* %278, i32 0, i32 9
  store i32* @bnx2x_netdev_ops, i32** %279, align 8
  %280 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %281 = load %struct.net_device*, %struct.net_device** %8, align 8
  %282 = call i32 @bnx2x_set_ethtool_ops(%struct.bnx2x* %280, %struct.net_device* %281)
  %283 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %284 = load %struct.net_device*, %struct.net_device** %8, align 8
  %285 = getelementptr inbounds %struct.net_device, %struct.net_device* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load i32, i32* @NETIF_F_SG, align 4
  %289 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @NETIF_F_TSO, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @NETIF_F_TSO6, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @NETIF_F_LRO, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @NETIF_F_GRO, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* @NETIF_F_RXHASH, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %310 = or i32 %308, %309
  %311 = load %struct.net_device*, %struct.net_device** %8, align 8
  %312 = getelementptr inbounds %struct.net_device, %struct.net_device* %311, i32 0, i32 0
  store i32 %310, i32* %312, align 8
  %313 = load i32, i32* %12, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %361, label %315

315:                                              ; preds = %274
  %316 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %317 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %318 = or i32 %316, %317
  %319 = load i32, i32* @NETIF_F_GSO_IPXIP4, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @NETIF_F_GSO_PARTIAL, align 4
  %326 = or i32 %324, %325
  %327 = load %struct.net_device*, %struct.net_device** %8, align 8
  %328 = getelementptr inbounds %struct.net_device, %struct.net_device* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 8
  %331 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %332 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @NETIF_F_SG, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @NETIF_F_TSO, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* @NETIF_F_TSO6, align 4
  %341 = or i32 %339, %340
  %342 = load i32, i32* @NETIF_F_GSO_IPXIP4, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %345 = or i32 %343, %344
  %346 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %347 = or i32 %345, %346
  %348 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* @NETIF_F_GSO_PARTIAL, align 4
  %353 = or i32 %351, %352
  %354 = load %struct.net_device*, %struct.net_device** %8, align 8
  %355 = getelementptr inbounds %struct.net_device, %struct.net_device* %354, i32 0, i32 1
  store i32 %353, i32* %355, align 4
  %356 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %357 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %358 = or i32 %356, %357
  %359 = load %struct.net_device*, %struct.net_device** %8, align 8
  %360 = getelementptr inbounds %struct.net_device, %struct.net_device* %359, i32 0, i32 2
  store i32 %358, i32* %360, align 8
  br label %361

361:                                              ; preds = %315, %274
  %362 = load i32, i32* @NETIF_F_SG, align 4
  %363 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %364 = or i32 %362, %363
  %365 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %366 = or i32 %364, %365
  %367 = load i32, i32* @NETIF_F_TSO, align 4
  %368 = or i32 %366, %367
  %369 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %370 = or i32 %368, %369
  %371 = load i32, i32* @NETIF_F_TSO6, align 4
  %372 = or i32 %370, %371
  %373 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %374 = or i32 %372, %373
  %375 = load %struct.net_device*, %struct.net_device** %8, align 8
  %376 = getelementptr inbounds %struct.net_device, %struct.net_device* %375, i32 0, i32 3
  store i32 %374, i32* %376, align 4
  %377 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %378 = call i64 @IS_PF(%struct.bnx2x* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %393

380:                                              ; preds = %361
  %381 = load i32, i32* %12, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %385 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %384, i32 0, i32 1
  store i32 1, i32* %385, align 4
  br label %392

386:                                              ; preds = %380
  %387 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %388 = load %struct.net_device*, %struct.net_device** %8, align 8
  %389 = getelementptr inbounds %struct.net_device, %struct.net_device* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = or i32 %390, %387
  store i32 %391, i32* %389, align 8
  br label %392

392:                                              ; preds = %386, %383
  br label %393

393:                                              ; preds = %392, %361
  %394 = load %struct.net_device*, %struct.net_device** %8, align 8
  %395 = getelementptr inbounds %struct.net_device, %struct.net_device* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %398 = or i32 %396, %397
  %399 = load %struct.net_device*, %struct.net_device** %8, align 8
  %400 = getelementptr inbounds %struct.net_device, %struct.net_device* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %398
  store i32 %402, i32* %400, align 8
  %403 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %404 = load %struct.net_device*, %struct.net_device** %8, align 8
  %405 = getelementptr inbounds %struct.net_device, %struct.net_device* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 8
  %408 = load %struct.net_device*, %struct.net_device** %8, align 8
  %409 = getelementptr inbounds %struct.net_device, %struct.net_device* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @NETIF_F_LRO, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %421

414:                                              ; preds = %393
  %415 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %416 = xor i32 %415, -1
  %417 = load %struct.net_device*, %struct.net_device** %8, align 8
  %418 = getelementptr inbounds %struct.net_device, %struct.net_device* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 8
  %420 = and i32 %419, %416
  store i32 %420, i32* %418, align 8
  br label %421

421:                                              ; preds = %414, %393
  %422 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %423 = load %struct.net_device*, %struct.net_device** %8, align 8
  %424 = getelementptr inbounds %struct.net_device, %struct.net_device* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = or i32 %425, %422
  store i32 %426, i32* %424, align 8
  %427 = load i32, i32* @ETH_MIN_PACKET_SIZE, align 4
  %428 = load %struct.net_device*, %struct.net_device** %8, align 8
  %429 = getelementptr inbounds %struct.net_device, %struct.net_device* %428, i32 0, i32 6
  store i32 %427, i32* %429, align 8
  %430 = load i32, i32* @ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %431 = load %struct.net_device*, %struct.net_device** %8, align 8
  %432 = getelementptr inbounds %struct.net_device, %struct.net_device* %431, i32 0, i32 5
  store i32 %430, i32* %432, align 4
  %433 = load i32, i32* @MDIO_PRTAD_NONE, align 4
  %434 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %435 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %434, i32 0, i32 2
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %435, i32 0, i32 5
  store i32 %433, i32* %436, align 8
  %437 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %438 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %437, i32 0, i32 2
  %439 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %438, i32 0, i32 4
  store i64 0, i64* %439, align 8
  %440 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %441 = load i32, i32* @MDIO_EMULATE_C22, align 4
  %442 = or i32 %440, %441
  %443 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %444 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %444, i32 0, i32 0
  store i32 %442, i32* %445, align 8
  %446 = load %struct.net_device*, %struct.net_device** %8, align 8
  %447 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %448 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %447, i32 0, i32 2
  %449 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %448, i32 0, i32 3
  store %struct.net_device* %446, %struct.net_device** %449, align 8
  %450 = load i32, i32* @bnx2x_mdio_read, align 4
  %451 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %452 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %452, i32 0, i32 2
  store i32 %450, i32* %453, align 8
  %454 = load i32, i32* @bnx2x_mdio_write, align 4
  %455 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %456 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %456, i32 0, i32 1
  store i32 %454, i32* %457, align 4
  store i32 0, i32* %5, align 4
  br label %472

458:                                              ; preds = %177, %149, %136, %123
  %459 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %460 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %459, i32 0, i32 1
  %461 = call i32 @atomic_read(i32* %460)
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %466

463:                                              ; preds = %458
  %464 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %465 = call i32 @pci_release_regions(%struct.pci_dev* %464)
  br label %466

466:                                              ; preds = %463, %458
  br label %467

467:                                              ; preds = %466, %103, %88, %71, %53
  %468 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %469 = call i32 @pci_disable_device(%struct.pci_dev* %468)
  br label %470

470:                                              ; preds = %467, %41
  %471 = load i32, i32* %10, align 4
  store i32 %471, i32* %5, align 4
  br label %472

472:                                              ; preds = %470, %421
  %473 = load i32, i32* %5, align 4
  ret i32 %473
}

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @bnx2x_set_coherency_mask(%struct.bnx2x*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_set_ethtool_ops(%struct.bnx2x*, %struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
