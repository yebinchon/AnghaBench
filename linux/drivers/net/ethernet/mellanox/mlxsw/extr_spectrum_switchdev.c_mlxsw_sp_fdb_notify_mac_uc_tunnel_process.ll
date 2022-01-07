; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_notify_mac_uc_tunnel_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_fdb_notify_mac_uc_tunnel_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@SWITCHDEV_FDB_ADD_TO_BRIDGE = common dso_local global i32 0, align 4
@SWITCHDEV_FDB_DEL_TO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, i8*, i32, i32)* @mlxsw_sp_fdb_notify_mac_uc_tunnel_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fdb_notify_mac_uc_tunnel_process(%struct.mlxsw_sp* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %union.mlxsw_sp_l3addr, align 4
  %13 = alloca %struct.mlxsw_sp_fid*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
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
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mlxsw_reg_sfn_uc_tunnel_unpack(i8* %26, i32 %27, i8* %25, i32* %16, i32* %19, i32* %9)
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_lookup_by_index(%struct.mlxsw_sp* %29, i32 %30)
  store %struct.mlxsw_sp_fid* %31, %struct.mlxsw_sp_fid** %13, align 8
  %32 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %33 = icmp ne %struct.mlxsw_sp_fid* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  br label %86

35:                                               ; preds = %4
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @mlxsw_sp_nve_learned_ip_resolve(%struct.mlxsw_sp* %36, i32 %37, i32 %38, %union.mlxsw_sp_l3addr* %12)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %83

43:                                               ; preds = %35
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %45 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @__mlxsw_sp_fdb_notify_mac_uc_tunnel_process(%struct.mlxsw_sp* %44, %struct.mlxsw_sp_fid* %45, i32 %46, %struct.net_device** %11, i32* %17, i32* %18)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %82

51:                                               ; preds = %43
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @mlxsw_sp_port_fdb_tunnel_uc_op(%struct.mlxsw_sp* %52, i8* %25, i32 %53, i32 %54, %union.mlxsw_sp_l3addr* %12, i32 %55, i32 1)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %81

60:                                               ; preds = %51
  %61 = load %struct.net_device*, %struct.net_device** %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mlxsw_sp_fdb_nve_call_notifiers(%struct.net_device* %61, i8* %25, i32 %62, %union.mlxsw_sp_l3addr* %12, i32 %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @SWITCHDEV_FDB_ADD_TO_BRIDGE, align 4
  br label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @SWITCHDEV_FDB_DEL_TO_BRIDGE, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @mlxsw_sp_fdb_call_notifiers(i32 %74, i8* %25, i32 %75, %struct.net_device* %76, i32 %77)
  %79 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %80 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %79)
  store i32 1, i32* %21, align 4
  br label %91

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %50
  br label %83

83:                                               ; preds = %82, %42
  %84 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %13, align 8
  %85 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %84)
  br label %86

86:                                               ; preds = %83, %34
  %87 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @mlxsw_sp_port_fdb_tunnel_uc_op(%struct.mlxsw_sp* %87, i8* %25, i32 %88, i32 %89, %union.mlxsw_sp_l3addr* %12, i32 0, i32 1)
  store i32 0, i32* %21, align 4
  br label %91

91:                                               ; preds = %86, %72
  %92 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %21, align 4
  switch i32 %93, label %95 [
    i32 0, label %94
    i32 1, label %94
  ]

94:                                               ; preds = %91, %91
  ret void

95:                                               ; preds = %91
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_sfn_uc_tunnel_unpack(i8*, i32, i8*, i32*, i32*, i32*) #2

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_lookup_by_index(%struct.mlxsw_sp*, i32) #2

declare dso_local i32 @mlxsw_sp_nve_learned_ip_resolve(%struct.mlxsw_sp*, i32, i32, %union.mlxsw_sp_l3addr*) #2

declare dso_local i32 @__mlxsw_sp_fdb_notify_mac_uc_tunnel_process(%struct.mlxsw_sp*, %struct.mlxsw_sp_fid*, i32, %struct.net_device**, i32*, i32*) #2

declare dso_local i32 @mlxsw_sp_port_fdb_tunnel_uc_op(%struct.mlxsw_sp*, i8*, i32, i32, %union.mlxsw_sp_l3addr*, i32, i32) #2

declare dso_local i32 @mlxsw_sp_fdb_nve_call_notifiers(%struct.net_device*, i8*, i32, %union.mlxsw_sp_l3addr*, i32, i32) #2

declare dso_local i32 @mlxsw_sp_fdb_call_notifiers(i32, i8*, i32, %struct.net_device*, i32) #2

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
