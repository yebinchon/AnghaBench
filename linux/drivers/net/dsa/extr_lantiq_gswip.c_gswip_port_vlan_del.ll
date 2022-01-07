; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { i32 }
%struct.switchdev_obj_port_vlan = type { i32, i64, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@BRIDGE_VLAN_INFO_PVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @gswip_port_vlan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_port_vlan_del(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.gswip_priv*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %7, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 0
  %15 = load %struct.gswip_priv*, %struct.gswip_priv** %14, align 8
  store %struct.gswip_priv* %15, %struct.gswip_priv** %8, align 8
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch* %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %9, align 8
  %21 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %22 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BRIDGE_VLAN_INFO_PVID, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

31:                                               ; preds = %3
  %32 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %33 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %53, %31
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %38 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @gswip_vlan_remove(%struct.gswip_priv* %42, %struct.net_device* %43, i32 %44, i64 %45, i32 %46, i32 1)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %35

56:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50, %30
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @gswip_vlan_remove(%struct.gswip_priv*, %struct.net_device*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
