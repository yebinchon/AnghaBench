; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_notify_mac_lag_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_notify_mac_lag_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_port_vlan = type { i32, i32, %struct.mlxsw_sp_bridge_port* }
%struct.mlxsw_sp_bridge_port = type { i32, %struct.mlxsw_sp_bridge_device* }
%struct.mlxsw_sp_bridge_device = type { i64 }
%struct.mlxsw_sp_port = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot find port representor for LAG\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Failed to find a matching {Port, VID} following FDB notification\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"{Port, VID} not associated with a bridge\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to set FDB entry\0A\00", align 1
@SWITCHDEV_FDB_ADD_TO_BRIDGE = common dso_local global i32 0, align 4
@SWITCHDEV_FDB_DEL_TO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i8*, i32, i32)* @mlxsw_sp_fdb_notify_mac_lag_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fdb_notify_mac_lag_process(%struct.mlxsw_sp* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_port_vlan*, align 8
  %10 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %11 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %12 = alloca %struct.mlxsw_sp_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %20, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mlxsw_reg_sfn_mac_lag_unpack(i8* %27, i32 %28, i8* %26, i32* %19, i32* %17)
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %31 = load i32, i32* %17, align 4
  %32 = call %struct.mlxsw_sp_port* @mlxsw_sp_lag_rep_port(%struct.mlxsw_sp* %30, i32 %31)
  store %struct.mlxsw_sp_port* %32, %struct.mlxsw_sp_port** %12, align 8
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %34 = icmp ne %struct.mlxsw_sp_port* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %4
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err_ratelimited(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %133

42:                                               ; preds = %4
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %44 = load i32, i32* %19, align 4
  %45 = call i64 @mlxsw_sp_fid_is_dummy(%struct.mlxsw_sp* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %133

48:                                               ; preds = %42
  %49 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %50 = load i32, i32* %19, align 4
  %51 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_fid(%struct.mlxsw_sp_port* %49, i32 %50)
  store %struct.mlxsw_sp_port_vlan* %51, %struct.mlxsw_sp_port_vlan** %9, align 8
  %52 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %9, align 8
  %53 = icmp ne %struct.mlxsw_sp_port_vlan* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netdev_err(i32 %57, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %133

59:                                               ; preds = %48
  %60 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %9, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %60, i32 0, i32 2
  %62 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %61, align 8
  store %struct.mlxsw_sp_bridge_port* %62, %struct.mlxsw_sp_bridge_port** %11, align 8
  %63 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %64 = icmp ne %struct.mlxsw_sp_bridge_port* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netdev_err(i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %133

70:                                               ; preds = %59
  %71 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %72 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %71, i32 0, i32 1
  %73 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %72, align 8
  store %struct.mlxsw_sp_bridge_device* %73, %struct.mlxsw_sp_bridge_device** %10, align 8
  %74 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %9, align 8
  %80 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  br label %83

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i32 [ %81, %78 ], [ 0, %82 ]
  store i32 %84, i32* %18, align 4
  %85 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %9, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @mlxsw_sp_fid_lag_vid_valid(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %9, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %90
  %96 = phi i32 [ %93, %90 ], [ 0, %94 ]
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %133, %95
  %98 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @mlxsw_sp_port_fdb_uc_lag_op(%struct.mlxsw_sp* %98, i32 %99, i8* %26, i32 %100, i32 %101, i32 %102, i32 1)
  store i32 %103, i32* %21, align 4
  %104 = load i32, i32* %21, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %108 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_err_ratelimited(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %22, align 4
  br label %134

113:                                              ; preds = %97
  %114 = load i32, i32* %20, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store i32 1, i32* %22, align 4
  br label %134

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @SWITCHDEV_FDB_ADD_TO_BRIDGE, align 4
  br label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @SWITCHDEV_FDB_DEL_TO_BRIDGE, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %129 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @mlxsw_sp_fdb_call_notifiers(i32 %126, i8* %26, i32 %127, i32 %130, i32 %131)
  store i32 1, i32* %22, align 4
  br label %134

133:                                              ; preds = %65, %54, %47, %35
  store i32 0, i32* %8, align 4
  store i32 0, i32* %20, align 4
  br label %97

134:                                              ; preds = %124, %116, %106
  %135 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %135)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_sfn_mac_lag_unpack(i8*, i32, i8*, i32*, i32*) #2

declare dso_local %struct.mlxsw_sp_port* @mlxsw_sp_lag_rep_port(%struct.mlxsw_sp*, i32) #2

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #2

declare dso_local i64 @mlxsw_sp_fid_is_dummy(%struct.mlxsw_sp*, i32) #2

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_fid(%struct.mlxsw_sp_port*, i32) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i64 @mlxsw_sp_fid_lag_vid_valid(i32) #2

declare dso_local i32 @mlxsw_sp_port_fdb_uc_lag_op(%struct.mlxsw_sp*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_sp_fdb_call_notifiers(i32, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
