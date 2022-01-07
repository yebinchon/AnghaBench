; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32, i64, i64 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNMODIFIED = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNTAGGED = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_TAGGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"p%d: failed to add VLAN %d%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"p%d: failed to set PVID %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @mv88e6xxx_port_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_port_vlan_add(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %6, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 1
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %13, align 8
  store %struct.mv88e6xxx_chip* %14, %struct.mv88e6xxx_chip** %7, align 8
  %15 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %16 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %21 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %26 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %109

32:                                               ; preds = %3
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @dsa_is_dsa_port(%struct.dsa_switch* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNMODIFIED, align 4
  store i32 %43, i32* %10, align 4
  br label %52

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNTAGGED, align 4
  store i32 %48, i32* %10, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_TAGGED, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %54 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %53)
  %55 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %56 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %83, %52
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %61 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %59, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @mv88e6xxx_port_vlan_join(%struct.mv88e6xxx_chip* %65, i32 %66, i64 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %73 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 117, i32 116
  %81 = call i32 (i32, i8*, i32, i64, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %76, i32 %80)
  br label %82

82:                                               ; preds = %71, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %11, align 8
  br label %58

86:                                               ; preds = %58
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %86
  %90 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %93 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @mv88e6xxx_port_set_pvid(%struct.mv88e6xxx_chip* %90, i32 %91, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %99 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %103 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i32, i8*, i32, i64, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %101, i64 %104)
  br label %106

106:                                              ; preds = %97, %89, %86
  %107 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %108 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %107)
  br label %109

109:                                              ; preds = %106, %31
  ret void
}

declare dso_local i64 @dsa_is_dsa_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i64 @mv88e6xxx_port_vlan_join(%struct.mv88e6xxx_chip*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @mv88e6xxx_port_set_pvid(%struct.mv88e6xxx_chip*, i32, i64) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
