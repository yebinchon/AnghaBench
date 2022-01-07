; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_uart.c_qca_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_uart.c_qca_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.qcauart = type { i32, %struct.net_device*, i32, i32, %struct.serdev_device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"qca_uart: Fail to retrieve private structure\0A\00", align 1
@qcauart_transmit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Using random MAC address: %pM\0A\00", align 1
@qca_serdev_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to open device %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Using baudrate: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to register net device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @qca_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_uart_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.qcauart*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %9 = call %struct.net_device* @alloc_etherdev(i32 32)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  store i32 115200, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %141

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @qcauart_netdev_setup(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %20 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %19, i32 0, i32 0
  %21 = call i32 @SET_NETDEV_DEV(%struct.net_device* %18, %struct.TYPE_4__* %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call %struct.qcauart* @netdev_priv(%struct.net_device* %22)
  store %struct.qcauart* %23, %struct.qcauart** %5, align 8
  %24 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %25 = icmp ne %struct.qcauart* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %137

30:                                               ; preds = %15
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %33 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %32, i32 0, i32 1
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %35 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %36 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %35, i32 0, i32 4
  store %struct.serdev_device* %34, %struct.serdev_device** %36, align 8
  %37 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %38 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %37, i32 0, i32 3
  %39 = call i32 @qcafrm_fsm_init_uart(i32* %38)
  %40 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %41 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %44 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %43, i32 0, i32 0
  %45 = load i32, i32* @qcauart_transmit, align 4
  %46 = call i32 @INIT_WORK(i32* %44, i32 %45)
  %47 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %48 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @of_property_read_u32(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %52 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %53 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @of_get_mac_address(i32 %55)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @IS_ERR(i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %30
  %61 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %62 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %61, i32 0, i32 1
  %63 = load %struct.net_device*, %struct.net_device** %62, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @ether_addr_copy(i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %60, %30
  %69 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %70 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %69, i32 0, i32 1
  %71 = load %struct.net_device*, %struct.net_device** %70, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @is_valid_ether_addr(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %68
  %77 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %78 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %77, i32 0, i32 1
  %79 = load %struct.net_device*, %struct.net_device** %78, align 8
  %80 = call i32 @eth_hw_addr_random(%struct.net_device* %79)
  %81 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %82 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %81, i32 0, i32 0
  %83 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %84 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %83, i32 0, i32 1
  %85 = load %struct.net_device*, %struct.net_device** %84, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(%struct.TYPE_4__* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %76, %68
  %90 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %91 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %90, i32 0, i32 1
  %92 = load %struct.net_device*, %struct.net_device** %91, align 8
  %93 = call i32 @netif_carrier_on(%struct.net_device* %92)
  %94 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %95 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %96 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %94, %struct.qcauart* %95)
  %97 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %98 = call i32 @serdev_device_set_client_ops(%struct.serdev_device* %97, i32* @qca_serdev_ops)
  %99 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %100 = call i32 @serdev_device_open(%struct.serdev_device* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %89
  %104 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %105 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %104, i32 0, i32 0
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(%struct.TYPE_4__* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %137

110:                                              ; preds = %89
  %111 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @serdev_device_set_baudrate(%struct.serdev_device* %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %115 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %114, i32 0, i32 0
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @dev_info(%struct.TYPE_4__* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %119 = call i32 @serdev_device_set_flow_control(%struct.serdev_device* %118, i32 0)
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = call i32 @register_netdev(%struct.net_device* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %110
  %125 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %126 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %125, i32 0, i32 0
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dev_err(%struct.TYPE_4__* %126, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %132 = call i32 @serdev_device_close(%struct.serdev_device* %131)
  %133 = load %struct.qcauart*, %struct.qcauart** %5, align 8
  %134 = getelementptr inbounds %struct.qcauart, %struct.qcauart* %133, i32 0, i32 0
  %135 = call i32 @cancel_work_sync(i32* %134)
  br label %137

136:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %141

137:                                              ; preds = %124, %103, %26
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = call i32 @free_netdev(%struct.net_device* %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %137, %136, %12
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @qcauart_netdev_setup(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_4__*) #1

declare dso_local %struct.qcauart* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @qcafrm_fsm_init_uart(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i8* @of_get_mac_address(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.qcauart*) #1

declare dso_local i32 @serdev_device_set_client_ops(%struct.serdev_device*, i32*) #1

declare dso_local i32 @serdev_device_open(%struct.serdev_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @serdev_device_set_baudrate(%struct.serdev_device*, i32) #1

declare dso_local i32 @serdev_device_set_flow_control(%struct.serdev_device*, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @serdev_device_close(%struct.serdev_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
