; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.h_mlxsw_sp_vxlan_mapped_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.h_mlxsw_sp_vxlan_mapped_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bridge_vlan_info = type { i32 }

@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*)* @mlxsw_sp_vxlan_mapped_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_vxlan_mapped_vid(%struct.net_device* %0, i64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.bridge_vlan_info, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @br_vlan_get_pvid(%struct.net_device* %8, i64* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  br label %30

16:                                               ; preds = %12
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @br_vlan_get_info(%struct.net_device* %17, i64 %18, %struct.bridge_vlan_info* %5)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %16
  store i64 0, i64* %6, align 8
  br label %29

29:                                               ; preds = %28, %22
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i64, i64* %6, align 8
  %32 = load i64*, i64** %4, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @br_vlan_get_pvid(%struct.net_device*, i64*) #1

declare dso_local i32 @br_vlan_get_info(%struct.net_device*, i64, %struct.bridge_vlan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
