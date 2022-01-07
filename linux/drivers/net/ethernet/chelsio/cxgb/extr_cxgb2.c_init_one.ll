; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.board_info = type { i32, i32, i32 }
%struct.adapter = type { i64, %struct.port_info*, i64, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.port_info = type { %struct.net_device* }
%struct.net_device = type { i32, i64, i64, i32, i32, i32, i32, i64, i32*, i32*, %struct.adapter*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"%s - version %s\0A\00", align 1
@DRV_DESCRIPTION = common dso_local global i32 0, align 4
@DRV_VERSION = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: cannot find PCI device memory base address\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"%s: unable to obtain 64-bit DMA for consistent allocations\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: no usable DMA configuration\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: cannot obtain PCI resources\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: cannot map device registers\0A\00", align 1
@dflt_msg_enable = common dso_local global i32 0, align 4
@ext_intr_task = common dso_local global i32 0, align 4
@mac_stats_task = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@cxgb_netdev_ops = common dso_local global i32 0, align 4
@t1_poll = common dso_local global i32 0, align 4
@t1_ethtool_ops = common dso_local global i32 0, align 4
@PM3393_MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@VSC7326_MAX_MTU = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"%s: cannot register net device %s, skipping\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: could not register any net devices\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: %s (rev %d), %s %dMHz/%d-bit\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"PCIX\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@t1powersave = common dso_local global i64 0, align 8
@LCLOCK = common dso_local global i32 0, align 4
@HCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.board_info*, align 8
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca %struct.port_info*, align 8
  %14 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  store %struct.adapter* null, %struct.adapter** %12, align 8
  %15 = load i32, i32* @DRV_DESCRIPTION, align 4
  %16 = load i32, i32* @DRV_VERSION, align 4
  %17 = call i32 @pr_info_once(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_enable_device(%struct.pci_dev* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %506

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @pci_resource_flags(%struct.pci_dev* %25, i32 0)
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_name(%struct.pci_dev* %31)
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %502

36:                                               ; preds = %24
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @DMA_BIT_MASK(i32 64)
  %39 = call i32 @pci_set_dma_mask(%struct.pci_dev* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @DMA_BIT_MASK(i32 64)
  %44 = call i64 @pci_set_consistent_dma_mask(%struct.pci_dev* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i32 @pci_name(%struct.pci_dev* %47)
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %502

52:                                               ; preds = %41
  br label %63

53:                                               ; preds = %36
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i32 @DMA_BIT_MASK(i32 32)
  %56 = call i32 @pci_set_dma_mask(%struct.pci_dev* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_name(%struct.pci_dev* %59)
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %502

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %52
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* @DRV_NAME, align 4
  %66 = call i32 @pci_request_regions(%struct.pci_dev* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_name(%struct.pci_dev* %70)
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %502

73:                                               ; preds = %63
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = call i32 @pci_set_master(%struct.pci_dev* %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = call i64 @pci_resource_start(%struct.pci_dev* %76, i32 0)
  store i64 %77, i64* %9, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i64 @pci_resource_len(%struct.pci_dev* %78, i32 0)
  store i64 %79, i64* %10, align 8
  %80 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %81 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.board_info* @t1_get_board_info(i32 %82)
  store %struct.board_info* %83, %struct.board_info** %11, align 8
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %321, %73
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.board_info*, %struct.board_info** %11, align 8
  %87 = getelementptr inbounds %struct.board_info, %struct.board_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %324

90:                                               ; preds = %84
  %91 = load %struct.adapter*, %struct.adapter** %12, align 8
  %92 = icmp ne %struct.adapter* %91, null
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i64 0, i64 104
  %95 = trunc i64 %94 to i32
  %96 = call %struct.net_device* @alloc_etherdev(i32 %95)
  store %struct.net_device* %96, %struct.net_device** %14, align 8
  %97 = load %struct.net_device*, %struct.net_device** %14, align 8
  %98 = icmp ne %struct.net_device* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %453

102:                                              ; preds = %90
  %103 = load %struct.net_device*, %struct.net_device** %14, align 8
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 1
  %106 = call i32 @SET_NETDEV_DEV(%struct.net_device* %103, i32* %105)
  %107 = load %struct.adapter*, %struct.adapter** %12, align 8
  %108 = icmp ne %struct.adapter* %107, null
  br i1 %108, label %180, label %109

109:                                              ; preds = %102
  %110 = load %struct.net_device*, %struct.net_device** %14, align 8
  %111 = call %struct.adapter* @netdev_priv(%struct.net_device* %110)
  store %struct.adapter* %111, %struct.adapter** %12, align 8
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = load %struct.adapter*, %struct.adapter** %12, align 8
  %114 = getelementptr inbounds %struct.adapter, %struct.adapter* %113, i32 0, i32 15
  store %struct.pci_dev* %112, %struct.pci_dev** %114, align 8
  %115 = load %struct.net_device*, %struct.net_device** %14, align 8
  %116 = load %struct.adapter*, %struct.adapter** %12, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 1
  %118 = load %struct.port_info*, %struct.port_info** %117, align 8
  %119 = getelementptr inbounds %struct.port_info, %struct.port_info* %118, i64 0
  %120 = getelementptr inbounds %struct.port_info, %struct.port_info* %119, i32 0, i32 0
  store %struct.net_device* %115, %struct.net_device** %120, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i64 @ioremap(i64 %121, i64 %122)
  %124 = load %struct.adapter*, %struct.adapter** %12, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.adapter*, %struct.adapter** %12, align 8
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %109
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = call i32 @pci_name(%struct.pci_dev* %131)
  %133 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %453

136:                                              ; preds = %109
  %137 = load %struct.adapter*, %struct.adapter** %12, align 8
  %138 = load %struct.board_info*, %struct.board_info** %11, align 8
  %139 = load %struct.adapter*, %struct.adapter** %12, align 8
  %140 = getelementptr inbounds %struct.adapter, %struct.adapter* %139, i32 0, i32 4
  %141 = call i64 @t1_get_board_rev(%struct.adapter* %137, %struct.board_info* %138, %struct.TYPE_4__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  br label %453

146:                                              ; preds = %136
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = call i32 @pci_name(%struct.pci_dev* %147)
  %149 = load %struct.adapter*, %struct.adapter** %12, align 8
  %150 = getelementptr inbounds %struct.adapter, %struct.adapter* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @dflt_msg_enable, align 4
  %152 = load %struct.adapter*, %struct.adapter** %12, align 8
  %153 = getelementptr inbounds %struct.adapter, %struct.adapter* %152, i32 0, i32 14
  store i32 %151, i32* %153, align 4
  %154 = load i64, i64* %10, align 8
  %155 = load %struct.adapter*, %struct.adapter** %12, align 8
  %156 = getelementptr inbounds %struct.adapter, %struct.adapter* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.adapter*, %struct.adapter** %12, align 8
  %158 = getelementptr inbounds %struct.adapter, %struct.adapter* %157, i32 0, i32 13
  %159 = call i32 @spin_lock_init(i32* %158)
  %160 = load %struct.adapter*, %struct.adapter** %12, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 12
  %162 = call i32 @spin_lock_init(i32* %161)
  %163 = load %struct.adapter*, %struct.adapter** %12, align 8
  %164 = getelementptr inbounds %struct.adapter, %struct.adapter* %163, i32 0, i32 11
  %165 = call i32 @spin_lock_init(i32* %164)
  %166 = load %struct.adapter*, %struct.adapter** %12, align 8
  %167 = getelementptr inbounds %struct.adapter, %struct.adapter* %166, i32 0, i32 10
  %168 = call i32 @spin_lock_init(i32* %167)
  %169 = load %struct.adapter*, %struct.adapter** %12, align 8
  %170 = getelementptr inbounds %struct.adapter, %struct.adapter* %169, i32 0, i32 9
  %171 = load i32, i32* @ext_intr_task, align 4
  %172 = call i32 @INIT_WORK(i32* %170, i32 %171)
  %173 = load %struct.adapter*, %struct.adapter** %12, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 8
  %175 = load i32, i32* @mac_stats_task, align 4
  %176 = call i32 @INIT_DELAYED_WORK(i32* %174, i32 %175)
  %177 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %178 = load %struct.net_device*, %struct.net_device** %14, align 8
  %179 = call i32 @pci_set_drvdata(%struct.pci_dev* %177, %struct.net_device* %178)
  br label %180

180:                                              ; preds = %146, %102
  %181 = load %struct.adapter*, %struct.adapter** %12, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 1
  %183 = load %struct.port_info*, %struct.port_info** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.port_info, %struct.port_info* %183, i64 %185
  store %struct.port_info* %186, %struct.port_info** %13, align 8
  %187 = load %struct.net_device*, %struct.net_device** %14, align 8
  %188 = load %struct.port_info*, %struct.port_info** %13, align 8
  %189 = getelementptr inbounds %struct.port_info, %struct.port_info* %188, i32 0, i32 0
  store %struct.net_device* %187, %struct.net_device** %189, align 8
  %190 = load %struct.net_device*, %struct.net_device** %14, align 8
  %191 = call i32 @netif_carrier_off(%struct.net_device* %190)
  %192 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %193 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.net_device*, %struct.net_device** %14, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 11
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.net_device*, %struct.net_device** %14, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load i64, i64* %9, align 8
  %201 = load %struct.net_device*, %struct.net_device** %14, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  %203 = load i64, i64* %9, align 8
  %204 = load i64, i64* %10, align 8
  %205 = add i64 %203, %204
  %206 = sub i64 %205, 1
  %207 = load %struct.net_device*, %struct.net_device** %14, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = load %struct.adapter*, %struct.adapter** %12, align 8
  %210 = load %struct.net_device*, %struct.net_device** %14, align 8
  %211 = getelementptr inbounds %struct.net_device, %struct.net_device* %210, i32 0, i32 10
  store %struct.adapter* %209, %struct.adapter** %211, align 8
  %212 = load i32, i32* @NETIF_F_SG, align 4
  %213 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.net_device*, %struct.net_device** %14, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load i32, i32* @NETIF_F_SG, align 4
  %222 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @NETIF_F_LLTX, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.net_device*, %struct.net_device** %14, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %180
  %235 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %236 = load %struct.net_device*, %struct.net_device** %14, align 8
  %237 = getelementptr inbounds %struct.net_device, %struct.net_device* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %234, %180
  %241 = load %struct.adapter*, %struct.adapter** %12, align 8
  %242 = call i64 @vlan_tso_capable(%struct.adapter* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %277

244:                                              ; preds = %240
  %245 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %246 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %247 = or i32 %245, %246
  %248 = load %struct.net_device*, %struct.net_device** %14, align 8
  %249 = getelementptr inbounds %struct.net_device, %struct.net_device* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %253 = load %struct.net_device*, %struct.net_device** %14, align 8
  %254 = getelementptr inbounds %struct.net_device, %struct.net_device* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 8
  %257 = load %struct.adapter*, %struct.adapter** %12, align 8
  %258 = call i32 @is_T2(%struct.adapter* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %244
  %261 = load %struct.board_info*, %struct.board_info** %11, align 8
  %262 = getelementptr inbounds %struct.board_info, %struct.board_info* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 4
  br i1 %264, label %265, label %276

265:                                              ; preds = %260, %244
  %266 = load i32, i32* @NETIF_F_TSO, align 4
  %267 = load %struct.net_device*, %struct.net_device** %14, align 8
  %268 = getelementptr inbounds %struct.net_device, %struct.net_device* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load i32, i32* @NETIF_F_TSO, align 4
  %272 = load %struct.net_device*, %struct.net_device** %14, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %265, %260
  br label %277

277:                                              ; preds = %276, %240
  %278 = load %struct.net_device*, %struct.net_device** %14, align 8
  %279 = getelementptr inbounds %struct.net_device, %struct.net_device* %278, i32 0, i32 9
  store i32* @cxgb_netdev_ops, i32** %279, align 8
  %280 = load %struct.net_device*, %struct.net_device** %14, align 8
  %281 = getelementptr inbounds %struct.net_device, %struct.net_device* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @NETIF_F_TSO, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i64 4, i64 4
  %288 = load %struct.net_device*, %struct.net_device** %14, align 8
  %289 = getelementptr inbounds %struct.net_device, %struct.net_device* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = add i64 %291, %287
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %289, align 8
  %294 = load %struct.net_device*, %struct.net_device** %14, align 8
  %295 = load %struct.adapter*, %struct.adapter** %12, align 8
  %296 = getelementptr inbounds %struct.adapter, %struct.adapter* %295, i32 0, i32 7
  %297 = load i32, i32* @t1_poll, align 4
  %298 = call i32 @netif_napi_add(%struct.net_device* %294, i32* %296, i32 %297, i32 64)
  %299 = load %struct.net_device*, %struct.net_device** %14, align 8
  %300 = getelementptr inbounds %struct.net_device, %struct.net_device* %299, i32 0, i32 8
  store i32* @t1_ethtool_ops, i32** %300, align 8
  %301 = load %struct.board_info*, %struct.board_info** %11, align 8
  %302 = getelementptr inbounds %struct.board_info, %struct.board_info* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  switch i32 %303, label %316 [
    i32 131, label %304
    i32 129, label %304
    i32 128, label %304
    i32 130, label %304
    i32 132, label %312
  ]

304:                                              ; preds = %277, %277, %277, %277
  %305 = load i64, i64* @PM3393_MAX_FRAME_SIZE, align 8
  %306 = load i64, i64* @ETH_HLEN, align 8
  %307 = load i64, i64* @ETH_FCS_LEN, align 8
  %308 = add nsw i64 %306, %307
  %309 = sub nsw i64 %305, %308
  %310 = load %struct.net_device*, %struct.net_device** %14, align 8
  %311 = getelementptr inbounds %struct.net_device, %struct.net_device* %310, i32 0, i32 7
  store i64 %309, i64* %311, align 8
  br label %320

312:                                              ; preds = %277
  %313 = load i64, i64* @VSC7326_MAX_MTU, align 8
  %314 = load %struct.net_device*, %struct.net_device** %14, align 8
  %315 = getelementptr inbounds %struct.net_device, %struct.net_device* %314, i32 0, i32 7
  store i64 %313, i64* %315, align 8
  br label %320

316:                                              ; preds = %277
  %317 = load i64, i64* @ETH_DATA_LEN, align 8
  %318 = load %struct.net_device*, %struct.net_device** %14, align 8
  %319 = getelementptr inbounds %struct.net_device, %struct.net_device* %318, i32 0, i32 7
  store i64 %317, i64* %319, align 8
  br label %320

320:                                              ; preds = %316, %312, %304
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %6, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %6, align 4
  br label %84

324:                                              ; preds = %84
  %325 = load %struct.adapter*, %struct.adapter** %12, align 8
  %326 = load %struct.board_info*, %struct.board_info** %11, align 8
  %327 = call i64 @t1_init_sw_modules(%struct.adapter* %325, %struct.board_info* %326)
  %328 = icmp slt i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %324
  %330 = load i32, i32* @ENODEV, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %7, align 4
  br label %453

332:                                              ; preds = %324
  store i32 0, i32* %6, align 4
  br label %333

333:                                              ; preds = %389, %332
  %334 = load i32, i32* %6, align 4
  %335 = load %struct.board_info*, %struct.board_info** %11, align 8
  %336 = getelementptr inbounds %struct.board_info, %struct.board_info* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = icmp slt i32 %334, %337
  br i1 %338, label %339, label %392

339:                                              ; preds = %333
  %340 = load %struct.adapter*, %struct.adapter** %12, align 8
  %341 = getelementptr inbounds %struct.adapter, %struct.adapter* %340, i32 0, i32 1
  %342 = load %struct.port_info*, %struct.port_info** %341, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.port_info, %struct.port_info* %342, i64 %344
  %346 = getelementptr inbounds %struct.port_info, %struct.port_info* %345, i32 0, i32 0
  %347 = load %struct.net_device*, %struct.net_device** %346, align 8
  %348 = call i32 @register_netdev(%struct.net_device* %347)
  store i32 %348, i32* %7, align 4
  %349 = load i32, i32* %7, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %365

351:                                              ; preds = %339
  %352 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %353 = call i32 @pci_name(%struct.pci_dev* %352)
  %354 = load %struct.adapter*, %struct.adapter** %12, align 8
  %355 = getelementptr inbounds %struct.adapter, %struct.adapter* %354, i32 0, i32 1
  %356 = load %struct.port_info*, %struct.port_info** %355, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.port_info, %struct.port_info* %356, i64 %358
  %360 = getelementptr inbounds %struct.port_info, %struct.port_info* %359, i32 0, i32 0
  %361 = load %struct.net_device*, %struct.net_device** %360, align 8
  %362 = getelementptr inbounds %struct.net_device, %struct.net_device* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %353, i32 %363)
  br label %388

365:                                              ; preds = %339
  %366 = load %struct.adapter*, %struct.adapter** %12, align 8
  %367 = getelementptr inbounds %struct.adapter, %struct.adapter* %366, i32 0, i32 6
  %368 = load i32, i32* %367, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %383, label %370

370:                                              ; preds = %365
  %371 = load %struct.adapter*, %struct.adapter** %12, align 8
  %372 = getelementptr inbounds %struct.adapter, %struct.adapter* %371, i32 0, i32 1
  %373 = load %struct.port_info*, %struct.port_info** %372, align 8
  %374 = load i32, i32* %6, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.port_info, %struct.port_info* %373, i64 %375
  %377 = getelementptr inbounds %struct.port_info, %struct.port_info* %376, i32 0, i32 0
  %378 = load %struct.net_device*, %struct.net_device** %377, align 8
  %379 = getelementptr inbounds %struct.net_device, %struct.net_device* %378, i32 0, i32 6
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.adapter*, %struct.adapter** %12, align 8
  %382 = getelementptr inbounds %struct.adapter, %struct.adapter* %381, i32 0, i32 5
  store i32 %380, i32* %382, align 8
  br label %383

383:                                              ; preds = %370, %365
  %384 = load i32, i32* %6, align 4
  %385 = load %struct.adapter*, %struct.adapter** %12, align 8
  %386 = getelementptr inbounds %struct.adapter, %struct.adapter* %385, i32 0, i32 6
  %387 = call i32 @__set_bit(i32 %384, i32* %386)
  br label %388

388:                                              ; preds = %383, %351
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %6, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %6, align 4
  br label %333

392:                                              ; preds = %333
  %393 = load %struct.adapter*, %struct.adapter** %12, align 8
  %394 = getelementptr inbounds %struct.adapter, %struct.adapter* %393, i32 0, i32 6
  %395 = load i32, i32* %394, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %392
  %398 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %399 = call i32 @pci_name(%struct.pci_dev* %398)
  %400 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %399)
  br label %450

401:                                              ; preds = %392
  %402 = load %struct.adapter*, %struct.adapter** %12, align 8
  %403 = getelementptr inbounds %struct.adapter, %struct.adapter* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.board_info*, %struct.board_info** %11, align 8
  %406 = getelementptr inbounds %struct.board_info, %struct.board_info* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.adapter*, %struct.adapter** %12, align 8
  %409 = getelementptr inbounds %struct.adapter, %struct.adapter* %408, i32 0, i32 4
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.adapter*, %struct.adapter** %12, align 8
  %413 = getelementptr inbounds %struct.adapter, %struct.adapter* %412, i32 0, i32 4
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  %418 = zext i1 %417 to i64
  %419 = select i1 %417, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %420 = load %struct.adapter*, %struct.adapter** %12, align 8
  %421 = getelementptr inbounds %struct.adapter, %struct.adapter* %420, i32 0, i32 4
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.adapter*, %struct.adapter** %12, align 8
  %426 = getelementptr inbounds %struct.adapter, %struct.adapter* %425, i32 0, i32 4
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %404, i32 %407, i32 %411, i8* %419, i32 %424, i32 %429)
  %431 = load i64, i64* @t1powersave, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %401
  %434 = load i32, i32* @LCLOCK, align 4
  %435 = load %struct.adapter*, %struct.adapter** %12, align 8
  %436 = getelementptr inbounds %struct.adapter, %struct.adapter* %435, i32 0, i32 3
  store i32 %434, i32* %436, align 8
  br label %441

437:                                              ; preds = %401
  %438 = load i32, i32* @HCLOCK, align 4
  %439 = load %struct.adapter*, %struct.adapter** %12, align 8
  %440 = getelementptr inbounds %struct.adapter, %struct.adapter* %439, i32 0, i32 3
  store i32 %438, i32* %440, align 8
  br label %441

441:                                              ; preds = %437, %433
  %442 = load %struct.adapter*, %struct.adapter** %12, align 8
  %443 = call i64 @t1_is_T1B(%struct.adapter* %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %441
  %446 = load %struct.adapter*, %struct.adapter** %12, align 8
  %447 = load i64, i64* @t1powersave, align 8
  %448 = call i32 @t1_clock(%struct.adapter* %446, i64 %447)
  br label %449

449:                                              ; preds = %445, %441
  store i32 0, i32* %3, align 4
  br label %506

450:                                              ; preds = %397
  %451 = load %struct.adapter*, %struct.adapter** %12, align 8
  %452 = call i32 @t1_free_sw_modules(%struct.adapter* %451)
  br label %453

453:                                              ; preds = %450, %329, %143, %130, %99
  %454 = load %struct.adapter*, %struct.adapter** %12, align 8
  %455 = icmp ne %struct.adapter* %454, null
  br i1 %455, label %456, label %499

456:                                              ; preds = %453
  %457 = load %struct.adapter*, %struct.adapter** %12, align 8
  %458 = getelementptr inbounds %struct.adapter, %struct.adapter* %457, i32 0, i32 2
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %466

461:                                              ; preds = %456
  %462 = load %struct.adapter*, %struct.adapter** %12, align 8
  %463 = getelementptr inbounds %struct.adapter, %struct.adapter* %462, i32 0, i32 2
  %464 = load i64, i64* %463, align 8
  %465 = call i32 @iounmap(i64 %464)
  br label %466

466:                                              ; preds = %461, %456
  %467 = load %struct.board_info*, %struct.board_info** %11, align 8
  %468 = getelementptr inbounds %struct.board_info, %struct.board_info* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = sub nsw i32 %469, 1
  store i32 %470, i32* %6, align 4
  br label %471

471:                                              ; preds = %495, %466
  %472 = load i32, i32* %6, align 4
  %473 = icmp sge i32 %472, 0
  br i1 %473, label %474, label %498

474:                                              ; preds = %471
  %475 = load %struct.adapter*, %struct.adapter** %12, align 8
  %476 = getelementptr inbounds %struct.adapter, %struct.adapter* %475, i32 0, i32 1
  %477 = load %struct.port_info*, %struct.port_info** %476, align 8
  %478 = load i32, i32* %6, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.port_info, %struct.port_info* %477, i64 %479
  %481 = getelementptr inbounds %struct.port_info, %struct.port_info* %480, i32 0, i32 0
  %482 = load %struct.net_device*, %struct.net_device** %481, align 8
  %483 = icmp ne %struct.net_device* %482, null
  br i1 %483, label %484, label %494

484:                                              ; preds = %474
  %485 = load %struct.adapter*, %struct.adapter** %12, align 8
  %486 = getelementptr inbounds %struct.adapter, %struct.adapter* %485, i32 0, i32 1
  %487 = load %struct.port_info*, %struct.port_info** %486, align 8
  %488 = load i32, i32* %6, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.port_info, %struct.port_info* %487, i64 %489
  %491 = getelementptr inbounds %struct.port_info, %struct.port_info* %490, i32 0, i32 0
  %492 = load %struct.net_device*, %struct.net_device** %491, align 8
  %493 = call i32 @free_netdev(%struct.net_device* %492)
  br label %494

494:                                              ; preds = %484, %474
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %6, align 4
  %497 = add nsw i32 %496, -1
  store i32 %497, i32* %6, align 4
  br label %471

498:                                              ; preds = %471
  br label %499

499:                                              ; preds = %498, %453
  %500 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %501 = call i32 @pci_release_regions(%struct.pci_dev* %500)
  br label %502

502:                                              ; preds = %499, %69, %58, %46, %30
  %503 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %504 = call i32 @pci_disable_device(%struct.pci_dev* %503)
  %505 = load i32, i32* %7, align 4
  store i32 %505, i32* %3, align 4
  br label %506

506:                                              ; preds = %502, %449, %22
  %507 = load i32, i32* %3, align 4
  ret i32 %507
}

declare dso_local i32 @pr_info_once(i8*, i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local %struct.board_info* @t1_get_board_info(i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ioremap(i64, i64) #1

declare dso_local i64 @t1_get_board_rev(%struct.adapter*, %struct.board_info*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @vlan_tso_capable(%struct.adapter*) #1

declare dso_local i32 @is_T2(%struct.adapter*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i64 @t1_init_sw_modules(%struct.adapter*, %struct.board_info*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @t1_is_T1B(%struct.adapter*) #1

declare dso_local i32 @t1_clock(%struct.adapter*, i64) #1

declare dso_local i32 @t1_free_sw_modules(%struct.adapter*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
