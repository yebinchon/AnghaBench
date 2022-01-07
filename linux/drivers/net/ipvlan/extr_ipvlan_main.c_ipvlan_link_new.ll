; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_link_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_link_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i64, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ipvl_dev = type { i32, %struct.ipvl_port*, i32, i32, i32, %struct.net_device*, %struct.net_device* }
%struct.ipvl_port = type { i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i32 }

@IPVLAN_MODE_L3 = common dso_local global i8* null, align 8
@IFLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Master is either lo or non-ether device\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Device is already in use.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IPVLAN_FEATURES = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@IFF_NO_RX_HANDLER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IFLA_IPVLAN_FLAGS = common dso_local global i64 0, align 8
@IFLA_IPVLAN_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipvlan_link_new(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.ipvl_dev*, align 8
  %13 = alloca %struct.ipvl_port*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ipvl_dev*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.ipvl_dev* %19, %struct.ipvl_dev** %12, align 8
  %20 = load i8*, i8** @IPVLAN_MODE_L3, align 8
  store i8* %20, i8** %16, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %22 = load i64, i64* @IFLA_LINK, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %255

29:                                               ; preds = %5
  %30 = load %struct.net*, %struct.net** %7, align 8
  %31 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %32 = load i64, i64* @IFLA_LINK, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_u32(%struct.nlattr* %34)
  %36 = call %struct.net_device* @__dev_get_by_index(%struct.net* %30, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %14, align 8
  %37 = load %struct.net_device*, %struct.net_device** %14, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %255

42:                                               ; preds = %29
  %43 = load %struct.net_device*, %struct.net_device** %14, align 8
  %44 = call i64 @netif_is_ipvlan(%struct.net_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  %47 = load %struct.net_device*, %struct.net_device** %14, align 8
  %48 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %47)
  store %struct.ipvl_dev* %48, %struct.ipvl_dev** %17, align 8
  %49 = load %struct.ipvl_dev*, %struct.ipvl_dev** %17, align 8
  %50 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %49, i32 0, i32 6
  %51 = load %struct.net_device*, %struct.net_device** %50, align 8
  store %struct.net_device* %51, %struct.net_device** %14, align 8
  %52 = load %struct.net_device*, %struct.net_device** %14, align 8
  %53 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CAP_NET_ADMIN, align 4
  %57 = call i32 @ns_capable(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %255

62:                                               ; preds = %46
  br label %96

63:                                               ; preds = %42
  %64 = load %struct.net_device*, %struct.net_device** %14, align 8
  %65 = call i32 @netif_is_ipvlan_port(%struct.net_device* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %63
  %68 = load %struct.net_device*, %struct.net_device** %14, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ARPHRD_ETHER, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = load %struct.net_device*, %struct.net_device** %14, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IFF_LOOPBACK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73, %67
  %81 = load %struct.net_device*, %struct.net_device** %14, align 8
  %82 = call i32 @netdev_err(%struct.net_device* %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %255

85:                                               ; preds = %73
  %86 = load %struct.net_device*, %struct.net_device** %14, align 8
  %87 = call i64 @netdev_is_rx_handler_busy(%struct.net_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.net_device*, %struct.net_device** %14, align 8
  %91 = call i32 @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %255

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %63
  br label %96

96:                                               ; preds = %95, %62
  %97 = load %struct.net_device*, %struct.net_device** %14, align 8
  %98 = load %struct.ipvl_dev*, %struct.ipvl_dev** %12, align 8
  %99 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %98, i32 0, i32 6
  store %struct.net_device* %97, %struct.net_device** %99, align 8
  %100 = load %struct.net_device*, %struct.net_device** %8, align 8
  %101 = load %struct.ipvl_dev*, %struct.ipvl_dev** %12, align 8
  %102 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %101, i32 0, i32 5
  store %struct.net_device* %100, %struct.net_device** %102, align 8
  %103 = load i32, i32* @IPVLAN_FEATURES, align 4
  %104 = load %struct.ipvl_dev*, %struct.ipvl_dev** %12, align 8
  %105 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %107 = load i64, i64* @IFLA_MTU, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %106, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %96
  %112 = load %struct.ipvl_dev*, %struct.ipvl_dev** %12, align 8
  %113 = load %struct.net_device*, %struct.net_device** %14, align 8
  %114 = call i32 @ipvlan_adjust_mtu(%struct.ipvl_dev* %112, %struct.net_device* %113)
  br label %115

115:                                              ; preds = %111, %96
  %116 = load %struct.ipvl_dev*, %struct.ipvl_dev** %12, align 8
  %117 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %116, i32 0, i32 3
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load %struct.ipvl_dev*, %struct.ipvl_dev** %12, align 8
  %120 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %119, i32 0, i32 2
  %121 = call i32 @spin_lock_init(i32* %120)
  %122 = load %struct.net_device*, %struct.net_device** %8, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.net_device*, %struct.net_device** %14, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ETH_ALEN, align 4
  %129 = call i32 @memcpy(i32 %124, i32 %127, i32 %128)
  %130 = load i32, i32* @IFF_NO_RX_HANDLER, align 4
  %131 = load %struct.net_device*, %struct.net_device** %8, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.net_device*, %struct.net_device** %8, align 8
  %136 = call i32 @register_netdevice(%struct.net_device* %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %115
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %6, align 4
  br label %255

141:                                              ; preds = %115
  %142 = load %struct.net_device*, %struct.net_device** %14, align 8
  %143 = call %struct.ipvl_port* @ipvlan_port_get_rtnl(%struct.net_device* %142)
  store %struct.ipvl_port* %143, %struct.ipvl_port** %13, align 8
  %144 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %145 = load %struct.ipvl_dev*, %struct.ipvl_dev** %12, align 8
  %146 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %145, i32 0, i32 1
  store %struct.ipvl_port* %144, %struct.ipvl_port** %146, align 8
  %147 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %148 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 65534
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %153 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %141
  %155 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %156 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %155, i32 0, i32 1
  %157 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %158 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i32 @ida_simple_get(i32* %156, i32 %159, i32 65534, i32 %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %154
  %165 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %166 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %165, i32 0, i32 1
  %167 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %168 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i32 @ida_simple_get(i32* %166, i32 1, i32 %169, i32 %170)
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %164, %154
  %173 = load i32, i32* %15, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %251

176:                                              ; preds = %172
  %177 = load i32, i32* %15, align 4
  %178 = load %struct.net_device*, %struct.net_device** %8, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  %182 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %183 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.net_device*, %struct.net_device** %14, align 8
  %185 = load %struct.net_device*, %struct.net_device** %8, align 8
  %186 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %187 = call i32 @netdev_upper_dev_link(%struct.net_device* %184, %struct.net_device* %185, %struct.netlink_ext_ack* %186)
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %176
  br label %244

191:                                              ; preds = %176
  %192 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %193 = icmp ne %struct.nlattr** %192, null
  br i1 %193, label %194, label %208

194:                                              ; preds = %191
  %195 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %196 = load i64, i64* @IFLA_IPVLAN_FLAGS, align 8
  %197 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %195, i64 %196
  %198 = load %struct.nlattr*, %struct.nlattr** %197, align 8
  %199 = icmp ne %struct.nlattr* %198, null
  br i1 %199, label %200, label %208

200:                                              ; preds = %194
  %201 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %202 = load i64, i64* @IFLA_IPVLAN_FLAGS, align 8
  %203 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %201, i64 %202
  %204 = load %struct.nlattr*, %struct.nlattr** %203, align 8
  %205 = call i8* @nla_get_u16(%struct.nlattr* %204)
  %206 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %207 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %200, %194, %191
  %209 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %210 = icmp ne %struct.nlattr** %209, null
  br i1 %210, label %211, label %223

211:                                              ; preds = %208
  %212 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %213 = load i64, i64* @IFLA_IPVLAN_MODE, align 8
  %214 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %212, i64 %213
  %215 = load %struct.nlattr*, %struct.nlattr** %214, align 8
  %216 = icmp ne %struct.nlattr* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %219 = load i64, i64* @IFLA_IPVLAN_MODE, align 8
  %220 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %218, i64 %219
  %221 = load %struct.nlattr*, %struct.nlattr** %220, align 8
  %222 = call i8* @nla_get_u16(%struct.nlattr* %221)
  store i8* %222, i8** %16, align 8
  br label %223

223:                                              ; preds = %217, %211, %208
  %224 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %225 = load i8*, i8** %16, align 8
  %226 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %227 = call i32 @ipvlan_set_port_mode(%struct.ipvl_port* %224, i8* %225, %struct.netlink_ext_ack* %226)
  store i32 %227, i32* %15, align 4
  %228 = load i32, i32* %15, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %223
  br label %240

231:                                              ; preds = %223
  %232 = load %struct.ipvl_dev*, %struct.ipvl_dev** %12, align 8
  %233 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %232, i32 0, i32 0
  %234 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %235 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %234, i32 0, i32 2
  %236 = call i32 @list_add_tail_rcu(i32* %233, i32* %235)
  %237 = load %struct.net_device*, %struct.net_device** %14, align 8
  %238 = load %struct.net_device*, %struct.net_device** %8, align 8
  %239 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %237, %struct.net_device* %238)
  store i32 0, i32* %6, align 4
  br label %255

240:                                              ; preds = %230
  %241 = load %struct.net_device*, %struct.net_device** %14, align 8
  %242 = load %struct.net_device*, %struct.net_device** %8, align 8
  %243 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %241, %struct.net_device* %242)
  br label %244

244:                                              ; preds = %240, %190
  %245 = load %struct.ipvl_port*, %struct.ipvl_port** %13, align 8
  %246 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %245, i32 0, i32 1
  %247 = load %struct.net_device*, %struct.net_device** %8, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @ida_simple_remove(i32* %246, i32 %249)
  br label %251

251:                                              ; preds = %244, %175
  %252 = load %struct.net_device*, %struct.net_device** %8, align 8
  %253 = call i32 @unregister_netdevice(%struct.net_device* %252)
  %254 = load i32, i32* %15, align 4
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %251, %231, %139, %89, %80, %59, %39, %26
  %256 = load i32, i32* %6, align 4
  ret i32 %256
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @netif_is_ipvlan(%struct.net_device*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @netif_is_ipvlan_port(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @netdev_is_rx_handler_busy(%struct.net_device*) #1

declare dso_local i32 @ipvlan_adjust_mtu(%struct.ipvl_dev*, %struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local %struct.ipvl_port* @ipvlan_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_upper_dev_link(%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @ipvlan_set_port_mode(%struct.ipvl_port*, i8*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @netif_stacked_transfer_operstate(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
