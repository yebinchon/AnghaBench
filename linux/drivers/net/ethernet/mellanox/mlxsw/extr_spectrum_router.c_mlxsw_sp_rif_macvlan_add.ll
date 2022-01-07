; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_macvlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_macvlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.macvlan_dev = type { i32 }
%struct.mlxsw_sp_rif = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp_rif*, i32)* }

@.str = private unnamed_addr constant [54 x i8] c"macvlan is only supported on top of router interfaces\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, %struct.netlink_ext_ack*)* @mlxsw_sp_rif_macvlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_macvlan_add(%struct.mlxsw_sp* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.macvlan_dev*, align 8
  %9 = alloca %struct.mlxsw_sp_rif*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %11)
  store %struct.macvlan_dev* %12, %struct.macvlan_dev** %8, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = load %struct.macvlan_dev*, %struct.macvlan_dev** %8, align 8
  %15 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %13, i32 %16)
  store %struct.mlxsw_sp_rif* %17, %struct.mlxsw_sp_rif** %9, align 8
  %18 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %19 = icmp ne %struct.mlxsw_sp_rif* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %22 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mlxsw_sp_fid_index(i32 %32)
  %34 = call i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp* %26, i32 %29, i32 %33, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %81

39:                                               ; preds = %25
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %41 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mlxsw_sp_rif_vrrp_op(%struct.mlxsw_sp* %40, i32 %43, i32 %46, i32 1)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %70

51:                                               ; preds = %39
  %52 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.mlxsw_sp_rif*, i32)*, i32 (%struct.mlxsw_sp_rif*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.mlxsw_sp_rif*, i32)* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.mlxsw_sp_rif*, i32)*, i32 (%struct.mlxsw_sp_rif*, i32)** %62, align 8
  %64 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %63(%struct.mlxsw_sp_rif* %64, i32 %67)
  br label %69

69:                                               ; preds = %58, %51
  store i32 0, i32* %4, align 4
  br label %81

70:                                               ; preds = %50
  %71 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %76 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mlxsw_sp_fid_index(i32 %77)
  %79 = call i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp* %71, i32 %74, i32 %78, i32 0)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %70, %69, %37, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_rif_fdb_op(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

declare dso_local i32 @mlxsw_sp_rif_vrrp_op(%struct.mlxsw_sp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
