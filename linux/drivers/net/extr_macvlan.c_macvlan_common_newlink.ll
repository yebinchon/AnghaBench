; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_common_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_common_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i64, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.macvlan_dev = type { i64, i32, i32, i32, %struct.macvlan_port*, %struct.net_device*, %struct.net_device* }
%struct.macvlan_port = type { i32, i32, i64 }

@IFLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@IFLA_ADDRESS = common dso_local global i64 0, align 8
@MACVLAN_FEATURES = common dso_local global i32 0, align 4
@MACVLAN_MODE_VEPA = common dso_local global i64 0, align 8
@IFLA_MACVLAN_MODE = common dso_local global i64 0, align 8
@IFLA_MACVLAN_FLAGS = common dso_local global i64 0, align 8
@MACVLAN_MODE_PASSTHRU = common dso_local global i64 0, align 8
@IFLA_MACVLAN_MACADDR_MODE = common dso_local global i64 0, align 8
@MACVLAN_MODE_SOURCE = common dso_local global i64 0, align 8
@IFF_MACVLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @macvlan_common_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.macvlan_dev*, align 8
  %13 = alloca %struct.macvlan_port*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.macvlan_dev* %19, %struct.macvlan_dev** %12, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %21 = load i64, i64* @IFLA_LINK, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %261

28:                                               ; preds = %5
  %29 = load %struct.net*, %struct.net** %7, align 8
  %30 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %31 = load i64, i64* @IFLA_LINK, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i8* @nla_get_u32(%struct.nlattr* %33)
  %35 = call %struct.net_device* @__dev_get_by_index(%struct.net* %29, i8* %34)
  store %struct.net_device* %35, %struct.net_device** %14, align 8
  %36 = load %struct.net_device*, %struct.net_device** %14, align 8
  %37 = icmp eq %struct.net_device* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %261

