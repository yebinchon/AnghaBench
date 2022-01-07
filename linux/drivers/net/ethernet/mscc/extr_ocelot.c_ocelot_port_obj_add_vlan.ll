; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_obj_add_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_obj_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj_port_vlan = type { i64, i64, i32 }
%struct.switchdev_trans = type { i32 }

@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.switchdev_obj_port_vlan*, %struct.switchdev_trans*)* @ocelot_port_obj_add_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_port_obj_add_vlan(%struct.net_device* %0, %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_obj_port_vlan** %6, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %10 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %11 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %38, %3
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %16 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %23 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %28 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @ocelot_vlan_vid_add(%struct.net_device* %20, i64 %21, i32 %26, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %42

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %13

41:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @ocelot_vlan_vid_add(%struct.net_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
