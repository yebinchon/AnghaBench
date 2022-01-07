; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_bridge_8021q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_bridge_8021q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type opaque
%struct.bridge_vlan_info = type { i32 }

@BRIDGE_VLAN_INFO_BRENTRY = common dso_local global i32 0, align 4
@BRIDGE_VLAN_INFO_UNTAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net_device*, i8*, i64*)* @mlxsw_sp_span_entry_bridge_8021q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @mlxsw_sp_span_entry_bridge_8021q(%struct.net_device* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.bridge_vlan_info, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @br_vlan_get_pvid(%struct.net_device* %16, i64* %10)
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %63

21:                                               ; preds = %15, %3
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @br_vlan_get_info(%struct.net_device* %25, i64 %26, %struct.bridge_vlan_info* %8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BRIDGE_VLAN_INFO_BRENTRY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %24, %21
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %63

36:                                               ; preds = %29
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call %struct.net_device* @br_fdb_find_port(%struct.net_device* %37, i8* %38, i64 %39)
  store %struct.net_device* %40, %struct.net_device** %9, align 8
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  %42 = icmp ne %struct.net_device* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %63

44:                                               ; preds = %36
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @br_vlan_get_info(%struct.net_device* %45, i64 %46, %struct.bridge_vlan_info* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %63

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.bridge_vlan_info, %struct.bridge_vlan_info* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BRIDGE_VLAN_INFO_UNTAGGED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64*, i64** %7, align 8
  store i64 0, i64* %57, align 8
  br label %61

58:                                               ; preds = %50
  %59 = load i64, i64* %10, align 8
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %56
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %62, %struct.net_device** %4, align 8
  br label %63

63:                                               ; preds = %61, %49, %43, %35, %20
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %64
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @br_vlan_get_pvid(%struct.net_device*, i64*) #1

declare dso_local i64 @br_vlan_get_info(%struct.net_device*, i64, %struct.bridge_vlan_info*) #1

declare dso_local %struct.net_device* @br_fdb_find_port(%struct.net_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
