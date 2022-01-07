; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.vxlan_fdb = type { i64, i64, i64, %struct.nda_cacheinfo, i32, i32 }
%struct.nda_cacheinfo = type { i64, i8*, i64, i8* }
%struct.vxlan_rdst = type { i64, i64, i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@RTM_GETNEIGH = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@NTF_OFFLOADED = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@NDA_LINK_NETNSID = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i32 0, align 4
@NDA_PORT = common dso_local global i32 0, align 4
@NDA_VNI = common dso_local global i32 0, align 4
@VXLAN_F_COLLECT_METADATA = common dso_local global i32 0, align 4
@NDA_SRC_VNI = common dso_local global i32 0, align 4
@NDA_IFINDEX = common dso_local global i32 0, align 4
@NDA_CACHEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.vxlan_dev*, %struct.vxlan_fdb*, i32, i32, i32, i32, %struct.vxlan_rdst*)* @vxlan_fdb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_info(%struct.sk_buff* %0, %struct.vxlan_dev* %1, %struct.vxlan_fdb* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.vxlan_rdst* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.vxlan_dev*, align 8
  %12 = alloca %struct.vxlan_fdb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vxlan_rdst*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.nda_cacheinfo, align 8
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca %struct.ndmsg*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.vxlan_dev* %1, %struct.vxlan_dev** %11, align 8
  store %struct.vxlan_fdb* %2, %struct.vxlan_fdb** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.vxlan_rdst* %7, %struct.vxlan_rdst** %17, align 8
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %18, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %25, i32 %26, i32 %27, i32 %28, i32 20, i32 %29)
  store %struct.nlmsghdr* %30, %struct.nlmsghdr** %20, align 8
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %32 = icmp eq %struct.nlmsghdr* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %8
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %264

