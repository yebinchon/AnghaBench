; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_get_route_and_out_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_tc_tun.c_get_route_and_out_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }
%struct.net_device = type { i32 }

@REP_ETH = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.net_device*, %struct.net_device**, %struct.net_device**)* @get_route_and_out_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_route_and_out_devs(%struct.mlx5e_priv* %0, %struct.net_device* %1, %struct.net_device** %2, %struct.net_device** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device**, align 8
  %9 = alloca %struct.net_device**, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.mlx5_eswitch*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.net_device** %2, %struct.net_device*** %8, align 8
  store %struct.net_device** %3, %struct.net_device*** %9, align 8
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %19, align 8
  store %struct.mlx5_eswitch* %20, %struct.mlx5_eswitch** %13, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = call i64 @is_vlan_dev(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %25)
  br label %29

27:                                               ; preds = %4
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi %struct.net_device* [ %26, %24 ], [ %28, %27 ]
  store %struct.net_device* %30, %struct.net_device** %12, align 8
  %31 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %13, align 8
  %32 = load i32, i32* @REP_ETH, align 4
  %33 = call %struct.net_device* @mlx5_eswitch_uplink_get_proto_dev(%struct.mlx5_eswitch* %31, i32 %32)
  store %struct.net_device* %33, %struct.net_device** %10, align 8
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %35)
  store %struct.net_device* %36, %struct.net_device** %11, align 8
  %37 = load %struct.net_device*, %struct.net_device** %11, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.net_device*, %struct.net_device** %11, align 8
  %41 = call i32 @dev_hold(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %39, %29
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load %struct.net_device*, %struct.net_device** %11, align 8
  %45 = icmp ne %struct.net_device* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %11, align 8
  %48 = call i64 @netif_is_lag_master(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load %struct.net_device*, %struct.net_device** %12, align 8
  %52 = load %struct.net_device*, %struct.net_device** %11, align 8
  %53 = icmp eq %struct.net_device* %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i64 @mlx5_lag_is_sriov(%struct.TYPE_4__* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %54, %50, %46, %42
  %61 = phi i1 [ false, %50 ], [ false, %46 ], [ false, %42 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %14, align 4
  %63 = load %struct.net_device*, %struct.net_device** %11, align 8
  %64 = icmp ne %struct.net_device* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.net_device*, %struct.net_device** %11, align 8
  %67 = call i32 @dev_put(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = load %struct.net_device**, %struct.net_device*** %8, align 8
  store %struct.net_device* %69, %struct.net_device** %70, align 8
  %71 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %72 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.net_device*, %struct.net_device** %12, align 8
  %75 = call i32 @netdev_port_same_parent_id(i32 %73, %struct.net_device* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %68
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %82 = load %struct.net_device*, %struct.net_device** %81, align 8
  %83 = call i64 @is_vlan_dev(%struct.net_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %77, %68
  %86 = load %struct.net_device*, %struct.net_device** %10, align 8
  %87 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* %86, %struct.net_device** %87, align 8
  br label %105

88:                                               ; preds = %80
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = call i64 @mlx5e_eswitch_rep(%struct.net_device* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %6, align 8
  %94 = load %struct.net_device*, %struct.net_device** %7, align 8
  %95 = call i64 @mlx5e_is_valid_eswitch_fwd_dev(%struct.mlx5e_priv* %93, %struct.net_device* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %99 = load %struct.net_device*, %struct.net_device** %98, align 8
  %100 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* %99, %struct.net_device** %100, align 8
  br label %104

101:                                              ; preds = %92, %88
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %120

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %85
  %106 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %107 = load %struct.net_device*, %struct.net_device** %106, align 8
  %108 = call i64 @mlx5e_eswitch_rep(%struct.net_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %112 = load %struct.net_device*, %struct.net_device** %111, align 8
  %113 = call i32 @netdev_priv(%struct.net_device* %112)
  %114 = call i64 @mlx5e_is_uplink_rep(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* @EOPNOTSUPP, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %120

119:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %116, %101
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local %struct.net_device* @mlx5_eswitch_uplink_get_proto_dev(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @netif_is_lag_master(%struct.net_device*) #1

declare dso_local i64 @mlx5_lag_is_sriov(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @netdev_port_same_parent_id(i32, %struct.net_device*) #1

declare dso_local i64 @mlx5e_eswitch_rep(%struct.net_device*) #1

declare dso_local i64 @mlx5e_is_valid_eswitch_fwd_dev(%struct.mlx5e_priv*, %struct.net_device*) #1

declare dso_local i64 @mlx5e_is_uplink_rep(i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
