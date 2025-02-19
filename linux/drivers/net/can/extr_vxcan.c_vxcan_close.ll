; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_vxcan.c_vxcan_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_vxcan.c_vxcan_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxcan_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vxcan_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxcan_close(%struct.net_device* %0) #0 {
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
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_carrier_off(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_carrier_off(%struct.net_device* %16)
  br label %18

18:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local %struct.vxcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