36:                                               ; preds = %8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %38 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %37)
  store %struct.ndmsg* %38, %struct.ndmsg** %21, align 8
  %39 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %40 = call i32 @memset(%struct.ndmsg* %39, i32 0, i32 20)
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @RTM_GETNEIGH, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %36
  %45 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %46 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %45, i32 0, i32 3
  %47 = call i32 @vxlan_addr_any(%struct.TYPE_10__* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %22, align 4
  %51 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %52 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %51, i32 0, i32 3
  %53 = call i32 @is_zero_ether_addr(%struct.nda_cacheinfo* byval(%struct.nda_cacheinfo) align 8 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %22, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %44
  %60 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %61 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  br label %67

65:                                               ; preds = %44
  %66 = load i32, i32* @AF_INET, align 4
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i32 [ %64, %59 ], [ %66, %65 ]
  %69 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %70 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %36
  %72 = load i32, i32* @AF_BRIDGE, align 4
  %73 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %74 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %77 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %80 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %82 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %81, i32 0, i32 3
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %87 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %89 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %92 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %94 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %75
  %98 = load i32, i32* @NTF_OFFLOADED, align 4
  %99 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %100 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %75
  %104 = load i32, i32* @RTN_UNICAST, align 4
  %105 = load %struct.ndmsg*, %struct.ndmsg** %21, align 8
  %106 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %108 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %107, i32 0, i32 3
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = call i32 @dev_net(%struct.TYPE_11__* %109)
  %111 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %112 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @net_eq(i32 %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %103
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = load i32, i32* @NDA_LINK_NETNSID, align 4
  %119 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %120 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %119, i32 0, i32 3
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = call i32 @dev_net(%struct.TYPE_11__* %121)
  %123 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %124 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @peernet2id(i32 %122, i32 %125)
  %127 = call i64 @nla_put_s32(%struct.sk_buff* %117, i32 %118, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %116
  br label %258

130:                                              ; preds = %116, %103
  %131 = load i32, i32* %23, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %135 = load i32, i32* @NDA_LLADDR, align 4
  %136 = load i32, i32* @ETH_ALEN, align 4
  %137 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %138 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %137, i32 0, i32 3
  %139 = call i64 @nla_put(%struct.sk_buff* %134, i32 %135, i32 %136, %struct.nda_cacheinfo* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %258

142:                                              ; preds = %133, %130
  %143 = load i32, i32* %22, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %147 = load i32, i32* @NDA_DST, align 4
  %148 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %149 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %148, i32 0, i32 3
  %150 = call i64 @vxlan_nla_put_addr(%struct.sk_buff* %146, i32 %147, %struct.TYPE_10__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %258

153:                                              ; preds = %145, %142
  %154 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %155 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %153
  %159 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %160 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %163 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %161, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %158
  %168 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %169 = load i32, i32* @NDA_PORT, align 4
  %170 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %171 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @nla_put_be16(%struct.sk_buff* %168, i32 %169, i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %258

176:                                              ; preds = %167, %158, %153
  %177 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %178 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %181 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %179, %183
  br i1 %184, label %185, label %195

185:                                              ; preds = %176
  %186 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %187 = load i32, i32* @NDA_VNI, align 4
  %188 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %189 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @be32_to_cpu(i64 %190)
  %192 = call i64 @nla_put_u32(%struct.sk_buff* %186, i32 %187, i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %258

195:                                              ; preds = %185, %176
  %196 = load %struct.vxlan_dev*, %struct.vxlan_dev** %11, align 8
  %197 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @VXLAN_F_COLLECT_METADATA, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %195
  %204 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %205 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %210 = load i32, i32* @NDA_SRC_VNI, align 4
  %211 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %212 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @be32_to_cpu(i64 %213)
  %215 = call i64 @nla_put_u32(%struct.sk_buff* %209, i32 %210, i64 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  br label %258

218:                                              ; preds = %208, %203, %195
  %219 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %220 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %218
  %224 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %225 = load i32, i32* @NDA_IFINDEX, align 4
  %226 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %17, align 8
  %227 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @nla_put_u32(%struct.sk_buff* %224, i32 %225, i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %258

232:                                              ; preds = %223, %218
  %233 = load i64, i64* %18, align 8
  %234 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %235 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = sub i64 %233, %236
  %238 = call i8* @jiffies_to_clock_t(i64 %237)
  %239 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %19, i32 0, i32 3
  store i8* %238, i8** %239, align 8
  %240 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %19, i32 0, i32 2
  store i64 0, i64* %240, align 8
  %241 = load i64, i64* %18, align 8
  %242 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %12, align 8
  %243 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = sub i64 %241, %244
  %246 = call i8* @jiffies_to_clock_t(i64 %245)
  %247 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %19, i32 0, i32 1
  store i8* %246, i8** %247, align 8
  %248 = getelementptr inbounds %struct.nda_cacheinfo, %struct.nda_cacheinfo* %19, i32 0, i32 0
  store i64 0, i64* %248, align 8
  %249 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %250 = load i32, i32* @NDA_CACHEINFO, align 4
  %251 = call i64 @nla_put(%struct.sk_buff* %249, i32 %250, i32 32, %struct.nda_cacheinfo* %19)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %232
  br label %258

254:                                              ; preds = %232
  %255 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %256 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %257 = call i32 @nlmsg_end(%struct.sk_buff* %255, %struct.nlmsghdr* %256)
  store i32 0, i32* %9, align 4
  br label %264

258:                                              ; preds = %253, %231, %217, %194, %175, %152, %141, %129
  %259 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %260 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %261 = call i32 @nlmsg_cancel(%struct.sk_buff* %259, %struct.nlmsghdr* %260)
  %262 = load i32, i32* @EMSGSIZE, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %9, align 4
  br label %264

264:                                              ; preds = %258, %254, %33
  %265 = load i32, i32* %9, align 4
  ret i32 %265
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.ndmsg*, i32, i32) #1

declare dso_local i32 @vxlan_addr_any(%struct.TYPE_10__*) #1

declare dso_local i32 @is_zero_ether_addr(%struct.nda_cacheinfo* byval(%struct.nda_cacheinfo) align 8) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_11__*) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @peernet2id(i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.nda_cacheinfo*) #1

declare dso_local i64 @vxlan_nla_put_addr(%struct.sk_buff*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i8* @jiffies_to_clock_t(i64) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
