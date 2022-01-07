; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_fid_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_8021d_fid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32 }
%struct.mlxsw_sp_bridge_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_fid* (%struct.mlxsw_sp_bridge_device*, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_bridge_8021d_fid_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_fid* @mlxsw_sp_bridge_8021d_fid_get(%struct.mlxsw_sp_bridge_device* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mlxsw_sp_fid*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_bridge_device* %0, %struct.mlxsw_sp_bridge_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %5, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.TYPE_3__* %14)
  store %struct.mlxsw_sp* %15, %struct.mlxsw_sp** %8, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %17 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021d_get(%struct.mlxsw_sp* %16, i32 %21)
  store %struct.mlxsw_sp_fid* %22, %struct.mlxsw_sp_fid** %10, align 8
  %23 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %24 = call i64 @IS_ERR(%struct.mlxsw_sp_fid* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %27, %struct.mlxsw_sp_fid** %4, align 8
  br label %64

28:                                               ; preds = %3
  %29 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %30 = call i64 @mlxsw_sp_fid_vni_is_set(%struct.mlxsw_sp_fid* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %33, %struct.mlxsw_sp_fid** %4, align 8
  br label %64

34:                                               ; preds = %28
  %35 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %5, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call %struct.net_device* @mlxsw_sp_bridge_vxlan_dev_find(%struct.TYPE_3__* %37)
  store %struct.net_device* %38, %struct.net_device** %9, align 8
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %42, %struct.mlxsw_sp_fid** %4, align 8
  br label %64

43:                                               ; preds = %34
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = call i32 @netif_running(%struct.net_device* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %48, %struct.mlxsw_sp_fid** %4, align 8
  br label %64

49:                                               ; preds = %43
  %50 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %5, align 8
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %53 = call i32 @mlxsw_sp_bridge_8021d_vxlan_join(%struct.mlxsw_sp_bridge_device* %50, %struct.net_device* %51, i32 0, %struct.netlink_ext_ack* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %59

57:                                               ; preds = %49
  %58 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  store %struct.mlxsw_sp_fid* %58, %struct.mlxsw_sp_fid** %4, align 8
  br label %64

59:                                               ; preds = %56
  %60 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %10, align 8
  %61 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %60)
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.mlxsw_sp_fid* @ERR_PTR(i32 %62)
  store %struct.mlxsw_sp_fid* %63, %struct.mlxsw_sp_fid** %4, align 8
  br label %64

64:                                               ; preds = %59, %57, %47, %41, %32, %26
  %65 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  ret %struct.mlxsw_sp_fid* %65
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.TYPE_3__*) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_8021d_get(%struct.mlxsw_sp*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_fid*) #1

declare dso_local i64 @mlxsw_sp_fid_vni_is_set(%struct.mlxsw_sp_fid*) #1

declare dso_local %struct.net_device* @mlxsw_sp_bridge_vxlan_dev_find(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_8021d_vxlan_join(%struct.mlxsw_sp_bridge_device*, %struct.net_device*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

declare dso_local %struct.mlxsw_sp_fid* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
