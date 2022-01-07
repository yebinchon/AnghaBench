; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32* }
%struct.bnx2 = type { i32, i32, i32 }

@bnx2_init_one.version_printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@version = common dso_local global i32 0, align 4
@TX_MAX_RINGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bnx2_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@bnx2_ethtool_ops = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@MIN_ETHERNET_PACKET_SIZE = common dso_local global i32 0, align 4
@MAX_ETHERNET_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@BNX2_FLAG_CAN_KEEP_VLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot register net device\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%s (%c%d) %s found at mem %lx, IRQ %d, node addr %pM\0A\00", align 1
@board_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @bnx2_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bnx2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [40 x i8], align 16
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @bnx2_init_one.version_printed, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @bnx2_init_one.version_printed, align 4
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @version, align 4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @TX_MAX_RINGS, align 4
  %18 = call %struct.net_device* @alloc_etherdev_mq(i32 12, i32 %17)
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %181

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call i32 @bnx2_init_board(%struct.pci_dev* %25, %struct.net_device* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %175

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 9
  store i32* @bnx2_netdev_ops, i32** %33, align 8
  %34 = load i32, i32* @TX_TIMEOUT, align 4
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 7
  store i32* @bnx2_ethtool_ops, i32** %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = call %struct.bnx2* @netdev_priv(%struct.net_device* %39)
  store %struct.bnx2* %40, %struct.bnx2** %7, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @pci_set_drvdata(%struct.pci_dev* %41, %struct.net_device* %42)
  %44 = call i64 (...) @is_kdump_kernel()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %48 = call i32 @bnx2_wait_dma_complete(%struct.bnx2* %47)
  br label %49

49:                                               ; preds = %46, %31
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %54 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  %58 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %59 = load i32, i32* @NETIF_F_SG, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @NETIF_F_TSO, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NETIF_F_RXHASH, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %72 = call i64 @BNX2_CHIP(%struct.bnx2* %71)
  %73 = load i64, i64* @BNX2_CHIP_5709, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %49
  %76 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %77 = load i32, i32* @NETIF_F_TSO6, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %75, %49
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %90 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @MIN_ETHERNET_PACKET_SIZE, align 4
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @MAX_ETHERNET_JUMBO_PACKET_SIZE, align 4
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %115 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @BNX2_FLAG_CAN_KEEP_VLAN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %83
  %121 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %83
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = call i32 @register_netdev(%struct.net_device* %128)
  store i32 %129, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %133 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %132, i32 0, i32 1
  %134 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %165

135:                                              ; preds = %127
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @board_info, align 8
  %138 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %139 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %145 = call i32 @BNX2_CHIP_ID(%struct.bnx2* %144)
  %146 = and i32 %145, 61440
  %147 = ashr i32 %146, 12
  %148 = add nsw i32 %147, 65
  %149 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %150 = call i32 @BNX2_CHIP_ID(%struct.bnx2* %149)
  %151 = and i32 %150, 4080
  %152 = ashr i32 %151, 4
  %153 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %154 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %155 = call i32 @bnx2_bus_string(%struct.bnx2* %153, i8* %154)
  %156 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %157 = call i64 @pci_resource_start(%struct.pci_dev* %156, i32 0)
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @netdev_info(%struct.net_device* %136, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %148, i32 %152, i32 %155, i64 %157, i32 %160, i32 %163)
  store i32 0, i32* %3, align 4
  br label %181

165:                                              ; preds = %131
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %168 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @pci_iounmap(%struct.pci_dev* %166, i32 %169)
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = call i32 @pci_release_regions(%struct.pci_dev* %171)
  %173 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %174 = call i32 @pci_disable_device(%struct.pci_dev* %173)
  br label %175

175:                                              ; preds = %165, %30
  %176 = load %struct.net_device*, %struct.net_device** %6, align 8
  %177 = call i32 @bnx2_free_stats_blk(%struct.net_device* %176)
  %178 = load %struct.net_device*, %struct.net_device** %6, align 8
  %179 = call i32 @free_netdev(%struct.net_device* %178)
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %175, %135, %21
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @bnx2_init_board(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i32 @bnx2_wait_dma_complete(%struct.bnx2*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @BNX2_CHIP_ID(%struct.bnx2*) #1

declare dso_local i32 @bnx2_bus_string(%struct.bnx2*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @bnx2_free_stats_blk(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
