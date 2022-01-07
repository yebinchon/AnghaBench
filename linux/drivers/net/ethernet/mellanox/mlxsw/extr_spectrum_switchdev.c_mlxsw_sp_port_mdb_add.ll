; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_mdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_mdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.net_device*, %struct.mlxsw_sp* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.switchdev_obj_port_mdb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.switchdev_trans = type { i32 }
%struct.mlxsw_sp_port_vlan = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.mlxsw_sp_bridge_port = type { i64, %struct.mlxsw_sp_bridge_device* }
%struct.mlxsw_sp_mid = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unable to allocate MC group\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unable to set SMID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.switchdev_obj_port_mdb*, %struct.switchdev_trans*)* @mlxsw_sp_port_mdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_mdb_add(%struct.mlxsw_sp_port* %0, %struct.switchdev_obj_port_mdb* %1, %struct.switchdev_trans* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.switchdev_obj_port_mdb*, align 8
  %7 = alloca %struct.switchdev_trans*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %13 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %14 = alloca %struct.mlxsw_sp_mid*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.switchdev_obj_port_mdb* %1, %struct.switchdev_obj_port_mdb** %6, align 8
  store %struct.switchdev_trans* %2, %struct.switchdev_trans** %7, align 8
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %17, i32 0, i32 2
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %18, align 8
  store %struct.mlxsw_sp* %19, %struct.mlxsw_sp** %8, align 8
  %20 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %21 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %9, align 8
  %24 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %24, i32 0, i32 1
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %11, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.switchdev_trans*, %struct.switchdev_trans** %7, align 8
  %28 = call i64 @switchdev_trans_ph_commit(%struct.switchdev_trans* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

31:                                               ; preds = %3
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32 %34, %struct.net_device* %35)
  store %struct.mlxsw_sp_bridge_port* %36, %struct.mlxsw_sp_bridge_port** %13, align 8
  %37 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %13, align 8
  %38 = icmp ne %struct.mlxsw_sp_bridge_port* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %118

40:                                               ; preds = %31
  %41 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %13, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %41, i32 0, i32 1
  %43 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %42, align 8
  store %struct.mlxsw_sp_bridge_device* %43, %struct.mlxsw_sp_bridge_device** %12, align 8
  %44 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %45 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %12, align 8
  %46 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %47 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_bridge(%struct.mlxsw_sp_port* %44, %struct.mlxsw_sp_bridge_device* %45, i32 %48)
  store %struct.mlxsw_sp_port_vlan* %49, %struct.mlxsw_sp_port_vlan** %10, align 8
  %50 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %51 = icmp ne %struct.mlxsw_sp_port_vlan* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %118

53:                                               ; preds = %40
  %54 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %10, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlxsw_sp_fid_index(i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %12, align 8
  %59 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %60 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call %struct.mlxsw_sp_mid* @__mlxsw_sp_mc_get(%struct.mlxsw_sp_bridge_device* %58, i32 %61, i32 %62)
  store %struct.mlxsw_sp_mid* %63, %struct.mlxsw_sp_mid** %14, align 8
  %64 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %14, align 8
  %65 = icmp ne %struct.mlxsw_sp_mid* %64, null
  br i1 %65, label %82, label %66

66:                                               ; preds = %53
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %68 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %12, align 8
  %69 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %70 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = call %struct.mlxsw_sp_mid* @__mlxsw_sp_mc_alloc(%struct.mlxsw_sp* %67, %struct.mlxsw_sp_bridge_device* %68, i32 %71, i32 %72)
  store %struct.mlxsw_sp_mid* %73, %struct.mlxsw_sp_mid** %14, align 8
  %74 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %14, align 8
  %75 = icmp ne %struct.mlxsw_sp_mid* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %66
  %77 = load %struct.net_device*, %struct.net_device** %11, align 8
  %78 = call i32 @netdev_err(%struct.net_device* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %118

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %53
  %83 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %14, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @set_bit(i32 %85, i32 %88)
  %90 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %12, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %118

95:                                               ; preds = %82
  %96 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %13, align 8
  %97 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %118

101:                                              ; preds = %95
  %102 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %103 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %14, align 8
  %104 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mlxsw_sp_port_smid_set(%struct.mlxsw_sp_port* %102, i32 %105, i32 1)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load %struct.net_device*, %struct.net_device** %11, align 8
  %111 = call i32 @netdev_err(%struct.net_device* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %113

112:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %118

113:                                              ; preds = %109
  %114 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %115 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %14, align 8
  %116 = call i32 @mlxsw_sp_port_remove_from_mid(%struct.mlxsw_sp_port* %114, %struct.mlxsw_sp_mid* %115)
  %117 = load i32, i32* %16, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %112, %100, %94, %76, %52, %39, %30
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @switchdev_trans_ph_commit(%struct.switchdev_trans*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(i32, %struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_bridge(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_bridge_device*, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

declare dso_local %struct.mlxsw_sp_mid* @__mlxsw_sp_mc_get(%struct.mlxsw_sp_bridge_device*, i32, i32) #1

declare dso_local %struct.mlxsw_sp_mid* @__mlxsw_sp_mc_alloc(%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_device*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_smid_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_remove_from_mid(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_mid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
