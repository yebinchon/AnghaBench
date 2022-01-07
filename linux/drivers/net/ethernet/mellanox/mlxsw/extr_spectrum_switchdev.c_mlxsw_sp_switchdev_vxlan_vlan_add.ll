; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_switchdev_vxlan_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"VLAN already mapped to a different VNI\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_bridge_device*, %struct.net_device*, i64, i32, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_switchdev_vxlan_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_switchdev_vxlan_vlan_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_bridge_device* %1, %struct.net_device* %2, i64 %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.vxlan_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlxsw_sp_fid*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %9, align 8
  store %struct.mlxsw_sp_bridge_device* %1, %struct.mlxsw_sp_bridge_device** %10, align 8
  store %struct.net_device* %2, %struct.net_device** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %21 = load %struct.net_device*, %struct.net_device** %11, align 8
  %22 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %21)
  store %struct.vxlan_dev* %22, %struct.vxlan_dev** %16, align 8
  %23 = load %struct.vxlan_dev*, %struct.vxlan_dev** %16, align 8
  %24 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %7
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @mlxsw_sp_bridge_8021q_vxlan_dev_find(i32 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %41 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %127

44:                                               ; preds = %32, %29, %7
  %45 = load %struct.net_device*, %struct.net_device** %11, align 8
  %46 = call i32 @netif_running(%struct.net_device* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %127

49:                                               ; preds = %44
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call %struct.mlxsw_sp_fid* @mlxsw_sp_fid_lookup_by_vni(%struct.mlxsw_sp* %50, i32 %51)
  store %struct.mlxsw_sp_fid* %52, %struct.mlxsw_sp_fid** %18, align 8
  %53 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %18, align 8
  %54 = icmp ne %struct.mlxsw_sp_fid* %53, null
  br i1 %54, label %68, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %55
  store i32 0, i32* %8, align 4
  br label %127

62:                                               ; preds = %58
  %63 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %64 = load %struct.net_device*, %struct.net_device** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %67 = call i32 @mlxsw_sp_bridge_8021q_vxlan_join(%struct.mlxsw_sp_bridge_device* %63, %struct.net_device* %64, i64 %65, %struct.netlink_ext_ack* %66)
  store i32 %67, i32* %8, align 4
  br label %127

68:                                               ; preds = %49
  %69 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %18, align 8
  %70 = call i64 @mlxsw_sp_fid_8021q_vid(%struct.mlxsw_sp_fid* %69)
  store i64 %70, i64* %19, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %19, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i1 [ false, %74 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = call i64 @WARN_ON(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %18, align 8
  %87 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %127

90:                                               ; preds = %80
  %91 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %92 = load %struct.net_device*, %struct.net_device** %11, align 8
  %93 = call i32 @mlxsw_sp_bridge_vxlan_leave(%struct.mlxsw_sp* %91, %struct.net_device* %92)
  %94 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %18, align 8
  %95 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %94)
  store i32 0, i32* %8, align 4
  br label %127

96:                                               ; preds = %68
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %18, align 8
  %101 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %100)
  store i32 0, i32* %8, align 4
  br label %127

102:                                              ; preds = %96
  %103 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %104 = load %struct.net_device*, %struct.net_device** %11, align 8
  %105 = call i32 @mlxsw_sp_bridge_vxlan_leave(%struct.mlxsw_sp* %103, %struct.net_device* %104)
  %106 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %18, align 8
  %107 = call i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid* %106)
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %127

111:                                              ; preds = %102
  %112 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %113 = load %struct.net_device*, %struct.net_device** %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %116 = call i32 @mlxsw_sp_bridge_8021q_vxlan_join(%struct.mlxsw_sp_bridge_device* %112, %struct.net_device* %113, i64 %114, %struct.netlink_ext_ack* %115)
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %20, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %121

120:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %127

121:                                              ; preds = %119
  %122 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %10, align 8
  %123 = load %struct.net_device*, %struct.net_device** %11, align 8
  %124 = load i64, i64* %19, align 8
  %125 = call i32 @mlxsw_sp_bridge_8021q_vxlan_join(%struct.mlxsw_sp_bridge_device* %122, %struct.net_device* %123, i64 %124, %struct.netlink_ext_ack* null)
  %126 = load i32, i32* %20, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %121, %120, %110, %99, %90, %85, %62, %61, %48, %39
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlxsw_sp_bridge_8021q_vxlan_dev_find(i32, i64) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_fid* @mlxsw_sp_fid_lookup_by_vni(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_bridge_8021q_vxlan_join(%struct.mlxsw_sp_bridge_device*, %struct.net_device*, i64, %struct.netlink_ext_ack*) #1

declare dso_local i64 @mlxsw_sp_fid_8021q_vid(%struct.mlxsw_sp_fid*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_fid_put(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_bridge_vxlan_leave(%struct.mlxsw_sp*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
