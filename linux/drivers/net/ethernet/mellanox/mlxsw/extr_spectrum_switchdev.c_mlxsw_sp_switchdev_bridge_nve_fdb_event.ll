; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_bridge_nve_fdb_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_bridge_nve_fdb_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_switchdev_event_work = type { i64, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32)* }
%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp = type { i32 }

@SWITCHDEV_FDB_ADD_TO_DEVICE = common dso_local global i64 0, align 8
@SWITCHDEV_FDB_DEL_TO_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_switchdev_event_work*)* @mlxsw_sp_switchdev_bridge_nve_fdb_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_switchdev_bridge_nve_fdb_event(%struct.mlxsw_sp_switchdev_event_work* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_switchdev_event_work*, align 8
  %3 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_switchdev_event_work* %0, %struct.mlxsw_sp_switchdev_event_work** %2, align 8
  %10 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SWITCHDEV_FDB_ADD_TO_DEVICE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %2, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SWITCHDEV_FDB_DEL_TO_DEVICE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %99

25:                                               ; preds = %18, %1
  %26 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %2, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SWITCHDEV_FDB_ADD_TO_DEVICE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %2, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %99

38:                                               ; preds = %31, %25
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @netif_running(%struct.net_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %99

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %44)
  store %struct.net_device* %45, %struct.net_device** %5, align 8
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = icmp ne %struct.net_device* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %99

49:                                               ; preds = %43
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = call i32 @netif_is_bridge_master(%struct.net_device* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %99

54:                                               ; preds = %49
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %55)
  store %struct.mlxsw_sp* %56, %struct.mlxsw_sp** %6, align 8
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %58 = icmp ne %struct.mlxsw_sp* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %99

60:                                               ; preds = %54
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %62 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32 %63, %struct.net_device* %64)
  store %struct.mlxsw_sp_bridge_device* %65, %struct.mlxsw_sp_bridge_device** %3, align 8
  %66 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %3, align 8
  %67 = icmp ne %struct.mlxsw_sp_bridge_device* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %99

69:                                               ; preds = %60
  %70 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %3, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32)*, %struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32)** %73, align 8
  %75 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %3, align 8
  %76 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %2, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_switchdev_event_work, %struct.mlxsw_sp_switchdev_event_work* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.mlxsw_sp_fid* %74(%struct.mlxsw_sp_bridge_device* %75, i32 %79)
  store %struct.mlxsw_sp_fid* %80, %struct.mlxsw_sp_fid** %7, align 8
  %81 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %82 = icmp ne %struct.mlxsw_sp_fid* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %69
  br label %99

84:                                               ; preds = %69
  %85 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %86 = call i32 @mlxsw_sp_fid_vni(%struct.mlxsw_sp_fid* %85, i32* %8)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %96

90:                                               ; preds = %84
  %91 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %92 = load %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_switchdev_event_work** %2, align 8
  %93 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @mlxsw_sp_switchdev_bridge_vxlan_fdb_event(%struct.mlxsw_sp* %91, %struct.mlxsw_sp_switchdev_event_work* %92, %struct.mlxsw_sp_fid* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %89
  %97 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %98 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %97)
  br label %99

99:                                               ; preds = %96, %83, %68, %59, %53, %48, %42, %37, %24
  ret void
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local i32 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_find(i32, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_fid_vni(%struct.mlxsw_sp_fid*, i32*) #1

declare dso_local i32 @mlxsw_sp_switchdev_bridge_vxlan_fdb_event(%struct.mlxsw_sp*, %struct.mlxsw_sp_switchdev_event_work*, %struct.mlxsw_sp_fid*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
