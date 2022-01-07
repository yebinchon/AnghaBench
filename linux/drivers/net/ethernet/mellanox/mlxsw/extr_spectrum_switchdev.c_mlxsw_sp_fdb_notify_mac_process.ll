; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_notify_mac_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_notify_mac_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__*, %struct.mlxsw_sp_port** }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_port_vlan = type { i32, %struct.mlxsw_sp_bridge_port* }
%struct.mlxsw_sp_bridge_port = type { i32, %struct.mlxsw_sp_bridge_device* }
%struct.mlxsw_sp_bridge_device = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Incorrect local port in FDB notification\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Failed to find a matching {Port, VID} following FDB notification\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"{Port, VID} not associated with a bridge\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to set FDB entry\0A\00", align 1
@SWITCHDEV_FDB_ADD_TO_BRIDGE = common dso_local global i32 0, align 4
@SWITCHDEV_FDB_DEL_TO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i8*, i32, i32)* @mlxsw_sp_fdb_notify_mac_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fdb_notify_mac_process(%struct.mlxsw_sp* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  store i32 1, i32* %19, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mlxsw_reg_sfn_mac_unpack(i8* %26, i32 %27, i8* %25, i32* %18, i64* %16)
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %29, i32 0, i32 1
  %31 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %30, align 8
  %32 = load i64, i64* %16, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %31, i64 %32
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %33, align 8
  store %struct.mlxsw_sp_port* %34, %struct.mlxsw_sp_port** %12, align 8
  %35 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %36 = icmp ne %struct.mlxsw_sp_port* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %4
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err_ratelimited(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %122

44:                                               ; preds = %4
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %46 = load i32, i32* %18, align 4
  %47 = call i64 @mlxsw_sp_fid_is_dummy(%struct.mlxsw_sp* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %122

50:                                               ; preds = %44
  %51 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_fid(%struct.mlxsw_sp_port* %51, i32 %52)
  store %struct.mlxsw_sp_port_vlan* %53, %struct.mlxsw_sp_port_vlan** %9, align 8
  %54 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %9, align 8
  %55 = icmp ne %struct.mlxsw_sp_port_vlan* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netdev_err(i32 %59, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %122

61:                                               ; preds = %50
  %62 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %9, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %62, i32 0, i32 1
  %64 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %63, align 8
  store %struct.mlxsw_sp_bridge_port* %64, %struct.mlxsw_sp_bridge_port** %11, align 8
  %65 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %66 = icmp ne %struct.mlxsw_sp_bridge_port* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %69 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netdev_err(i32 %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %122

72:                                               ; preds = %61
  %73 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %73, i32 0, i32 1
  %75 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %74, align 8
  store %struct.mlxsw_sp_bridge_device* %75, %struct.mlxsw_sp_bridge_device** %10, align 8
  %76 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.mlxsw_sp_port_vlan*, %struct.mlxsw_sp_port_vlan** %9, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, %struct.mlxsw_sp_port_vlan* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i32 [ %83, %80 ], [ 0, %84 ]
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %122, %85
  %88 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @mlxsw_sp_port_fdb_uc_op(%struct.mlxsw_sp* %88, i64 %89, i8* %25, i32 %90, i32 %91, i32 1)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %97 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err_ratelimited(i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %123

102:                                              ; preds = %87
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i32 1, i32* %21, align 4
  br label %123

106:                                              ; preds = %102
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @SWITCHDEV_FDB_ADD_TO_BRIDGE, align 4
  br label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @SWITCHDEV_FDB_DEL_TO_BRIDGE, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %11, align 8
  %118 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @mlxsw_sp_fdb_call_notifiers(i32 %115, i8* %25, i32 %116, i32 %119, i32 %120)
  store i32 1, i32* %21, align 4
  br label %123

122:                                              ; preds = %67, %56, %49, %37
  store i32 0, i32* %8, align 4
  store i32 0, i32* %19, align 4
  br label %87

123:                                              ; preds = %113, %105, %95
  %124 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %124)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_sfn_mac_unpack(i8*, i32, i8*, i32*, i64*) #2

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #2

declare dso_local i64 @mlxsw_sp_fid_is_dummy(%struct.mlxsw_sp*, i32) #2

declare dso_local %struct.mlxsw_sp_port_vlan* @mlxsw_sp_port_vlan_find_by_fid(%struct.mlxsw_sp_port*, i32) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i32 @mlxsw_sp_port_fdb_uc_op(%struct.mlxsw_sp*, i64, i8*, i32, i32, i32) #2

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
