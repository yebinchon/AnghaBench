; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.veth_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.list_head*)* @veth_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_dellink(%struct.net_device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.veth_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.veth_priv* %8, %struct.veth_priv** %5, align 8
  %9 = load %struct.veth_priv*, %struct.veth_priv** %5, align 8
  %10 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net_device* @rtnl_dereference(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.veth_priv*, %struct.veth_priv** %5, align 8
  %14 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @RCU_INIT_POINTER(i32 %15, i32* null)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = load %struct.list_head*, %struct.list_head** %4, align 8
  %19 = call i32 @unregister_netdevice_queue(%struct.net_device* %17, %struct.list_head* %18)
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %23)
  store %struct.veth_priv* %24, %struct.veth_priv** %5, align 8
  %25 = load %struct.veth_priv*, %struct.veth_priv** %5, align 8
  %26 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RCU_INIT_POINTER(i32 %27, i32* null)
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = load %struct.list_head*, %struct.list_head** %4, align 8
  %31 = call i32 @unregister_netdevice_queue(%struct.net_device* %29, %struct.list_head* %30)
  br label %32

32:                                               ; preds = %22, %2
  ret void
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
