; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c___vxlan_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c___vxlan_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32* }
%struct.vxlan_config = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_net = type { i32 }
%struct.vxlan_dev = type { i32, %struct.TYPE_2__, %struct.vxlan_rdst }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_rdst = type { %struct.net_device*, i32, i64, i32 }
%struct.vxlan_fdb = type { i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@vxlan_ethtool_ops = common dso_local global i32 0, align 4
@all_zeros_mac = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@NUD_PERMANENT = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.vxlan_config*, %struct.netlink_ext_ack*)* @__vxlan_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vxlan_dev_create(%struct.net* %0, %struct.net_device* %1, %struct.vxlan_config* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.vxlan_config*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.vxlan_net*, align 8
  %11 = alloca %struct.vxlan_dev*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.vxlan_fdb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vxlan_rdst*, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.vxlan_config* %2, %struct.vxlan_config** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %17 = load %struct.net*, %struct.net** %6, align 8
  %18 = load i32, i32* @vxlan_net_id, align 4
  %19 = call %struct.vxlan_net* @net_generic(%struct.net* %17, i32 %18)
  store %struct.vxlan_net* %19, %struct.vxlan_net** %10, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %20)
  store %struct.vxlan_dev* %21, %struct.vxlan_dev** %11, align 8
  store %struct.net_device* null, %struct.net_device** %12, align 8
  store %struct.vxlan_fdb* null, %struct.vxlan_fdb** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %23 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %22, i32 0, i32 2
  store %struct.vxlan_rdst* %23, %struct.vxlan_rdst** %15, align 8
  %24 = load %struct.net*, %struct.net** %6, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = load %struct.vxlan_config*, %struct.vxlan_config** %8, align 8
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %28 = call i32 @vxlan_dev_configure(%struct.net* %24, %struct.net_device* %25, %struct.vxlan_config* %26, i32 0, %struct.netlink_ext_ack* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %5, align 4
  br label %171

33:                                               ; preds = %4
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  store i32* @vxlan_ethtool_ops, i32** %35, align 8
  %36 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %37 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %36, i32 0, i32 3
  %38 = call i32 @vxlan_addr_any(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %33
  %41 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %42 = load i32, i32* @all_zeros_mac, align 4
  %43 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %44 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %43, i32 0, i32 3
  %45 = load i32, i32* @NUD_REACHABLE, align 4
  %46 = load i32, i32* @NUD_PERMANENT, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %49 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %53 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %56 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %59 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @NTF_SELF, align 4
  %62 = call i32 @vxlan_fdb_create(%struct.vxlan_dev* %41, i32 %42, i32* %44, i32 %47, i32 %51, i32 %54, i32 %57, i64 %60, i32 %61, %struct.vxlan_fdb** %13)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %40
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %5, align 4
  br label %171

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = call i32 @register_netdevice(%struct.net_device* %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %156

74:                                               ; preds = %68
  store i32 1, i32* %14, align 4
  %75 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %76 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.net*, %struct.net** %6, align 8
  %81 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %82 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call %struct.net_device* @__dev_get_by_index(%struct.net* %80, i64 %83)
  store %struct.net_device* %84, %struct.net_device** %12, align 8
  %85 = load %struct.net_device*, %struct.net_device** %12, align 8
  %86 = icmp ne %struct.net_device* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %156

88:                                               ; preds = %79
  %89 = load %struct.net_device*, %struct.net_device** %12, align 8
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %92 = call i32 @netdev_upper_dev_link(%struct.net_device* %89, %struct.net_device* %90, %struct.netlink_ext_ack* %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %156

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.net_device*, %struct.net_device** %7, align 8
  %99 = call i32 @rtnl_configure_link(%struct.net_device* %98, i32* null)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %148

103:                                              ; preds = %97
  %104 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %13, align 8
  %105 = icmp ne %struct.vxlan_fdb* %104, null
  br i1 %105, label %106, label %135

106:                                              ; preds = %103
  %107 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %108 = load i32, i32* @all_zeros_mac, align 4
  %109 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %110 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %13, align 8
  %113 = call i32 @vxlan_fdb_insert(%struct.vxlan_dev* %107, i32 %108, i32 %111, %struct.vxlan_fdb* %112)
  %114 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %115 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %13, align 8
  %116 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %13, align 8
  %117 = call i32 @first_remote_rtnl(%struct.vxlan_fdb* %116)
  %118 = load i32, i32* @RTM_NEWNEIGH, align 4
  %119 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %120 = call i32 @vxlan_fdb_notify(%struct.vxlan_dev* %114, %struct.vxlan_fdb* %115, i32 %117, i32 %118, i32 1, %struct.netlink_ext_ack* %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %106
  %124 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %125 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %13, align 8
  %126 = call i32 @vxlan_fdb_destroy(%struct.vxlan_dev* %124, %struct.vxlan_fdb* %125, i32 0, i32 0)
  %127 = load %struct.net_device*, %struct.net_device** %12, align 8
  %128 = icmp ne %struct.net_device* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.net_device*, %struct.net_device** %12, align 8
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %130, %struct.net_device* %131)
  br label %133

133:                                              ; preds = %129, %123
  br label %163

134:                                              ; preds = %106
  br label %135

135:                                              ; preds = %134, %103
  %136 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %137 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %136, i32 0, i32 0
  %138 = load %struct.vxlan_net*, %struct.vxlan_net** %10, align 8
  %139 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %138, i32 0, i32 0
  %140 = call i32 @list_add(i32* %137, i32* %139)
  %141 = load %struct.net_device*, %struct.net_device** %12, align 8
  %142 = icmp ne %struct.net_device* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load %struct.net_device*, %struct.net_device** %12, align 8
  %145 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %15, align 8
  %146 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %145, i32 0, i32 0
  store %struct.net_device* %144, %struct.net_device** %146, align 8
  br label %147

147:                                              ; preds = %143, %135
  store i32 0, i32* %5, align 4
  br label %171

148:                                              ; preds = %102
  %149 = load %struct.net_device*, %struct.net_device** %12, align 8
  %150 = icmp ne %struct.net_device* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.net_device*, %struct.net_device** %12, align 8
  %153 = load %struct.net_device*, %struct.net_device** %7, align 8
  %154 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %152, %struct.net_device* %153)
  br label %155

155:                                              ; preds = %151, %148
  br label %156

156:                                              ; preds = %155, %95, %87, %73
  %157 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %13, align 8
  %158 = icmp ne %struct.vxlan_fdb* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %13, align 8
  %161 = call i32 @__vxlan_fdb_free(%struct.vxlan_fdb* %160)
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %133
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.net_device*, %struct.net_device** %7, align 8
  %168 = call i32 @unregister_netdevice(%struct.net_device* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %147, %65, %31
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.vxlan_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxlan_dev_configure(%struct.net*, %struct.net_device*, %struct.vxlan_config*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @vxlan_addr_any(i32*) #1

declare dso_local i32 @vxlan_fdb_create(%struct.vxlan_dev*, i32, i32*, i32, i32, i32, i32, i64, i32, %struct.vxlan_fdb**) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local i32 @netdev_upper_dev_link(%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @rtnl_configure_link(%struct.net_device*, i32*) #1

declare dso_local i32 @vxlan_fdb_insert(%struct.vxlan_dev*, i32, i32, %struct.vxlan_fdb*) #1

declare dso_local i32 @vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @first_remote_rtnl(%struct.vxlan_fdb*) #1

declare dso_local i32 @vxlan_fdb_destroy(%struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__vxlan_fdb_free(%struct.vxlan_fdb*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
