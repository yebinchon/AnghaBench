; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_port_upper_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_port_upper_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32, %struct.net_device*, i32, i32 }
%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown upper device type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Enslaving a port to a device that already has an upper device is not supported\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Master device is a LAG master and this device has a VLAN\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Can not put a VLAN on a LAG port\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"macvlan is only supported on top of router interfaces\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Master device is an OVS master and this device has a VLAN\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Can not put a VLAN on an OVS port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, i64, i8*)* @mlxsw_sp_netdevice_port_upper_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_port_upper_event(%struct.net_device* %0, %struct.net_device* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %11 = alloca %struct.mlxsw_sp_port*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.mlxsw_sp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %17)
  store %struct.mlxsw_sp_port* %18, %struct.mlxsw_sp_port** %11, align 8
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %19, i32 0, i32 0
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %20, align 8
  store %struct.mlxsw_sp* %21, %struct.mlxsw_sp** %14, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.netdev_notifier_changeupper_info*
  store %struct.netdev_notifier_changeupper_info* %23, %struct.netdev_notifier_changeupper_info** %10, align 8
  %24 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %25 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %24, i32 0, i32 3
  %26 = call %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32* %25)
  store %struct.netlink_ext_ack* %26, %struct.netlink_ext_ack** %12, align 8
  %27 = load i64, i64* %8, align 8
  switch i64 %27, label %290 [
    i64 128, label %28
    i64 129, label %189
  ]

