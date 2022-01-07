; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c___bond_release_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c___bond_release_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32 }
%struct.bonding = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.slave = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_storage = type { i32, i32 }
%struct.sockaddr = type { i32 }

@IFF_SLAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot release slave\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"interface not enslaved\0A\00", align 1
@BOND_SLAVE_NOTIFY_NOW = common dso_local global i32 0, align 4
@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Releasing %s interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@BOND_MODE_ACTIVEBACKUP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [131 x i8] c"the permanent HWaddr of slave - %pM - is still in use by bond - set the HWaddr of slave to a different address to avoid conflicts\0A\00", align 1
@NETDEV_CHANGEADDR = common dso_local global i32 0, align 4
@NETDEV_RELEASE = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"last VLAN challenged slave left bond - VLAN blocking is removed\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BOND_FOM_ACTIVE = common dso_local global i64 0, align 8
@IFF_BONDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, i32, i32)* @__bond_release_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bond_release_one(%struct.net_device* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bonding*, align 8
  %11 = alloca %struct.slave*, align 8
  %12 = alloca %struct.slave*, align 8
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.bonding* @netdev_priv(%struct.net_device* %16)
  store %struct.bonding* %17, %struct.bonding** %10, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_SLAVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i32 @netdev_has_upper_dev(%struct.net_device* %31, %struct.net_device* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @slave_dbg(%struct.net_device* %36, %struct.net_device* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %320

41:                                               ; preds = %30
  %42 = call i32 (...) @block_netpoll_tx()
  %43 = load %struct.bonding*, %struct.bonding** %10, align 8
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = call %struct.slave* @bond_get_slave_by_dev(%struct.bonding* %43, %struct.net_device* %44)
  store %struct.slave* %45, %struct.slave** %11, align 8
  %46 = load %struct.slave*, %struct.slave** %11, align 8
  %47 = icmp ne %struct.slave* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = call i32 (%struct.net_device*, %struct.net_device*, i8*, ...) @slave_info(%struct.net_device* %49, %struct.net_device* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 (...) @unblock_netpoll_tx()
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %320

55:                                               ; preds = %41
  %56 = load %struct.slave*, %struct.slave** %11, align 8
  %57 = load i32, i32* @BOND_SLAVE_NOTIFY_NOW, align 4
  %58 = call i32 @bond_set_slave_inactive_flags(%struct.slave* %56, i32 %57)
  %59 = load %struct.slave*, %struct.slave** %11, align 8
  %60 = call i32 @bond_sysfs_slave_del(%struct.slave* %59)
  %61 = load %struct.bonding*, %struct.bonding** %10, align 8
  %62 = getelementptr inbounds %struct.bonding, %struct.bonding* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.bonding*, %struct.bonding** %10, align 8
  %65 = getelementptr inbounds %struct.bonding, %struct.bonding* %64, i32 0, i32 6
  %66 = call i32 @bond_get_stats(i32 %63, i32* %65)
  %67 = load %struct.bonding*, %struct.bonding** %10, align 8
  %68 = load %struct.slave*, %struct.slave** %11, align 8
  %69 = call i32 @bond_upper_dev_unlink(%struct.bonding* %67, %struct.slave* %68)
  %70 = load %struct.net_device*, %struct.net_device** %7, align 8
  %71 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %70)
  %72 = load %struct.bonding*, %struct.bonding** %10, align 8
  %73 = call i64 @BOND_MODE(%struct.bonding* %72)
  %74 = load i64, i64* @BOND_MODE_8023AD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %55
  %77 = load %struct.slave*, %struct.slave** %11, align 8
  %78 = call i32 @bond_3ad_unbind_slave(%struct.slave* %77)
  br label %79

79:                                               ; preds = %76, %55
  %80 = load %struct.bonding*, %struct.bonding** %10, align 8
  %81 = call i64 @bond_mode_can_use_xmit_hash(%struct.bonding* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.bonding*, %struct.bonding** %10, align 8
  %85 = load %struct.slave*, %struct.slave** %11, align 8
  %86 = call i32 @bond_update_slave_arr(%struct.bonding* %84, %struct.slave* %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = load %struct.slave*, %struct.slave** %11, align 8
  %91 = call i64 @bond_is_active_slave(%struct.slave* %90)
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %95 = call i32 (%struct.net_device*, %struct.net_device*, i8*, ...) @slave_info(%struct.net_device* %88, %struct.net_device* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  %96 = load %struct.bonding*, %struct.bonding** %10, align 8
  %97 = getelementptr inbounds %struct.bonding, %struct.bonding* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.slave* @rcu_access_pointer(i32 %98)
  store %struct.slave* %99, %struct.slave** %12, align 8
  %100 = load %struct.bonding*, %struct.bonding** %10, align 8
  %101 = getelementptr inbounds %struct.bonding, %struct.bonding* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @RCU_INIT_POINTER(i32 %102, i32* null)
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %138, label %106

106:                                              ; preds = %87
  %107 = load %struct.bonding*, %struct.bonding** %10, align 8
  %108 = getelementptr inbounds %struct.bonding, %struct.bonding* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.bonding*, %struct.bonding** %10, align 8
  %114 = call i64 @BOND_MODE(%struct.bonding* %113)
  %115 = load i64, i64* @BOND_MODE_ACTIVEBACKUP, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %112, %106
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.slave*, %struct.slave** %11, align 8
  %122 = getelementptr inbounds %struct.slave, %struct.slave* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @ether_addr_equal_64bits(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %117
  %127 = load %struct.bonding*, %struct.bonding** %10, align 8
  %128 = call i64 @bond_has_slaves(%struct.bonding* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = load %struct.net_device*, %struct.net_device** %7, align 8
  %133 = load %struct.slave*, %struct.slave** %11, align 8
  %134 = getelementptr inbounds %struct.slave, %struct.slave* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @slave_warn(%struct.net_device* %131, %struct.net_device* %132, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %130, %126, %117
  br label %138

138:                                              ; preds = %137, %112, %87
  %139 = load %struct.bonding*, %struct.bonding** %10, align 8
  %140 = getelementptr inbounds %struct.bonding, %struct.bonding* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.slave* @rtnl_dereference(i32 %141)
  %143 = load %struct.slave*, %struct.slave** %11, align 8
  %144 = icmp eq %struct.slave* %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.bonding*, %struct.bonding** %10, align 8
  %147 = getelementptr inbounds %struct.bonding, %struct.bonding* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @RCU_INIT_POINTER(i32 %148, i32* null)
  br label %150

150:                                              ; preds = %145, %138
  %151 = load %struct.slave*, %struct.slave** %12, align 8
  %152 = load %struct.slave*, %struct.slave** %11, align 8
  %153 = icmp eq %struct.slave* %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.bonding*, %struct.bonding** %10, align 8
  %156 = call i32 @bond_change_active_slave(%struct.bonding* %155, i32* null)
  br label %157

157:                                              ; preds = %154, %150
  %158 = load %struct.bonding*, %struct.bonding** %10, align 8
  %159 = call i64 @bond_is_lb(%struct.bonding* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load %struct.bonding*, %struct.bonding** %10, align 8
  %163 = load %struct.slave*, %struct.slave** %11, align 8
  %164 = call i32 @bond_alb_deinit_slave(%struct.bonding* %162, %struct.slave* %163)
  br label %165

165:                                              ; preds = %161, %157
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.bonding*, %struct.bonding** %10, align 8
  %170 = getelementptr inbounds %struct.bonding, %struct.bonding* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @RCU_INIT_POINTER(i32 %171, i32* null)
  br label %181

173:                                              ; preds = %165
  %174 = load %struct.slave*, %struct.slave** %12, align 8
  %175 = load %struct.slave*, %struct.slave** %11, align 8
  %176 = icmp eq %struct.slave* %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.bonding*, %struct.bonding** %10, align 8
  %179 = call i32 @bond_select_active_slave(%struct.bonding* %178)
  br label %180

180:                                              ; preds = %177, %173
  br label %181

181:                                              ; preds = %180, %168
  %182 = load %struct.bonding*, %struct.bonding** %10, align 8
  %183 = call i64 @bond_has_slaves(%struct.bonding* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %181
  %186 = load %struct.bonding*, %struct.bonding** %10, align 8
  %187 = call i32 @bond_set_carrier(%struct.bonding* %186)
  %188 = load %struct.net_device*, %struct.net_device** %6, align 8
  %189 = call i32 @eth_hw_addr_random(%struct.net_device* %188)
  br label %190

190:                                              ; preds = %185, %181
  %191 = call i32 (...) @unblock_netpoll_tx()
  %192 = call i32 (...) @synchronize_rcu()
  %193 = load %struct.bonding*, %struct.bonding** %10, align 8
  %194 = getelementptr inbounds %struct.bonding, %struct.bonding* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %194, align 4
  %197 = load %struct.bonding*, %struct.bonding** %10, align 8
  %198 = call i64 @bond_has_slaves(%struct.bonding* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %190
  %201 = load i32, i32* @NETDEV_CHANGEADDR, align 4
  %202 = load %struct.bonding*, %struct.bonding** %10, align 8
  %203 = getelementptr inbounds %struct.bonding, %struct.bonding* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @call_netdevice_notifiers(i32 %201, i32 %204)
  %206 = load i32, i32* @NETDEV_RELEASE, align 4
  %207 = load %struct.bonding*, %struct.bonding** %10, align 8
  %208 = getelementptr inbounds %struct.bonding, %struct.bonding* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @call_netdevice_notifiers(i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %200, %190
  %212 = load %struct.bonding*, %struct.bonding** %10, align 8
  %213 = call i32 @bond_compute_features(%struct.bonding* %212)
  %214 = load %struct.net_device*, %struct.net_device** %6, align 8
  %215 = getelementptr inbounds %struct.net_device, %struct.net_device* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %211
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.net_device*, %struct.net_device** %6, align 8
  %227 = load %struct.net_device*, %struct.net_device** %7, align 8
  %228 = call i32 (%struct.net_device*, %struct.net_device*, i8*, ...) @slave_info(%struct.net_device* %226, %struct.net_device* %227, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  br label %229

229:                                              ; preds = %225, %220, %211
  %230 = load %struct.net_device*, %struct.net_device** %7, align 8
  %231 = load %struct.net_device*, %struct.net_device** %6, align 8
  %232 = call i32 @vlan_vids_del_by_dev(%struct.net_device* %230, %struct.net_device* %231)
  %233 = load %struct.bonding*, %struct.bonding** %10, align 8
  %234 = call i32 @bond_uses_primary(%struct.bonding* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %256, label %236

236:                                              ; preds = %229
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* @IFF_PROMISC, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load %struct.net_device*, %struct.net_device** %7, align 8
  %243 = call i32 @dev_set_promiscuity(%struct.net_device* %242, i32 -1)
  br label %244

244:                                              ; preds = %241, %236
  %245 = load i32, i32* %14, align 4
  %246 = load i32, i32* @IFF_ALLMULTI, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.net_device*, %struct.net_device** %7, align 8
  %251 = call i32 @dev_set_allmulti(%struct.net_device* %250, i32 -1)
  br label %252

252:                                              ; preds = %249, %244
  %253 = load %struct.net_device*, %struct.net_device** %6, align 8
  %254 = load %struct.net_device*, %struct.net_device** %7, align 8
  %255 = call i32 @bond_hw_addr_flush(%struct.net_device* %253, %struct.net_device* %254)
  br label %256

256:                                              ; preds = %252, %229
  %257 = load %struct.slave*, %struct.slave** %11, align 8
  %258 = call i32 @slave_disable_netpoll(%struct.slave* %257)
  %259 = load %struct.net_device*, %struct.net_device** %7, align 8
  %260 = call i32 @dev_close(%struct.net_device* %259)
  %261 = load %struct.bonding*, %struct.bonding** %10, align 8
  %262 = getelementptr inbounds %struct.bonding, %struct.bonding* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @BOND_FOM_ACTIVE, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %272, label %267

267:                                              ; preds = %256
  %268 = load %struct.bonding*, %struct.bonding** %10, align 8
  %269 = call i64 @BOND_MODE(%struct.bonding* %268)
  %270 = load i64, i64* @BOND_MODE_ACTIVEBACKUP, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %291

272:                                              ; preds = %267, %256
  %273 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.slave*, %struct.slave** %11, align 8
  %276 = getelementptr inbounds %struct.slave, %struct.slave* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.slave*, %struct.slave** %11, align 8
  %279 = getelementptr inbounds %struct.slave, %struct.slave* %278, i32 0, i32 1
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @bond_hw_addr_copy(i32 %274, i32 %277, i32 %282)
  %284 = load %struct.net_device*, %struct.net_device** %7, align 8
  %285 = getelementptr inbounds %struct.net_device, %struct.net_device* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %13, i32 0, i32 0
  store i32 %286, i32* %287, align 4
  %288 = load %struct.net_device*, %struct.net_device** %7, align 8
  %289 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr*
  %290 = call i32 @dev_set_mac_address(%struct.net_device* %288, %struct.sockaddr* %289, i32* null)
  br label %291

291:                                              ; preds = %272, %267
  %292 = load i32, i32* %9, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %291
  %295 = load %struct.net_device*, %struct.net_device** %7, align 8
  %296 = load %struct.slave*, %struct.slave** %11, align 8
  %297 = getelementptr inbounds %struct.slave, %struct.slave* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @__dev_set_mtu(%struct.net_device* %295, i32 %298)
  br label %306

300:                                              ; preds = %291
  %301 = load %struct.net_device*, %struct.net_device** %7, align 8
  %302 = load %struct.slave*, %struct.slave** %11, align 8
  %303 = getelementptr inbounds %struct.slave, %struct.slave* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @dev_set_mtu(%struct.net_device* %301, i32 %304)
  br label %306

306:                                              ; preds = %300, %294
  %307 = load %struct.net_device*, %struct.net_device** %7, align 8
  %308 = call i32 @netif_is_bond_master(%struct.net_device* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %317, label %310

310:                                              ; preds = %306
  %311 = load i32, i32* @IFF_BONDING, align 4
  %312 = xor i32 %311, -1
  %313 = load %struct.net_device*, %struct.net_device** %7, align 8
  %314 = getelementptr inbounds %struct.net_device, %struct.net_device* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %315, %312
  store i32 %316, i32* %314, align 4
  br label %317

317:                                              ; preds = %310, %306
  %318 = load %struct.slave*, %struct.slave** %11, align 8
  %319 = call i32 @bond_free_slave(%struct.slave* %318)
  store i32 0, i32* %5, align 4
  br label %320

320:                                              ; preds = %317, %48, %35
  %321 = load i32, i32* %5, align 4
  ret i32 %321
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_has_upper_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @slave_dbg(%struct.net_device*, %struct.net_device*, i8*) #1

declare dso_local i32 @block_netpoll_tx(...) #1

declare dso_local %struct.slave* @bond_get_slave_by_dev(%struct.bonding*, %struct.net_device*) #1

declare dso_local i32 @slave_info(%struct.net_device*, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @unblock_netpoll_tx(...) #1

declare dso_local i32 @bond_set_slave_inactive_flags(%struct.slave*, i32) #1

declare dso_local i32 @bond_sysfs_slave_del(%struct.slave*) #1

declare dso_local i32 @bond_get_stats(i32, i32*) #1

declare dso_local i32 @bond_upper_dev_unlink(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i64 @BOND_MODE(%struct.bonding*) #1

declare dso_local i32 @bond_3ad_unbind_slave(%struct.slave*) #1

declare dso_local i64 @bond_mode_can_use_xmit_hash(%struct.bonding*) #1

declare dso_local i32 @bond_update_slave_arr(%struct.bonding*, %struct.slave*) #1

declare dso_local i64 @bond_is_active_slave(%struct.slave*) #1

declare dso_local %struct.slave* @rcu_access_pointer(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i64 @ether_addr_equal_64bits(i32, i32) #1

declare dso_local i64 @bond_has_slaves(%struct.bonding*) #1

declare dso_local i32 @slave_warn(%struct.net_device*, %struct.net_device*, i8*, i32) #1

declare dso_local %struct.slave* @rtnl_dereference(i32) #1

declare dso_local i32 @bond_change_active_slave(%struct.bonding*, i32*) #1

declare dso_local i64 @bond_is_lb(%struct.bonding*) #1

declare dso_local i32 @bond_alb_deinit_slave(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @bond_select_active_slave(%struct.bonding*) #1

declare dso_local i32 @bond_set_carrier(%struct.bonding*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @call_netdevice_notifiers(i32, i32) #1

declare dso_local i32 @bond_compute_features(%struct.bonding*) #1

declare dso_local i32 @vlan_vids_del_by_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @bond_uses_primary(%struct.bonding*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @bond_hw_addr_flush(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @slave_disable_netpoll(%struct.slave*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @bond_hw_addr_copy(i32, i32, i32) #1

declare dso_local i32 @dev_set_mac_address(%struct.net_device*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @__dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @netif_is_bond_master(%struct.net_device*) #1

declare dso_local i32 @bond_free_slave(%struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
