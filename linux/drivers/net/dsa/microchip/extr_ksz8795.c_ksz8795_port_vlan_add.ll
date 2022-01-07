; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_port_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_port_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32, i32, i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@P_TAG_CTRL = common dso_local global i32 0, align 4
@PORT_REMOVE_TAG = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@REG_PORT_CTRL_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @ksz8795_port_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_port_vlan_add(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ksz_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %6, align 8
  %15 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %16 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %21 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %20, i32 0, i32 0
  %22 = load %struct.ksz_device*, %struct.ksz_device** %21, align 8
  store %struct.ksz_device* %22, %struct.ksz_device** %8, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @P_TAG_CTRL, align 4
  %26 = load i32, i32* @PORT_REMOVE_TAG, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ksz_port_cfg(%struct.ksz_device* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %30 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %69, %3
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %35 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %32
  %39 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ksz8795_r_vlan_table(%struct.ksz_device* %39, i32 %40, i32* %9)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ksz8795_from_vlan(i32 %42, i32* %12, i32* %13, i32* %14)
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i32 1, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ksz8795_to_vlan(i32 %52, i32 %53, i32 %54, i32* %9)
  %56 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ksz8795_w_vlan_table(%struct.ksz_device* %56, i32 %57, i32 %58)
  %60 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %61 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %47
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %32

72:                                               ; preds = %32
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @REG_PORT_CTRL_VID, align 4
  %79 = call i32 @ksz_pread16(%struct.ksz_device* %76, i32 %77, i32 %78, i32* %10)
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 4095
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @REG_PORT_CTRL_VID, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @ksz_pwrite16(%struct.ksz_device* %85, i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %75, %72
  ret void
}

declare dso_local i32 @ksz_port_cfg(%struct.ksz_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ksz8795_r_vlan_table(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz8795_from_vlan(i32, i32*, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ksz8795_to_vlan(i32, i32, i32, i32*) #1

declare dso_local i32 @ksz8795_w_vlan_table(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz_pread16(%struct.ksz_device*, i32, i32, i32*) #1

declare dso_local i32 @ksz_pwrite16(%struct.ksz_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
