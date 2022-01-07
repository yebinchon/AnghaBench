; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.list_head*)* @vxlan_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_dellink(%struct.net_device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.vxlan_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %6)
  store %struct.vxlan_dev* %7, %struct.vxlan_dev** %5, align 8
  %8 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %9 = call i32 @vxlan_flush(%struct.vxlan_dev* %8, i32 1)
  %10 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %11 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %10, i32 0, i32 1
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = load %struct.list_head*, %struct.list_head** %4, align 8
  %15 = call i32 @unregister_netdevice_queue(%struct.net_device* %13, %struct.list_head* %14)
  %16 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %17 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %23 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @netdev_upper_dev_unlink(i64 %25, %struct.net_device* %26)
  br label %28

28:                                               ; preds = %21, %2
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxlan_flush(%struct.vxlan_dev*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @netdev_upper_dev_unlink(i64, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
