; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.sja1105_private* }
%struct.sja1105_private = type { i32 }
%struct.switchdev_obj_port_vlan = type { i64, i64, i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to add VLAN %d to port %d: %d\0A\00", align 1
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to set pvid %d on port %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @sja1105_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_vlan_add(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %7 = alloca %struct.sja1105_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %6, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 1
  %12 = load %struct.sja1105_private*, %struct.sja1105_private** %11, align 8
  store %struct.sja1105_private* %12, %struct.sja1105_private** %7, align 8
  %13 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %14 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %68, %3
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %19 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %16
  %23 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %27 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @sja1105_vlan_apply(%struct.sja1105_private* %23, i32 %24, i64 %25, i32 1, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %36 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %39, i32 %40)
  br label %71

42:                                               ; preds = %22
  %43 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %44 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %51 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %50, i32 0, i32 1
  %52 = load %struct.sja1105_private*, %struct.sja1105_private** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @sja1105_pvid_apply(%struct.sja1105_private* %52, i32 %53, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %60 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 %63, i32 %64)
  br label %71

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %16

71:                                               ; preds = %34, %58, %16
  ret void
}

declare dso_local i32 @sja1105_vlan_apply(%struct.sja1105_private*, i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @sja1105_pvid_apply(%struct.sja1105_private*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
