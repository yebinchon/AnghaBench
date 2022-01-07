; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_port_vlan_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_port_vlan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32, %struct.net_device*, i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown upper device type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Enslaving a port to a device that already has an upper device is not supported\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"macvlan is only supported on top of router interfaces\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, i64, i8*, i32)* @mlxsw_sp_netdevice_port_vlan_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_port_vlan_event(%struct.net_device* %0, %struct.net_device* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxsw_sp_port*, align 8
  %13 = alloca %struct.mlxsw_sp*, align 8
  %14 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %18)
  store %struct.mlxsw_sp_port* %19, %struct.mlxsw_sp_port** %12, align 8
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %20, i32 0, i32 0
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %21, align 8
  store %struct.mlxsw_sp* %22, %struct.mlxsw_sp** %13, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.netdev_notifier_changeupper_info*
  store %struct.netdev_notifier_changeupper_info* %24, %struct.netdev_notifier_changeupper_info** %14, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %14, align 8
  %26 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %25, i32 0, i32 2
  %27 = call %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32* %26)
  store %struct.netlink_ext_ack* %27, %struct.netlink_ext_ack** %15, align 8
  %28 = load i64, i64* %9, align 8
  switch i64 %28, label %149 [
    i64 128, label %29
    i64 129, label %105
  ]

29:                                               ; preds = %5
  %30 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %14, align 8
  %31 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %30, i32 0, i32 1
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %16, align 8
  %33 = load %struct.net_device*, %struct.net_device** %16, align 8
  %34 = call i32 @netif_is_bridge_master(%struct.net_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load %struct.net_device*, %struct.net_device** %16, align 8
  %38 = call i32 @netif_is_macvlan(%struct.net_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %42 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %151

45:                                               ; preds = %36, %29
  %46 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %14, align 8
  %47 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %149

51:                                               ; preds = %45
  %52 = load %struct.net_device*, %struct.net_device** %16, align 8
  %53 = call i32 @netif_is_bridge_master(%struct.net_device* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %57 = load %struct.net_device*, %struct.net_device** %16, align 8
  %58 = call i32 @mlxsw_sp_bridge_device_is_offloaded(%struct.mlxsw_sp* %56, %struct.net_device* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load %struct.net_device*, %struct.net_device** %16, align 8
  %62 = call i32 @mlxsw_sp_bridge_has_vxlan(%struct.net_device* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.net_device*, %struct.net_device** %16, align 8
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %67 = call i32 @mlxsw_sp_bridge_vxlan_is_valid(%struct.net_device* %65, %struct.netlink_ext_ack* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %151

72:                                               ; preds = %64, %60, %55, %51
  %73 = load %struct.net_device*, %struct.net_device** %16, align 8
  %74 = call i32 @netdev_has_any_upper_dev(%struct.net_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load %struct.net_device*, %struct.net_device** %16, align 8
  %78 = call i32 @netif_is_bridge_master(%struct.net_device* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %82 = load %struct.net_device*, %struct.net_device** %16, align 8
  %83 = call i32 @mlxsw_sp_bridge_device_is_offloaded(%struct.mlxsw_sp* %81, %struct.net_device* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80, %76
  %86 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %87 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %86, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %151

90:                                               ; preds = %80, %72
  %91 = load %struct.net_device*, %struct.net_device** %16, align 8
  %92 = call i32 @netif_is_macvlan(%struct.net_device* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %96 = load %struct.net_device*, %struct.net_device** %7, align 8
  %97 = call i32 @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %95, %struct.net_device* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %101 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %100, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %151

104:                                              ; preds = %94, %90
  br label %149

105:                                              ; preds = %5
  %106 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %14, align 8
  %107 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %106, i32 0, i32 1
  %108 = load %struct.net_device*, %struct.net_device** %107, align 8
  store %struct.net_device* %108, %struct.net_device** %16, align 8
  %109 = load %struct.net_device*, %struct.net_device** %16, align 8
  %110 = call i32 @netif_is_bridge_master(%struct.net_device* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %105
  %113 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %14, align 8
  %114 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = load %struct.net_device*, %struct.net_device** %16, align 8
  %121 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %122 = call i32 @mlxsw_sp_port_bridge_join(%struct.mlxsw_sp_port* %118, %struct.net_device* %119, %struct.net_device* %120, %struct.netlink_ext_ack* %121)
  store i32 %122, i32* %17, align 4
  br label %128

123:                                              ; preds = %112
  %124 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %12, align 8
  %125 = load %struct.net_device*, %struct.net_device** %7, align 8
  %126 = load %struct.net_device*, %struct.net_device** %16, align 8
  %127 = call i32 @mlxsw_sp_port_bridge_leave(%struct.mlxsw_sp_port* %124, %struct.net_device* %125, %struct.net_device* %126)
  br label %128

128:                                              ; preds = %123, %117
  br label %148

129:                                              ; preds = %105
  %130 = load %struct.net_device*, %struct.net_device** %16, align 8
  %131 = call i32 @netif_is_macvlan(%struct.net_device* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %14, align 8
  %135 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  %140 = load %struct.net_device*, %struct.net_device** %16, align 8
  %141 = call i32 @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp* %139, %struct.net_device* %140)
  br label %142

142:                                              ; preds = %138, %133
  br label %147

143:                                              ; preds = %129
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %17, align 4
  %146 = call i32 @WARN_ON(i32 1)
  br label %147

147:                                              ; preds = %143, %142
  br label %148

148:                                              ; preds = %147, %128
  br label %149

149:                                              ; preds = %5, %148, %104, %50
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %99, %85, %69, %40
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32*) #1

declare dso_local i32 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local i32 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_bridge_device_is_offloaded(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_has_vxlan(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_vxlan_is_valid(%struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @netdev_has_any_upper_dev(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_bridge_join(%struct.mlxsw_sp_port*, %struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_port_bridge_leave(%struct.mlxsw_sp_port*, %struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