41:                                               ; preds = %28
  %42 = load %struct.net_device*, %struct.net_device** %14, align 8
  %43 = call i64 @netif_is_macvlan(%struct.net_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %14, align 8
  %47 = call %struct.net_device* @macvlan_dev_real_dev(%struct.net_device* %46)
  store %struct.net_device* %47, %struct.net_device** %14, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %50 = load i64, i64* @IFLA_MTU, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.net_device*, %struct.net_device** %14, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %72

60:                                               ; preds = %48
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %14, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %261

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i32, i32* @ETH_MIN_MTU, align 4
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %14, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %82 = load i64, i64* @IFLA_ADDRESS, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %81, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %72
  %87 = load %struct.net_device*, %struct.net_device** %8, align 8
  %88 = call i32 @eth_hw_addr_random(%struct.net_device* %87)
  br label %89

89:                                               ; preds = %86, %72
  %90 = load %struct.net_device*, %struct.net_device** %14, align 8
  %91 = call i32 @netif_is_macvlan_port(%struct.net_device* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load %struct.net_device*, %struct.net_device** %14, align 8
  %95 = call i32 @macvlan_port_create(%struct.net_device* %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %6, align 4
  br label %261

100:                                              ; preds = %93
  store i32 1, i32* %17, align 4
  br label %101

101:                                              ; preds = %100, %89
  %102 = load %struct.net_device*, %struct.net_device** %14, align 8
  %103 = call %struct.macvlan_port* @macvlan_port_get_rtnl(%struct.net_device* %102)
  store %struct.macvlan_port* %103, %struct.macvlan_port** %13, align 8
  %104 = load %struct.macvlan_port*, %struct.macvlan_port** %13, align 8
  %105 = call i64 @macvlan_passthru(%struct.macvlan_port* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %15, align 4
  br label %247

110:                                              ; preds = %101
  %111 = load %struct.net_device*, %struct.net_device** %14, align 8
  %112 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %113 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %112, i32 0, i32 6
  store %struct.net_device* %111, %struct.net_device** %113, align 8
  %114 = load %struct.net_device*, %struct.net_device** %8, align 8
  %115 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %116 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %115, i32 0, i32 5
  store %struct.net_device* %114, %struct.net_device** %116, align 8
  %117 = load %struct.macvlan_port*, %struct.macvlan_port** %13, align 8
  %118 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %119 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %118, i32 0, i32 4
  store %struct.macvlan_port* %117, %struct.macvlan_port** %119, align 8
  %120 = load i32, i32* @MACVLAN_FEATURES, align 4
  %121 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %122 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load i64, i64* @MACVLAN_MODE_VEPA, align 8
  %124 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %125 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %127 = icmp ne %struct.nlattr** %126, null
  br i1 %127, label %128, label %143

128:                                              ; preds = %110
  %129 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %130 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %131 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %129, i64 %130
  %132 = load %struct.nlattr*, %struct.nlattr** %131, align 8
  %133 = icmp ne %struct.nlattr* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %136 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %137 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %135, i64 %136
  %138 = load %struct.nlattr*, %struct.nlattr** %137, align 8
  %139 = call i8* @nla_get_u32(%struct.nlattr* %138)
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %142 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %134, %128, %110
  %144 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %145 = icmp ne %struct.nlattr** %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %143
  %147 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %148 = load i64, i64* @IFLA_MACVLAN_FLAGS, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %147, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = icmp ne %struct.nlattr* %150, null
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %154 = load i64, i64* @IFLA_MACVLAN_FLAGS, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %153, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = call i32 @nla_get_u16(%struct.nlattr* %156)
  %158 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %159 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %152, %146, %143
  %161 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %162 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @MACVLAN_MODE_PASSTHRU, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %160
  %167 = load %struct.macvlan_port*, %struct.macvlan_port** %13, align 8
  %168 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %15, align 4
  br label %247

174:                                              ; preds = %166
  %175 = load %struct.macvlan_port*, %struct.macvlan_port** %13, align 8
  %176 = call i32 @macvlan_set_passthru(%struct.macvlan_port* %175)
  %177 = load %struct.net_device*, %struct.net_device** %8, align 8
  %178 = load %struct.net_device*, %struct.net_device** %14, align 8
  %179 = call i32 @eth_hw_addr_inherit(%struct.net_device* %177, %struct.net_device* %178)
  br label %180

180:                                              ; preds = %174, %160
  %181 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %182 = icmp ne %struct.nlattr** %181, null
  br i1 %182, label %183, label %213

183:                                              ; preds = %180
  %184 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %185 = load i64, i64* @IFLA_MACVLAN_MACADDR_MODE, align 8
  %186 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %184, i64 %185
  %187 = load %struct.nlattr*, %struct.nlattr** %186, align 8
  %188 = icmp ne %struct.nlattr* %187, null
  br i1 %188, label %189, label %213

189:                                              ; preds = %183
  %190 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %191 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @MACVLAN_MODE_SOURCE, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %15, align 4
  br label %247

198:                                              ; preds = %189
  %199 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %200 = load i64, i64* @IFLA_MACVLAN_MACADDR_MODE, align 8
  %201 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %199, i64 %200
  %202 = load %struct.nlattr*, %struct.nlattr** %201, align 8
  %203 = call i8* @nla_get_u32(%struct.nlattr* %202)
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %16, align 4
  %205 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %208 = call i32 @macvlan_changelink_sources(%struct.macvlan_dev* %205, i32 %206, %struct.nlattr** %207)
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %198
  br label %247

212:                                              ; preds = %198
  br label %213

213:                                              ; preds = %212, %183, %180
  %214 = load %struct.net_device*, %struct.net_device** %8, align 8
  %215 = call i32 @register_netdevice(%struct.net_device* %214)
  store i32 %215, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %247

219:                                              ; preds = %213
  %220 = load i32, i32* @IFF_MACVLAN, align 4
  %221 = load %struct.net_device*, %struct.net_device** %8, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  %225 = load %struct.net_device*, %struct.net_device** %14, align 8
  %226 = load %struct.net_device*, %struct.net_device** %8, align 8
  %227 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %228 = call i32 @netdev_upper_dev_link(%struct.net_device* %225, %struct.net_device* %226, %struct.netlink_ext_ack* %227)
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %15, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %219
  br label %243

232:                                              ; preds = %219
  %233 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %234 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %233, i32 0, i32 1
  %235 = load %struct.macvlan_port*, %struct.macvlan_port** %13, align 8
  %236 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %235, i32 0, i32 1
  %237 = call i32 @list_add_tail_rcu(i32* %234, i32* %236)
  %238 = load %struct.net_device*, %struct.net_device** %14, align 8
  %239 = load %struct.net_device*, %struct.net_device** %8, align 8
  %240 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %238, %struct.net_device* %239)
  %241 = load %struct.net_device*, %struct.net_device** %8, align 8
  %242 = call i32 @linkwatch_fire_event(%struct.net_device* %241)
  store i32 0, i32* %6, align 4
  br label %261

243:                                              ; preds = %231
  %244 = load %struct.net_device*, %struct.net_device** %8, align 8
  %245 = call i32 @unregister_netdevice(%struct.net_device* %244)
  %246 = load i32, i32* %15, align 4
  store i32 %246, i32* %6, align 4
  br label %261

247:                                              ; preds = %218, %211, %195, %171, %107
  %248 = load i32, i32* %17, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %247
  %251 = load %struct.net_device*, %struct.net_device** %14, align 8
  %252 = call %struct.macvlan_port* @macvlan_port_get_rtnl(%struct.net_device* %251)
  %253 = icmp ne %struct.macvlan_port* %252, null
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load %struct.macvlan_port*, %struct.macvlan_port** %13, align 8
  %256 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @macvlan_port_destroy(i32 %257)
  br label %259

259:                                              ; preds = %254, %250, %247
  %260 = load i32, i32* %15, align 4
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %259, %243, %232, %98, %68, %38, %25
  %262 = load i32, i32* %6, align 4
  ret i32 %262
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i8*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local %struct.net_device* @macvlan_dev_real_dev(%struct.net_device*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @netif_is_macvlan_port(%struct.net_device*) #1

declare dso_local i32 @macvlan_port_create(%struct.net_device*) #1

declare dso_local %struct.macvlan_port* @macvlan_port_get_rtnl(%struct.net_device*) #1

declare dso_local i64 @macvlan_passthru(%struct.macvlan_port*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @macvlan_set_passthru(%struct.macvlan_port*) #1

declare dso_local i32 @eth_hw_addr_inherit(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @macvlan_changelink_sources(%struct.macvlan_dev*, i32, %struct.nlattr**) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_link(%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @netif_stacked_transfer_operstate(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @linkwatch_fire_event(%struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @macvlan_port_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
