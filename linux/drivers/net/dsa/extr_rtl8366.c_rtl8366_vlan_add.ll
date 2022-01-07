; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.realtek_smi* }
%struct.realtek_smi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.realtek_smi*, i32)* }
%struct.switchdev_obj_port_vlan = type { i32, i32, i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"add VLAN on port %d, %s, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"untagged\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tagged\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" PVID\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"no PVID\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"port is DSA or CPU port\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"add VLAN %04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"could not lookup PVID for port %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to set up VLAN %04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8366_vlan_add(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.realtek_smi*, align 8
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
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %25 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %34 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %33, i32 0, i32 0
  %35 = load %struct.realtek_smi*, %struct.realtek_smi** %34, align 8
  store %struct.realtek_smi* %35, %struct.realtek_smi** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %36 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %37 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %57, %3
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %42 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %47 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.realtek_smi*, i32)*, i32 (%struct.realtek_smi*, i32)** %49, align 8
  %51 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 %50(%struct.realtek_smi* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %157

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %62 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %73 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %68, i8* %72)
  %74 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @dsa_is_dsa_port(%struct.dsa_switch* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %60
  %79 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %60
  %84 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %85 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %90 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %140, %88
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %6, align 8
  %95 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %93, %96
  br i1 %97, label %98, label %143

98:                                               ; preds = %92
  store i32 0, i32* %14, align 4
  %99 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %100 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @BIT(i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %98
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @BIT(i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %110, %98
  %116 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @rtl8366_get_pvid(%struct.realtek_smi* %116, i32 %117, i32* %14)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %123 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  br label %157

127:                                              ; preds = %115
  %128 = load i32, i32* %14, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @rtl8366_set_pvid(%struct.realtek_smi* %131, i32 %132, i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %157

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %127
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %92

143:                                              ; preds = %92
  %144 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @rtl8366_set_vlan(%struct.realtek_smi* %144, i32 %145, i32 %146, i32 %147, i32 0)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load %struct.realtek_smi*, %struct.realtek_smi** %9, align 8
  %153 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 (i32, i8*, ...) @dev_err(i32 %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %55, %121, %137, %151, %143
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i64 @dsa_is_dsa_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8366_get_pvid(%struct.realtek_smi*, i32, i32*) #1

declare dso_local i32 @rtl8366_set_pvid(%struct.realtek_smi*, i32, i32) #1

declare dso_local i32 @rtl8366_set_vlan(%struct.realtek_smi*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
