; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.net_device*, %struct.TYPE_3__*, i64, i64, i32, i32, i64, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.sockaddr = type { i32 }

@spider_net_cleanup_tx_ring = common dso_local global i32 0, align 4
@spider_net_link_phy = common dso_local global i32 0, align 4
@spider_net_poll = common dso_local global i32 0, align 4
@SPIDER_NET_NAPI_WEIGHT = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@SPIDER_NET_RX_CSUM_DEFAULT = common dso_local global i64 0, align 8
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@SPIDER_NET_MIN_MTU = common dso_local global i32 0, align 4
@SPIDER_NET_MAX_MTU = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to set MAC address: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't register net_device: %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Initialized device %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*)* @spider_net_setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_setup_netdev(%struct.spider_net_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spider_net_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.sockaddr, align 4
  %8 = alloca i32*, align 8
  store %struct.spider_net_card* %0, %struct.spider_net_card** %3, align 8
  %9 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %10 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %14 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @SET_NETDEV_DEV(%struct.net_device* %12, i32* %16)
  %18 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %19 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @pci_set_drvdata(%struct.TYPE_3__* %20, %struct.net_device* %21)
  %23 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %24 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %23, i32 0, i32 7
  %25 = load i32, i32* @spider_net_cleanup_tx_ring, align 4
  %26 = call i32 @timer_setup(i32* %24, i32 %25, i32 0)
  %27 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %28 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %35 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %37 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %36, i32 0, i32 5
  %38 = load i32, i32* @spider_net_link_phy, align 4
  %39 = call i32 @timer_setup(i32* %37, i32 %38, i32 0)
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %42 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %41, i32 0, i32 4
  %43 = load i32, i32* @spider_net_poll, align 4
  %44 = load i32, i32* @SPIDER_NET_NAPI_WEIGHT, align 4
  %45 = call i32 @netif_napi_add(%struct.net_device* %40, i32* %42, i32 %43, i32 %44)
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 @spider_net_setup_netdev_ops(%struct.net_device* %46)
  %48 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %49 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* @SPIDER_NET_RX_CSUM_DEFAULT, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %1
  %56 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %1
  %62 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %63 = load i32, i32* @NETIF_F_LLTX, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @SPIDER_NET_MIN_MTU, align 4
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @SPIDER_NET_MAX_MTU, align 4
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %76 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %83 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %85 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %87 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call %struct.device_node* @pci_device_to_OF_node(%struct.TYPE_3__* %88)
  store %struct.device_node* %89, %struct.device_node** %6, align 8
  %90 = load %struct.device_node*, %struct.device_node** %6, align 8
  %91 = icmp ne %struct.device_node* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %61
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %152

95:                                               ; preds = %61
  %96 = load %struct.device_node*, %struct.device_node** %6, align 8
  %97 = call i32* @of_get_property(%struct.device_node* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %152

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %7, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @memcpy(i32 %105, i32* %106, i32 %107)
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = call i32 @spider_net_set_mac(%struct.net_device* %109, %struct.sockaddr* %7)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %103
  %114 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %115 = call i64 @netif_msg_probe(%struct.spider_net_card* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %119 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %118, i32 0, i32 0
  %120 = load %struct.net_device*, %struct.net_device** %119, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 3
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %117, %113, %103
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = call i32 @register_netdev(%struct.net_device* %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %131 = call i64 @netif_msg_probe(%struct.spider_net_card* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %135 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %134, i32 0, i32 0
  %136 = load %struct.net_device*, %struct.net_device** %135, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 3
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %133, %129
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %152

142:                                              ; preds = %124
  %143 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %144 = call i64 @netif_msg_probe(%struct.spider_net_card* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %142
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %140, %100, %92
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_3__*, %struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @spider_net_setup_netdev_ops(%struct.net_device*) #1

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.TYPE_3__*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spider_net_set_mac(%struct.net_device*, %struct.sockaddr*) #1

declare dso_local i64 @netif_msg_probe(%struct.spider_net_card*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
