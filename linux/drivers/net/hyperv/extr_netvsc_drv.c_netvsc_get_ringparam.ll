; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @netvsc_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.net_device_context*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
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
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %19 = call i32 @__netvsc_get_ringparam(%struct.netvsc_device* %17, %struct.ethtool_ringparam* %18)
  br label %20

20:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local i32 @__netvsc_get_ringparam(%struct.netvsc_device*, %struct.ethtool_ringparam*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
