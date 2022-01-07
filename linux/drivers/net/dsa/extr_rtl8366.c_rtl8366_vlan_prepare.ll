; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_vlan_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366.c_rtl8366_vlan_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.realtek_smi* }
%struct.realtek_smi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.realtek_smi*, i64)* }
%struct.switchdev_obj_port_vlan = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"prepare VLANs %04x..%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_vlan_prepare(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.realtek_smi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %7, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.realtek_smi*, %struct.realtek_smi** %12, align 8
  store %struct.realtek_smi* %13, %struct.realtek_smi** %8, align 8
  %14 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %15 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %37, %3
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %20 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %25 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.realtek_smi*, i64)*, i32 (%struct.realtek_smi*, i64)** %27, align 8
  %29 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 %28(%struct.realtek_smi* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %58

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %42 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %45 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %48 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dev_info(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %49)
  %51 = load %struct.realtek_smi*, %struct.realtek_smi** %8, align 8
  %52 = call i32 @rtl8366_enable_vlan4k(%struct.realtek_smi* %51, i32 1)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %55, %33
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @dev_info(i32, i8*, i64, i64) #1

declare dso_local i32 @rtl8366_enable_vlan4k(%struct.realtek_smi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
