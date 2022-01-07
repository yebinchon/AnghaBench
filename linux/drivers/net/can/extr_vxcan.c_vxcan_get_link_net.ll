; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_vxcan.c_vxcan_get_link_net.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_vxcan.c_vxcan_get_link_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type opaque
%struct.vxcan_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net* (%struct.net_device*)* @vxcan_get_link_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net* @vxcan_get_link_net(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vxcan_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.vxcan_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.vxcan_priv* %6, %struct.vxcan_priv** %3, align 8
  %7 = load %struct.vxcan_priv*, %struct.vxcan_priv** %3, align 8
  %8 = getelementptr inbounds %struct.vxcan_priv, %struct.vxcan_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.net_device* @rtnl_dereference(i32 %9)
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.net* @dev_net(%struct.net_device* %14)
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call %struct.net* @dev_net(%struct.net_device* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi %struct.net* [ %15, %13 ], [ %18, %16 ]
  ret %struct.net* %20
}

declare dso_local %struct.vxcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
