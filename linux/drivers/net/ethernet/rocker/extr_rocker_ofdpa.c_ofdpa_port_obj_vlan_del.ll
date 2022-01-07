; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_obj_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_obj_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.ofdpa_port* }
%struct.ofdpa_port = type { i32 }
%struct.switchdev_obj_port_vlan = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.switchdev_obj_port_vlan*)* @ofdpa_port_obj_vlan_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_obj_vlan_del(%struct.rocker_port* %0, %struct.switchdev_obj_port_vlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker_port*, align 8
  %5 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %6 = alloca %struct.ofdpa_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %4, align 8
  store %struct.switchdev_obj_port_vlan* %1, %struct.switchdev_obj_port_vlan** %5, align 8
  %9 = load %struct.rocker_port*, %struct.rocker_port** %4, align 8
  %10 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %9, i32 0, i32 0
  %11 = load %struct.ofdpa_port*, %struct.ofdpa_port** %10, align 8
  store %struct.ofdpa_port* %11, %struct.ofdpa_port** %6, align 8
  %12 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %13 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %33, %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %18 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %5, align 8
  %25 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ofdpa_port_vlan_del(%struct.ofdpa_port* %22, i64 %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %15

36:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ofdpa_port_vlan_del(%struct.ofdpa_port*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
