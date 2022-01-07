; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.sja1105_private* }
%struct.sja1105_private = type { i32 }
%struct.switchdev_obj_port_vlan = type { i64, i64, i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to remove VLAN %d from port %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @sja1105_vlan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_vlan_del(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.sja1105_private*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %7, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 1
  %13 = load %struct.sja1105_private*, %struct.sja1105_private** %12, align 8
  store %struct.sja1105_private* %13, %struct.sja1105_private** %8, align 8
  %14 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %15 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %45, %3
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %20 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %18, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %28 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @sja1105_vlan_apply(%struct.sja1105_private* %24, i32 %25, i64 %26, i32 0, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %23
  %36 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %37 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %9, align 8
  br label %17

48:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @sja1105_vlan_apply(%struct.sja1105_private*, i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
