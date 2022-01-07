; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.virtnet_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@VIRTIO_NET_CTRL_VLAN = common dso_local global i32 0, align 4
@VIRTIO_NET_CTRL_VLAN_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to kill VLAN ID %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @virtnet_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtnet_info*, align 8
  %8 = alloca %struct.scatterlist, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %9)
  store %struct.virtnet_info* %10, %struct.virtnet_info** %7, align 8
  %11 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %12 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cpu_to_virtio16(i32 %13, i32 %14)
  %16 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %17 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %21 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @sg_init_one(%struct.scatterlist* %8, i32* %23, i32 4)
  %25 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %26 = load i32, i32* @VIRTIO_NET_CTRL_VLAN, align 4
  %27 = load i32, i32* @VIRTIO_NET_CTRL_VLAN_DEL, align 4
  %28 = call i32 @virtnet_send_command(%struct.virtnet_info* %25, i32 %26, i32 %27, %struct.scatterlist* %8)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %3
  ret i32 0
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_virtio16(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @virtnet_send_command(%struct.virtnet_info*, i32, i32, %struct.scatterlist*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
