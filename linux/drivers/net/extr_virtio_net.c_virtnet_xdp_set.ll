; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_xdp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_xdp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.bpf_prog = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.virtnet_info = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VIRTIO_NET_F_CTRL_GUEST_OFFLOADS = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_TSO4 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_TSO6 = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_ECN = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_UFO = common dso_local global i32 0, align 4
@VIRTIO_NET_F_GUEST_CSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Can't set XDP while host is implementing LRO/CSUM, disable LRO/CSUM first\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"XDP expects header/data in single page, any_header_sg required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"MTU too large to enable XDP\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"XDP requires MTU less than %lu\0A\00", align 1
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Too few free TX rings available\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"request %i queues but max is %i\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bpf_prog*, %struct.netlink_ext_ack*)* @virtnet_xdp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_xdp_set(%struct.net_device* %0, %struct.bpf_prog* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.virtnet_info*, align 8
  %10 = alloca %struct.bpf_prog*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  store i64 %17, i64* %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %18)
  store %struct.virtnet_info* %19, %struct.virtnet_info** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %21 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VIRTIO_NET_F_CTRL_GUEST_OFFLOADS, align 4
  %24 = call i64 @virtio_has_feature(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %66, label %26

26:                                               ; preds = %3
  %27 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %28 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VIRTIO_NET_F_GUEST_TSO4, align 4
  %31 = call i64 @virtio_has_feature(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %26
  %34 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %35 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VIRTIO_NET_F_GUEST_TSO6, align 4
  %38 = call i64 @virtio_has_feature(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %33
  %41 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %42 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VIRTIO_NET_F_GUEST_ECN, align 4
  %45 = call i64 @virtio_has_feature(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %49 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VIRTIO_NET_F_GUEST_UFO, align 4
  %52 = call i64 @virtio_has_feature(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %56 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VIRTIO_NET_F_GUEST_CSUM, align 4
  %59 = call i64 @virtio_has_feature(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54, %47, %40, %33, %26
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %63 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %62, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %419

66:                                               ; preds = %54, %3
  %67 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %68 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %73 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %78 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %77, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %419

81:                                               ; preds = %71, %66
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %89 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load i64, i64* %8, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_warn(%struct.net_device* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %419

96:                                               ; preds = %81
  %97 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %98 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %101 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  store i32 %103, i32* %12, align 4
  %104 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %105 = icmp ne %struct.bpf_prog* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @nr_cpu_ids, align 4
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %106, %96
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %113 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %108
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %118 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %120, %121
  %123 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %124 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_warn(%struct.net_device* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %419

129:                                              ; preds = %108
  %130 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %131 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %130, i32 0, i32 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call %struct.bpf_prog* @rtnl_dereference(i32 %135)
  store %struct.bpf_prog* %136, %struct.bpf_prog** %10, align 8
  %137 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %138 = icmp ne %struct.bpf_prog* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %129
  %140 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %141 = icmp ne %struct.bpf_prog* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %419

143:                                              ; preds = %139, %129
  %144 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %145 = icmp ne %struct.bpf_prog* %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %143
  %147 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %148 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %149 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  %152 = call %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog* %147, i32 %151)
  store %struct.bpf_prog* %152, %struct.bpf_prog** %6, align 8
  %153 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %154 = call i64 @IS_ERR(%struct.bpf_prog* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %158 = call i32 @PTR_ERR(%struct.bpf_prog* %157)
  store i32 %158, i32* %4, align 4
  br label %419

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %143
  %161 = load %struct.net_device*, %struct.net_device** %5, align 8
  %162 = call i64 @netif_running(%struct.net_device* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %192

164:                                              ; preds = %160
  store i32 0, i32* %13, align 4
  br label %165

165:                                              ; preds = %188, %164
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %168 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %165
  %172 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %173 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %172, i32 0, i32 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = call i32 @napi_disable(i32* %178)
  %180 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %181 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %180, i32 0, i32 3
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = call i32 @virtnet_napi_tx_disable(i32* %186)
  br label %188

188:                                              ; preds = %171
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %165

191:                                              ; preds = %165
  br label %192

192:                                              ; preds = %191, %160
  %193 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %194 = icmp ne %struct.bpf_prog* %193, null
  br i1 %194, label %224, label %195

195:                                              ; preds = %192
  store i32 0, i32* %13, align 4
  br label %196

196:                                              ; preds = %219, %195
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %199 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %222

202:                                              ; preds = %196
  %203 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %204 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %203, i32 0, i32 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %212 = call i32 @rcu_assign_pointer(i32 %210, %struct.bpf_prog* %211)
  %213 = load i32, i32* %13, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %202
  %216 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %217 = call i32 @virtnet_restore_guest_offloads(%struct.virtnet_info* %216)
  br label %218

218:                                              ; preds = %215, %202
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %196

222:                                              ; preds = %196
  %223 = call i32 (...) @synchronize_net()
  br label %224

224:                                              ; preds = %222, %192
  %225 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %226, %227
  %229 = call i32 @_virtnet_set_queues(%struct.virtnet_info* %225, i32 %228)
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %331

233:                                              ; preds = %224
  %234 = load %struct.net_device*, %struct.net_device** %5, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %235, %236
  %238 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %234, i32 %237)
  %239 = load i32, i32* %11, align 4
  %240 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %241 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  %242 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %243 = icmp ne %struct.bpf_prog* %242, null
  br i1 %243, label %244, label %275

244:                                              ; preds = %233
  store i32 0, i32* %13, align 4
  br label %245

245:                                              ; preds = %271, %244
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %248 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp slt i32 %246, %249
  br i1 %250, label %251, label %274

251:                                              ; preds = %245
  %252 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %253 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %252, i32 0, i32 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %253, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %261 = call i32 @rcu_assign_pointer(i32 %259, %struct.bpf_prog* %260)
  %262 = load i32, i32* %13, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %251
  %265 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %266 = icmp ne %struct.bpf_prog* %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %269 = call i32 @virtnet_clear_guest_offloads(%struct.virtnet_info* %268)
  br label %270

270:                                              ; preds = %267, %264, %251
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %13, align 4
  br label %245

274:                                              ; preds = %245
  br label %275

275:                                              ; preds = %274, %233
  store i32 0, i32* %13, align 4
  br label %276

276:                                              ; preds = %327, %275
  %277 = load i32, i32* %13, align 4
  %278 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %279 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = icmp slt i32 %277, %280
  br i1 %281, label %282, label %330

282:                                              ; preds = %276
  %283 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %284 = icmp ne %struct.bpf_prog* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %287 = call i32 @bpf_prog_put(%struct.bpf_prog* %286)
  br label %288

288:                                              ; preds = %285, %282
  %289 = load %struct.net_device*, %struct.net_device** %5, align 8
  %290 = call i64 @netif_running(%struct.net_device* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %326

292:                                              ; preds = %288
  %293 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %294 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %293, i32 0, i32 4
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %294, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %302 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %301, i32 0, i32 4
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %302, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 0
  %308 = call i32 @virtnet_napi_enable(i32 %300, i32* %307)
  %309 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %310 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %311 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %310, i32 0, i32 3
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %319 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %318, i32 0, i32 3
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = call i32 @virtnet_napi_tx_enable(%struct.virtnet_info* %309, i32 %317, i32* %324)
  br label %326

326:                                              ; preds = %292, %288
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %13, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %13, align 4
  br label %276

330:                                              ; preds = %276
  store i32 0, i32* %4, align 4
  br label %419

331:                                              ; preds = %232
  %332 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %333 = icmp ne %struct.bpf_prog* %332, null
  br i1 %333, label %358, label %334

334:                                              ; preds = %331
  %335 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %336 = call i32 @virtnet_clear_guest_offloads(%struct.virtnet_info* %335)
  store i32 0, i32* %13, align 4
  br label %337

337:                                              ; preds = %354, %334
  %338 = load i32, i32* %13, align 4
  %339 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %340 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = icmp slt i32 %338, %341
  br i1 %342, label %343, label %357

343:                                              ; preds = %337
  %344 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %345 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %344, i32 0, i32 4
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %345, align 8
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %353 = call i32 @rcu_assign_pointer(i32 %351, %struct.bpf_prog* %352)
  br label %354

354:                                              ; preds = %343
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %13, align 4
  br label %337

357:                                              ; preds = %337
  br label %358

358:                                              ; preds = %357, %331
  %359 = load %struct.net_device*, %struct.net_device** %5, align 8
  %360 = call i64 @netif_running(%struct.net_device* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %407

362:                                              ; preds = %358
  store i32 0, i32* %13, align 4
  br label %363

363:                                              ; preds = %403, %362
  %364 = load i32, i32* %13, align 4
  %365 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %366 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = icmp slt i32 %364, %367
  br i1 %368, label %369, label %406

369:                                              ; preds = %363
  %370 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %371 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %370, i32 0, i32 4
  %372 = load %struct.TYPE_3__*, %struct.TYPE_3__** %371, align 8
  %373 = load i32, i32* %13, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %379 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %378, i32 0, i32 4
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %379, align 8
  %381 = load i32, i32* %13, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 0
  %385 = call i32 @virtnet_napi_enable(i32 %377, i32* %384)
  %386 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %387 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %388 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %387, i32 0, i32 3
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %388, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %396 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %395, i32 0, i32 3
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** %396, align 8
  %398 = load i32, i32* %13, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 0
  %402 = call i32 @virtnet_napi_tx_enable(%struct.virtnet_info* %386, i32 %394, i32* %401)
  br label %403

403:                                              ; preds = %369
  %404 = load i32, i32* %13, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %13, align 4
  br label %363

406:                                              ; preds = %363
  br label %407

407:                                              ; preds = %406, %358
  %408 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %409 = icmp ne %struct.bpf_prog* %408, null
  br i1 %409, label %410, label %417

410:                                              ; preds = %407
  %411 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %412 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %413 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = sub nsw i32 %414, 1
  %416 = call i32 @bpf_prog_sub(%struct.bpf_prog* %411, i32 %415)
  br label %417

417:                                              ; preds = %410, %407
  %418 = load i32, i32* %14, align 4
  store i32 %418, i32* %4, align 4
  br label %419

419:                                              ; preds = %417, %330, %156, %142, %116, %87, %76, %61
  %420 = load i32, i32* %4, align 4
  ret i32 %420
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @virtio_has_feature(i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, ...) #1

declare dso_local %struct.bpf_prog* @rtnl_dereference(i32) #1

declare dso_local %struct.bpf_prog* @bpf_prog_add(%struct.bpf_prog*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @virtnet_napi_tx_disable(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bpf_prog*) #1

declare dso_local i32 @virtnet_restore_guest_offloads(%struct.virtnet_info*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @_virtnet_set_queues(%struct.virtnet_info*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @virtnet_clear_guest_offloads(%struct.virtnet_info*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

declare dso_local i32 @virtnet_napi_enable(i32, i32*) #1

declare dso_local i32 @virtnet_napi_tx_enable(%struct.virtnet_info*, i32, i32*) #1

declare dso_local i32 @bpf_prog_sub(%struct.bpf_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
