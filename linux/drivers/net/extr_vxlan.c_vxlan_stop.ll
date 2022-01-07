; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxlan_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_net = type { i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vxlan_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vxlan_dev*, align 8
  %4 = alloca %struct.vxlan_net*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %6)
  store %struct.vxlan_dev* %7, %struct.vxlan_dev** %3, align 8
  %8 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @vxlan_net_id, align 4
  %12 = call %struct.vxlan_net* @net_generic(i32 %10, i32 %11)
  store %struct.vxlan_net* %12, %struct.vxlan_net** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %14 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @vxlan_addr_multicast(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.vxlan_net*, %struct.vxlan_net** %4, align 8
  %20 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %21 = call i32 @vxlan_group_used(%struct.vxlan_net* %19, %struct.vxlan_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %25 = call i32 @vxlan_igmp_leave(%struct.vxlan_dev* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %18, %1
  %27 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %28 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %27, i32 0, i32 0
  %29 = call i32 @del_timer_sync(i32* %28)
  %30 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %31 = call i32 @vxlan_flush(%struct.vxlan_dev* %30, i32 0)
  %32 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %33 = call i32 @vxlan_sock_release(%struct.vxlan_dev* %32)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.vxlan_net* @net_generic(i32, i32) #1

declare dso_local i64 @vxlan_addr_multicast(i32*) #1

declare dso_local i32 @vxlan_group_used(%struct.vxlan_net*, %struct.vxlan_dev*) #1

declare dso_local i32 @vxlan_igmp_leave(%struct.vxlan_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @vxlan_flush(%struct.vxlan_dev*, i32) #1

declare dso_local i32 @vxlan_sock_release(%struct.vxlan_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
