; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.realtek_smi* }
%struct.realtek_smi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_mc*)* }
%struct.rtl8366_vlan_mc = type { i64, i64, i64, i64, i64 }
%struct.switchdev_obj_port_vlan = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"del VLAN on port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"del VLAN %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to remove VLAN %04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_vlan_del(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.realtek_smi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtl8366_vlan_mc, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %7, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 0
  %15 = load %struct.realtek_smi*, %struct.realtek_smi** %14, align 8
  store %struct.realtek_smi* %15, %struct.realtek_smi** %8, align 8
  %16 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %17 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32 @dev_info(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %23 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %90, %3
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %28 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %25
  %32 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %33 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @dev_info(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %86, %31
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %40 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %37
  %44 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %45 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_mc*)** %47, align 8
  %49 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 %48(%struct.realtek_smi* %49, i32 %50, %struct.rtl8366_vlan_mc* %12)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %94

56:                                               ; preds = %43
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %12, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %12, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %12, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %12, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %12, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.rtl8366_vlan_mc, %struct.rtl8366_vlan_mc* %12, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %68 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_mc*)*, i32 (%struct.realtek_smi*, i32, %struct.rtl8366_vlan_mc*)** %70, align 8
  %72 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 %71(%struct.realtek_smi* %72, i32 %73, %struct.rtl8366_vlan_mc* %12)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %61
  %78 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %79 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %94

84:                                               ; preds = %61
  br label %89

85:                                               ; preds = %56
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %37

89:                                               ; preds = %84, %37
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %9, align 8
  br label %25

93:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %77, %54
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