28:                                               ; preds = %4
  %29 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %30 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %29, i32 0, i32 1
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %13, align 8
  %32 = load %struct.net_device*, %struct.net_device** %13, align 8
  %33 = call i32 @is_vlan_dev(%struct.net_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %13, align 8
  %37 = call i32 @netif_is_lag_master(%struct.net_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %13, align 8
  %41 = call i32 @netif_is_bridge_master(%struct.net_device* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %13, align 8
  %45 = call i32 @netif_is_ovs_master(%struct.net_device* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load %struct.net_device*, %struct.net_device** %13, align 8
  %49 = call i32 @netif_is_macvlan(%struct.net_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %53 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %292

56:                                               ; preds = %47, %43, %39, %35, %28
  %57 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %58 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %290

62:                                               ; preds = %56
  %63 = load %struct.net_device*, %struct.net_device** %13, align 8
  %64 = call i32 @netif_is_bridge_master(%struct.net_device* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %68 = load %struct.net_device*, %struct.net_device** %13, align 8
  %69 = call i32 @mlxsw_sp_bridge_device_is_offloaded(%struct.mlxsw_sp* %67, %struct.net_device* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = load %struct.net_device*, %struct.net_device** %13, align 8
  %73 = call i32 @mlxsw_sp_bridge_has_vxlan(%struct.net_device* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.net_device*, %struct.net_device** %13, align 8
  %77 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %78 = call i32 @mlxsw_sp_bridge_vxlan_is_valid(%struct.net_device* %76, %struct.netlink_ext_ack* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %292

83:                                               ; preds = %75, %71, %66, %62
  %84 = load %struct.net_device*, %struct.net_device** %13, align 8
  %85 = call i32 @netdev_has_any_upper_dev(%struct.net_device* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load %struct.net_device*, %struct.net_device** %13, align 8
  %89 = call i32 @netif_is_bridge_master(%struct.net_device* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %93 = load %struct.net_device*, %struct.net_device** %13, align 8
  %94 = call i32 @mlxsw_sp_bridge_device_is_offloaded(%struct.mlxsw_sp* %92, %struct.net_device* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91, %87
  %97 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %98 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %97, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %292

101:                                              ; preds = %91, %83
  %102 = load %struct.net_device*, %struct.net_device** %13, align 8
  %103 = call i32 @netif_is_lag_master(%struct.net_device* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %107 = load %struct.net_device*, %struct.net_device** %13, align 8
  %108 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %109 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %112 = call i32 @mlxsw_sp_master_lag_check(%struct.mlxsw_sp* %106, %struct.net_device* %107, i32 %110, %struct.netlink_ext_ack* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %105
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %292

117:                                              ; preds = %105, %101
  %118 = load %struct.net_device*, %struct.net_device** %13, align 8
  %119 = call i32 @netif_is_lag_master(%struct.net_device* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load %struct.net_device*, %struct.net_device** %7, align 8
  %123 = call i32 @vlan_uses_dev(%struct.net_device* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %127 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %292

130:                                              ; preds = %121, %117
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = call i32 @netif_is_lag_port(%struct.net_device* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load %struct.net_device*, %struct.net_device** %13, align 8
  %136 = call i32 @is_vlan_dev(%struct.net_device* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load %struct.net_device*, %struct.net_device** %13, align 8
  %140 = call %struct.net_device* @vlan_dev_real_dev(%struct.net_device* %139)
  %141 = call i32 @netif_is_lag_master(%struct.net_device* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %145 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %292

148:                                              ; preds = %138, %134, %130
  %149 = load %struct.net_device*, %struct.net_device** %13, align 8
  %150 = call i32 @netif_is_macvlan(%struct.net_device* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %154 = load %struct.net_device*, %struct.net_device** %6, align 8
  %155 = call i32 @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %153, %struct.net_device* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %159 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %158, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %160 = load i32, i32* @EOPNOTSUPP, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %292

162:                                              ; preds = %152, %148
  %163 = load %struct.net_device*, %struct.net_device** %13, align 8
  %164 = call i32 @netif_is_ovs_master(%struct.net_device* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %162
  %167 = load %struct.net_device*, %struct.net_device** %7, align 8
  %168 = call i32 @vlan_uses_dev(%struct.net_device* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %172 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %171, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %292

175:                                              ; preds = %166, %162
  %176 = load %struct.net_device*, %struct.net_device** %7, align 8
  %177 = call i32 @netif_is_ovs_port(%struct.net_device* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load %struct.net_device*, %struct.net_device** %13, align 8
  %181 = call i32 @is_vlan_dev(%struct.net_device* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %185 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  br label %292

188:                                              ; preds = %179, %175
  br label %290

189:                                              ; preds = %4
  %190 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %191 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %190, i32 0, i32 1
  %192 = load %struct.net_device*, %struct.net_device** %191, align 8
  store %struct.net_device* %192, %struct.net_device** %13, align 8
  %193 = load %struct.net_device*, %struct.net_device** %13, align 8
  %194 = call i32 @netif_is_bridge_master(%struct.net_device* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %189
  %197 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %198 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %203 = load %struct.net_device*, %struct.net_device** %6, align 8
  %204 = load %struct.net_device*, %struct.net_device** %13, align 8
  %205 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %206 = call i32 @mlxsw_sp_port_bridge_join(%struct.mlxsw_sp_port* %202, %struct.net_device* %203, %struct.net_device* %204, %struct.netlink_ext_ack* %205)
  store i32 %206, i32* %15, align 4
  br label %212

207:                                              ; preds = %196
  %208 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %209 = load %struct.net_device*, %struct.net_device** %6, align 8
  %210 = load %struct.net_device*, %struct.net_device** %13, align 8
  %211 = call i32 @mlxsw_sp_port_bridge_leave(%struct.mlxsw_sp_port* %208, %struct.net_device* %209, %struct.net_device* %210)
  br label %212

212:                                              ; preds = %207, %201
  br label %289

213:                                              ; preds = %189
  %214 = load %struct.net_device*, %struct.net_device** %13, align 8
  %215 = call i32 @netif_is_lag_master(%struct.net_device* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %213
  %218 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %219 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %224 = load %struct.net_device*, %struct.net_device** %13, align 8
  %225 = call i32 @mlxsw_sp_port_lag_join(%struct.mlxsw_sp_port* %223, %struct.net_device* %224)
  store i32 %225, i32* %15, align 4
  br label %232

226:                                              ; preds = %217
  %227 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %228 = call i32 @mlxsw_sp_port_lag_col_dist_disable(%struct.mlxsw_sp_port* %227)
  %229 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %230 = load %struct.net_device*, %struct.net_device** %13, align 8
  %231 = call i32 @mlxsw_sp_port_lag_leave(%struct.mlxsw_sp_port* %229, %struct.net_device* %230)
  br label %232

232:                                              ; preds = %226, %222
  br label %288

233:                                              ; preds = %213
  %234 = load %struct.net_device*, %struct.net_device** %13, align 8
  %235 = call i32 @netif_is_ovs_master(%struct.net_device* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  %238 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %239 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %244 = call i32 @mlxsw_sp_port_ovs_join(%struct.mlxsw_sp_port* %243)
  store i32 %244, i32* %15, align 4
  br label %248

245:                                              ; preds = %237
  %246 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %247 = call i32 @mlxsw_sp_port_ovs_leave(%struct.mlxsw_sp_port* %246)
  br label %248

248:                                              ; preds = %245, %242
  br label %287

249:                                              ; preds = %233
  %250 = load %struct.net_device*, %struct.net_device** %13, align 8
  %251 = call i32 @netif_is_macvlan(%struct.net_device* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %249
  %254 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %255 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %253
  %259 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %260 = load %struct.net_device*, %struct.net_device** %13, align 8
  %261 = call i32 @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp* %259, %struct.net_device* %260)
  br label %262

262:                                              ; preds = %258, %253
  br label %286

263:                                              ; preds = %249
  %264 = load %struct.net_device*, %struct.net_device** %13, align 8
  %265 = call i32 @is_vlan_dev(%struct.net_device* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %285

267:                                              ; preds = %263
  %268 = load %struct.net_device*, %struct.net_device** %13, align 8
  %269 = call i32 @netif_is_bridge_port(%struct.net_device* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %267
  br label %290

272:                                              ; preds = %267
  %273 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %10, align 8
  %274 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %290

278:                                              ; preds = %272
  %279 = load %struct.net_device*, %struct.net_device** %13, align 8
  %280 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %279)
  store %struct.net_device* %280, %struct.net_device** %16, align 8
  %281 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %282 = load %struct.net_device*, %struct.net_device** %13, align 8
  %283 = load %struct.net_device*, %struct.net_device** %16, align 8
  %284 = call i32 @mlxsw_sp_port_bridge_leave(%struct.mlxsw_sp_port* %281, %struct.net_device* %282, %struct.net_device* %283)
  br label %285

285:                                              ; preds = %278, %263
  br label %286

286:                                              ; preds = %285, %262
  br label %287

287:                                              ; preds = %286, %248
  br label %288

288:                                              ; preds = %287, %232
  br label %289

289:                                              ; preds = %288, %212
  br label %290

290:                                              ; preds = %4, %289, %277, %271, %188, %61
  %291 = load i32, i32* %15, align 4
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %290, %183, %170, %157, %143, %125, %114, %96, %80, %51
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netlink_ext_ack* @netdev_notifier_info_to_extack(i32*) #1

declare dso_local i32 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @netif_is_lag_master(%struct.net_device*) #1

declare dso_local i32 @netif_is_bridge_master(%struct.net_device*) #1

declare dso_local i32 @netif_is_ovs_master(%struct.net_device*) #1

declare dso_local i32 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_bridge_device_is_offloaded(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_has_vxlan(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_vxlan_is_valid(%struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @netdev_has_any_upper_dev(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_master_lag_check(%struct.mlxsw_sp*, %struct.net_device*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @vlan_uses_dev(%struct.net_device*) #1

declare dso_local i32 @netif_is_lag_port(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @netif_is_ovs_port(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_bridge_join(%struct.mlxsw_sp_port*, %struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @mlxsw_sp_port_bridge_leave(%struct.mlxsw_sp_port*, %struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_lag_join(%struct.mlxsw_sp_port*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_lag_col_dist_disable(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_lag_leave(%struct.mlxsw_sp_port*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_ovs_join(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_ovs_leave(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_rif_macvlan_del(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @netif_is_bridge_port(%struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
