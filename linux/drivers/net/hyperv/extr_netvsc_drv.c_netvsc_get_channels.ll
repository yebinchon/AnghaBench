; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @netvsc_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.net_device_context*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %7)
  store %struct.net_device_context* %8, %struct.net_device_context** %5, align 8
  %9 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %10 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.netvsc_device* @rtnl_dereference(i32 %11)
  store %struct.netvsc_device* %12, %struct.netvsc_device** %6, align 8
  %13 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %14 = icmp ne %struct.netvsc_device* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %17 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %22 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %15, %2
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
