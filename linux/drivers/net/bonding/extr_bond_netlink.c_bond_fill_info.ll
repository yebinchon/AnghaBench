; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_netlink.c_bond_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.bonding = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64* }
%struct.nlattr = type { i32 }
%struct.slave = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ad_info = type { i32, i32, i32, i32, i32 }

@IFLA_BOND_MODE = common dso_local global i32 0, align 4
@IFLA_BOND_ACTIVE_SLAVE = common dso_local global i32 0, align 4
@IFLA_BOND_MIIMON = common dso_local global i32 0, align 4
@IFLA_BOND_UPDELAY = common dso_local global i32 0, align 4
@IFLA_BOND_DOWNDELAY = common dso_local global i32 0, align 4
@IFLA_BOND_PEER_NOTIF_DELAY = common dso_local global i32 0, align 4
@IFLA_BOND_USE_CARRIER = common dso_local global i32 0, align 4
@IFLA_BOND_ARP_INTERVAL = common dso_local global i32 0, align 4
@IFLA_BOND_ARP_IP_TARGET = common dso_local global i32 0, align 4
@BOND_MAX_ARP_TARGETS = common dso_local global i32 0, align 4
@IFLA_BOND_ARP_VALIDATE = common dso_local global i32 0, align 4
@IFLA_BOND_ARP_ALL_TARGETS = common dso_local global i32 0, align 4
@IFLA_BOND_PRIMARY = common dso_local global i32 0, align 4
@IFLA_BOND_PRIMARY_RESELECT = common dso_local global i32 0, align 4
@IFLA_BOND_FAIL_OVER_MAC = common dso_local global i32 0, align 4
@IFLA_BOND_XMIT_HASH_POLICY = common dso_local global i32 0, align 4
@IFLA_BOND_RESEND_IGMP = common dso_local global i32 0, align 4
@IFLA_BOND_NUM_PEER_NOTIF = common dso_local global i32 0, align 4
@IFLA_BOND_ALL_SLAVES_ACTIVE = common dso_local global i32 0, align 4
@IFLA_BOND_MIN_LINKS = common dso_local global i32 0, align 4
@IFLA_BOND_LP_INTERVAL = common dso_local global i32 0, align 4
@IFLA_BOND_PACKETS_PER_SLAVE = common dso_local global i32 0, align 4
@IFLA_BOND_AD_LACP_RATE = common dso_local global i32 0, align 4
@IFLA_BOND_AD_SELECT = common dso_local global i32 0, align 4
@IFLA_BOND_TLB_DYNAMIC_LB = common dso_local global i32 0, align 4
@BOND_MODE_8023AD = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@IFLA_BOND_AD_ACTOR_SYS_PRIO = common dso_local global i32 0, align 4
@IFLA_BOND_AD_USER_PORT_KEY = common dso_local global i32 0, align 4
@IFLA_BOND_AD_ACTOR_SYSTEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IFLA_BOND_AD_INFO = common dso_local global i32 0, align 4
@IFLA_BOND_AD_INFO_AGGREGATOR = common dso_local global i32 0, align 4
@IFLA_BOND_AD_INFO_NUM_PORTS = common dso_local global i32 0, align 4
@IFLA_BOND_AD_INFO_ACTOR_KEY = common dso_local global i32 0, align 4
@IFLA_BOND_AD_INFO_PARTNER_KEY = common dso_local global i32 0, align 4
@IFLA_BOND_AD_INFO_PARTNER_MAC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bond_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bonding*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.slave*, align 8
  %13 = alloca %struct.ad_info, align 4
  %14 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.bonding* @netdev_priv(%struct.net_device* %15)
  store %struct.bonding* %16, %struct.bonding** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @IFLA_BOND_MODE, align 4
  %19 = load %struct.bonding*, %struct.bonding** %6, align 8
  %20 = call i64 @BOND_MODE(%struct.bonding* %19)
  %21 = call i64 @nla_put_u8(%struct.sk_buff* %17, i32 %18, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %418

24:                                               ; preds = %2
  %25 = load %struct.bonding*, %struct.bonding** %6, align 8
  %26 = call i32 @bond_option_active_slave_get_ifindex(%struct.bonding* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @IFLA_BOND_ACTIVE_SLAVE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %418

36:                                               ; preds = %29, %24
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @IFLA_BOND_MIIMON, align 4
  %39 = load %struct.bonding*, %struct.bonding** %6, align 8
  %40 = getelementptr inbounds %struct.bonding, %struct.bonding* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @nla_put_u32(%struct.sk_buff* %37, i32 %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %418

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @IFLA_BOND_UPDELAY, align 4
  %49 = load %struct.bonding*, %struct.bonding** %6, align 8
  %50 = getelementptr inbounds %struct.bonding, %struct.bonding* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bonding*, %struct.bonding** %6, align 8
  %54 = getelementptr inbounds %struct.bonding, %struct.bonding* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul i32 %52, %56
  %58 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %418

61:                                               ; preds = %46
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* @IFLA_BOND_DOWNDELAY, align 4
  %64 = load %struct.bonding*, %struct.bonding** %6, align 8
  %65 = getelementptr inbounds %struct.bonding, %struct.bonding* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.bonding*, %struct.bonding** %6, align 8
  %69 = getelementptr inbounds %struct.bonding, %struct.bonding* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul i32 %67, %71
  %73 = call i64 @nla_put_u32(%struct.sk_buff* %62, i32 %63, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  br label %418

76:                                               ; preds = %61
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* @IFLA_BOND_PEER_NOTIF_DELAY, align 4
  %79 = load %struct.bonding*, %struct.bonding** %6, align 8
  %80 = getelementptr inbounds %struct.bonding, %struct.bonding* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bonding*, %struct.bonding** %6, align 8
  %84 = getelementptr inbounds %struct.bonding, %struct.bonding* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul i32 %82, %86
  %88 = call i64 @nla_put_u32(%struct.sk_buff* %77, i32 %78, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %418

91:                                               ; preds = %76
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load i32, i32* @IFLA_BOND_USE_CARRIER, align 4
  %94 = load %struct.bonding*, %struct.bonding** %6, align 8
  %95 = getelementptr inbounds %struct.bonding, %struct.bonding* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @nla_put_u8(%struct.sk_buff* %92, i32 %93, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %418

101:                                              ; preds = %91
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = load i32, i32* @IFLA_BOND_ARP_INTERVAL, align 4
  %104 = load %struct.bonding*, %struct.bonding** %6, align 8
  %105 = getelementptr inbounds %struct.bonding, %struct.bonding* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @nla_put_u32(%struct.sk_buff* %102, i32 %103, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %418

111:                                              ; preds = %101
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load i32, i32* @IFLA_BOND_ARP_IP_TARGET, align 4
  %114 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %112, i32 %113)
  store %struct.nlattr* %114, %struct.nlattr** %11, align 8
  %115 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %116 = icmp ne %struct.nlattr* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %418

118:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %149, %118
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @BOND_MAX_ARP_TARGETS, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %152

123:                                              ; preds = %119
  %124 = load %struct.bonding*, %struct.bonding** %6, align 8
  %125 = getelementptr inbounds %struct.bonding, %struct.bonding* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 23
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %123
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.bonding*, %struct.bonding** %6, align 8
  %137 = getelementptr inbounds %struct.bonding, %struct.bonding* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 23
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @nla_put_be32(%struct.sk_buff* %134, i32 %135, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %418

147:                                              ; preds = %133
  store i32 1, i32* %10, align 4
  br label %148

148:                                              ; preds = %147, %123
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %119

152:                                              ; preds = %119
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %158 = call i32 @nla_nest_end(%struct.sk_buff* %156, %struct.nlattr* %157)
  br label %163

159:                                              ; preds = %152
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %162 = call i32 @nla_nest_cancel(%struct.sk_buff* %160, %struct.nlattr* %161)
  br label %163

163:                                              ; preds = %159, %155
  %164 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %165 = load i32, i32* @IFLA_BOND_ARP_VALIDATE, align 4
  %166 = load %struct.bonding*, %struct.bonding** %6, align 8
  %167 = getelementptr inbounds %struct.bonding, %struct.bonding* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @nla_put_u32(%struct.sk_buff* %164, i32 %165, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %418

173:                                              ; preds = %163
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = load i32, i32* @IFLA_BOND_ARP_ALL_TARGETS, align 4
  %176 = load %struct.bonding*, %struct.bonding** %6, align 8
  %177 = getelementptr inbounds %struct.bonding, %struct.bonding* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @nla_put_u32(%struct.sk_buff* %174, i32 %175, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %418

183:                                              ; preds = %173
  %184 = load %struct.bonding*, %struct.bonding** %6, align 8
  %185 = getelementptr inbounds %struct.bonding, %struct.bonding* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call %struct.slave* @rtnl_dereference(i32 %186)
  store %struct.slave* %187, %struct.slave** %12, align 8
  %188 = load %struct.slave*, %struct.slave** %12, align 8
  %189 = icmp ne %struct.slave* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %183
  %191 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %192 = load i32, i32* @IFLA_BOND_PRIMARY, align 4
  %193 = load %struct.slave*, %struct.slave** %12, align 8
  %194 = getelementptr inbounds %struct.slave, %struct.slave* %193, i32 0, i32 0
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @nla_put_u32(%struct.sk_buff* %191, i32 %192, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %418

201:                                              ; preds = %190, %183
  %202 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %203 = load i32, i32* @IFLA_BOND_PRIMARY_RESELECT, align 4
  %204 = load %struct.bonding*, %struct.bonding** %6, align 8
  %205 = getelementptr inbounds %struct.bonding, %struct.bonding* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @nla_put_u8(%struct.sk_buff* %202, i32 %203, i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  br label %418

211:                                              ; preds = %201
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = load i32, i32* @IFLA_BOND_FAIL_OVER_MAC, align 4
  %214 = load %struct.bonding*, %struct.bonding** %6, align 8
  %215 = getelementptr inbounds %struct.bonding, %struct.bonding* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 9
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @nla_put_u8(%struct.sk_buff* %212, i32 %213, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %418

221:                                              ; preds = %211
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = load i32, i32* @IFLA_BOND_XMIT_HASH_POLICY, align 4
  %224 = load %struct.bonding*, %struct.bonding** %6, align 8
  %225 = getelementptr inbounds %struct.bonding, %struct.bonding* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 10
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @nla_put_u8(%struct.sk_buff* %222, i32 %223, i64 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %418

231:                                              ; preds = %221
  %232 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %233 = load i32, i32* @IFLA_BOND_RESEND_IGMP, align 4
  %234 = load %struct.bonding*, %struct.bonding** %6, align 8
  %235 = getelementptr inbounds %struct.bonding, %struct.bonding* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 11
  %237 = load i32, i32* %236, align 8
  %238 = call i64 @nla_put_u32(%struct.sk_buff* %232, i32 %233, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %231
  br label %418

241:                                              ; preds = %231
  %242 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %243 = load i32, i32* @IFLA_BOND_NUM_PEER_NOTIF, align 4
  %244 = load %struct.bonding*, %struct.bonding** %6, align 8
  %245 = getelementptr inbounds %struct.bonding, %struct.bonding* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 12
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @nla_put_u8(%struct.sk_buff* %242, i32 %243, i64 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  br label %418

251:                                              ; preds = %241
  %252 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %253 = load i32, i32* @IFLA_BOND_ALL_SLAVES_ACTIVE, align 4
  %254 = load %struct.bonding*, %struct.bonding** %6, align 8
  %255 = getelementptr inbounds %struct.bonding, %struct.bonding* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 13
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @nla_put_u8(%struct.sk_buff* %252, i32 %253, i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %251
  br label %418

261:                                              ; preds = %251
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = load i32, i32* @IFLA_BOND_MIN_LINKS, align 4
  %264 = load %struct.bonding*, %struct.bonding** %6, align 8
  %265 = getelementptr inbounds %struct.bonding, %struct.bonding* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 14
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @nla_put_u32(%struct.sk_buff* %262, i32 %263, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %261
  br label %418

271:                                              ; preds = %261
  %272 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %273 = load i32, i32* @IFLA_BOND_LP_INTERVAL, align 4
  %274 = load %struct.bonding*, %struct.bonding** %6, align 8
  %275 = getelementptr inbounds %struct.bonding, %struct.bonding* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 15
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @nla_put_u32(%struct.sk_buff* %272, i32 %273, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %271
  br label %418

281:                                              ; preds = %271
  %282 = load %struct.bonding*, %struct.bonding** %6, align 8
  %283 = getelementptr inbounds %struct.bonding, %struct.bonding* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 16
  %285 = load i32, i32* %284, align 8
  store i32 %285, i32* %7, align 4
  %286 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %287 = load i32, i32* @IFLA_BOND_PACKETS_PER_SLAVE, align 4
  %288 = load i32, i32* %7, align 4
  %289 = call i64 @nla_put_u32(%struct.sk_buff* %286, i32 %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %281
  br label %418

292:                                              ; preds = %281
  %293 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %294 = load i32, i32* @IFLA_BOND_AD_LACP_RATE, align 4
  %295 = load %struct.bonding*, %struct.bonding** %6, align 8
  %296 = getelementptr inbounds %struct.bonding, %struct.bonding* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 17
  %298 = load i64, i64* %297, align 8
  %299 = call i64 @nla_put_u8(%struct.sk_buff* %293, i32 %294, i64 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %292
  br label %418

302:                                              ; preds = %292
  %303 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %304 = load i32, i32* @IFLA_BOND_AD_SELECT, align 4
  %305 = load %struct.bonding*, %struct.bonding** %6, align 8
  %306 = getelementptr inbounds %struct.bonding, %struct.bonding* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 18
  %308 = load i64, i64* %307, align 8
  %309 = call i64 @nla_put_u8(%struct.sk_buff* %303, i32 %304, i64 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %302
  br label %418

312:                                              ; preds = %302
  %313 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %314 = load i32, i32* @IFLA_BOND_TLB_DYNAMIC_LB, align 4
  %315 = load %struct.bonding*, %struct.bonding** %6, align 8
  %316 = getelementptr inbounds %struct.bonding, %struct.bonding* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 19
  %318 = load i64, i64* %317, align 8
  %319 = call i64 @nla_put_u8(%struct.sk_buff* %313, i32 %314, i64 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %312
  br label %418

322:                                              ; preds = %312
  %323 = load %struct.bonding*, %struct.bonding** %6, align 8
  %324 = call i64 @BOND_MODE(%struct.bonding* %323)
  %325 = load i64, i64* @BOND_MODE_8023AD, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %417

327:                                              ; preds = %322
  %328 = load i32, i32* @CAP_NET_ADMIN, align 4
  %329 = call i64 @capable(i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %362

331:                                              ; preds = %327
  %332 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %333 = load i32, i32* @IFLA_BOND_AD_ACTOR_SYS_PRIO, align 4
  %334 = load %struct.bonding*, %struct.bonding** %6, align 8
  %335 = getelementptr inbounds %struct.bonding, %struct.bonding* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 22
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @nla_put_u16(%struct.sk_buff* %332, i32 %333, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %331
  br label %418

341:                                              ; preds = %331
  %342 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %343 = load i32, i32* @IFLA_BOND_AD_USER_PORT_KEY, align 4
  %344 = load %struct.bonding*, %struct.bonding** %6, align 8
  %345 = getelementptr inbounds %struct.bonding, %struct.bonding* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 21
  %347 = load i32, i32* %346, align 4
  %348 = call i64 @nla_put_u16(%struct.sk_buff* %342, i32 %343, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %341
  br label %418

351:                                              ; preds = %341
  %352 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %353 = load i32, i32* @IFLA_BOND_AD_ACTOR_SYSTEM, align 4
  %354 = load i32, i32* @ETH_ALEN, align 4
  %355 = load %struct.bonding*, %struct.bonding** %6, align 8
  %356 = getelementptr inbounds %struct.bonding, %struct.bonding* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 20
  %358 = call i64 @nla_put(%struct.sk_buff* %352, i32 %353, i32 %354, i32* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %351
  br label %418

361:                                              ; preds = %351
  br label %362

362:                                              ; preds = %361, %327
  %363 = load %struct.bonding*, %struct.bonding** %6, align 8
  %364 = call i32 @bond_3ad_get_active_agg_info(%struct.bonding* %363, %struct.ad_info* %13)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %416, label %366

366:                                              ; preds = %362
  %367 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %368 = load i32, i32* @IFLA_BOND_AD_INFO, align 4
  %369 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %367, i32 %368)
  store %struct.nlattr* %369, %struct.nlattr** %14, align 8
  %370 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %371 = icmp ne %struct.nlattr* %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %366
  br label %418

373:                                              ; preds = %366
  %374 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %375 = load i32, i32* @IFLA_BOND_AD_INFO_AGGREGATOR, align 4
  %376 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %13, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = call i64 @nla_put_u16(%struct.sk_buff* %374, i32 %375, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %373
  br label %418

381:                                              ; preds = %373
  %382 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %383 = load i32, i32* @IFLA_BOND_AD_INFO_NUM_PORTS, align 4
  %384 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %13, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = call i64 @nla_put_u16(%struct.sk_buff* %382, i32 %383, i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %381
  br label %418

389:                                              ; preds = %381
  %390 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %391 = load i32, i32* @IFLA_BOND_AD_INFO_ACTOR_KEY, align 4
  %392 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %13, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = call i64 @nla_put_u16(%struct.sk_buff* %390, i32 %391, i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %389
  br label %418

397:                                              ; preds = %389
  %398 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %399 = load i32, i32* @IFLA_BOND_AD_INFO_PARTNER_KEY, align 4
  %400 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %13, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = call i64 @nla_put_u16(%struct.sk_buff* %398, i32 %399, i32 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %397
  br label %418

405:                                              ; preds = %397
  %406 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %407 = load i32, i32* @IFLA_BOND_AD_INFO_PARTNER_MAC, align 4
  %408 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %13, i32 0, i32 0
  %409 = call i64 @nla_put(%struct.sk_buff* %406, i32 %407, i32 4, i32* %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %405
  br label %418

412:                                              ; preds = %405
  %413 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %414 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %415 = call i32 @nla_nest_end(%struct.sk_buff* %413, %struct.nlattr* %414)
  br label %416

416:                                              ; preds = %412, %362
  br label %417

417:                                              ; preds = %416, %322
  store i32 0, i32* %3, align 4
  br label %421

418:                                              ; preds = %411, %404, %396, %388, %380, %372, %360, %350, %340, %321, %311, %301, %291, %280, %270, %260, %250, %240, %230, %220, %210, %200, %182, %172, %146, %117, %110, %100, %90, %75, %60, %45, %35, %23
  %419 = load i32, i32* @EMSGSIZE, align 4
  %420 = sub nsw i32 0, %419
  store i32 %420, i32* %3, align 4
  br label %421

421:                                              ; preds = %418, %417
  %422 = load i32, i32* %3, align 4
  ret i32 %422
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @BOND_MODE(%struct.bonding*) #1

declare dso_local i32 @bond_option_active_slave_get_ifindex(%struct.bonding*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local %struct.slave* @rtnl_dereference(i32) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @bond_3ad_get_active_agg_info(%struct.bonding*, %struct.ad_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
