; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_nway_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.TYPE_6__*, %struct.ice_port_info* }
%struct.TYPE_6__ = type { i32 }
%struct.ice_port_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__ICE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"link restart failed, err %d aq_err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ice_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ice_netdev_priv*, align 8
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca %struct.ice_port_info*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ice_netdev_priv* %9, %struct.ice_netdev_priv** %4, align 8
  %10 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %10, i32 0, i32 0
  %12 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  store %struct.ice_vsi* %12, %struct.ice_vsi** %5, align 8
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 1
  %15 = load %struct.ice_port_info*, %struct.ice_port_info** %14, align 8
  store %struct.ice_port_info* %15, %struct.ice_port_info** %6, align 8
  %16 = load i32, i32* @__ICE_DOWN, align 4
  %17 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %18 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %16, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %26 = call i32 @ice_aq_set_link_restart_an(%struct.ice_port_info* %25, i32 1, i32* null)
  store i32 %26, i32* %7, align 4
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %29 = call i32 @ice_aq_set_link_restart_an(%struct.ice_port_info* %28, i32 0, i32* null)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %37 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netdev_info(%struct.net_device* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_aq_set_link_restart_an(%struct.ice_port_info*, i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
