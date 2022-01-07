; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_process_aq_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_process_aq_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32 }

@IAVF_FLAG_AQ_GET_CONFIG = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_DISABLE_QUEUES = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_MAP_VECTORS = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ADD_MAC_FILTER = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ADD_VLAN_FILTER = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_DEL_MAC_FILTER = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_DEL_VLAN_FILTER = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_CONFIGURE_QUEUES = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ENABLE_QUEUES = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_CONFIGURE_RSS = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_GET_HENA = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_SET_HENA = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_SET_RSS_KEY = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_SET_RSS_LUT = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_REQUEST_PROMISC = common dso_local global i32 0, align 4
@FLAG_VF_UNICAST_PROMISC = common dso_local global i32 0, align 4
@FLAG_VF_MULTICAST_PROMISC = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_REQUEST_ALLMULTI = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_RELEASE_PROMISC = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_RELEASE_ALLMULTI = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ENABLE_CHANNELS = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_DISABLE_CHANNELS = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ADD_CLOUD_FILTER = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_DEL_CLOUD_FILTER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*)* @iavf_process_aq_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_process_aq_command(%struct.iavf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_adapter*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  %4 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IAVF_FLAG_AQ_GET_CONFIG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %12 = call i32 @iavf_send_vf_config_msg(%struct.iavf_adapter* %11)
  store i32 %12, i32* %2, align 4
  br label %271

13:                                               ; preds = %1
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IAVF_FLAG_AQ_DISABLE_QUEUES, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %22 = call i32 @iavf_disable_queues(%struct.iavf_adapter* %21)
  store i32 0, i32* %2, align 4
  br label %271

23:                                               ; preds = %13
  %24 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IAVF_FLAG_AQ_MAP_VECTORS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %32 = call i32 @iavf_map_queues(%struct.iavf_adapter* %31)
  store i32 0, i32* %2, align 4
  br label %271

33:                                               ; preds = %23
  %34 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IAVF_FLAG_AQ_ADD_MAC_FILTER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %42 = call i32 @iavf_add_ether_addrs(%struct.iavf_adapter* %41)
  store i32 0, i32* %2, align 4
  br label %271

43:                                               ; preds = %33
  %44 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IAVF_FLAG_AQ_ADD_VLAN_FILTER, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %52 = call i32 @iavf_add_vlans(%struct.iavf_adapter* %51)
  store i32 0, i32* %2, align 4
  br label %271

53:                                               ; preds = %43
  %54 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IAVF_FLAG_AQ_DEL_MAC_FILTER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %62 = call i32 @iavf_del_ether_addrs(%struct.iavf_adapter* %61)
  store i32 0, i32* %2, align 4
  br label %271

63:                                               ; preds = %53
  %64 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IAVF_FLAG_AQ_DEL_VLAN_FILTER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %72 = call i32 @iavf_del_vlans(%struct.iavf_adapter* %71)
  store i32 0, i32* %2, align 4
  br label %271

73:                                               ; preds = %63
  %74 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %82 = call i32 @iavf_enable_vlan_stripping(%struct.iavf_adapter* %81)
  store i32 0, i32* %2, align 4
  br label %271

83:                                               ; preds = %73
  %84 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %92 = call i32 @iavf_disable_vlan_stripping(%struct.iavf_adapter* %91)
  store i32 0, i32* %2, align 4
  br label %271

93:                                               ; preds = %83
  %94 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_QUEUES, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %102 = call i32 @iavf_configure_queues(%struct.iavf_adapter* %101)
  store i32 0, i32* %2, align 4
  br label %271

103:                                              ; preds = %93
  %104 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IAVF_FLAG_AQ_ENABLE_QUEUES, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %112 = call i32 @iavf_enable_queues(%struct.iavf_adapter* %111)
  store i32 0, i32* %2, align 4
  br label %271

113:                                              ; preds = %103
  %114 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_RSS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_RSS, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 4
  store i32 0, i32* %2, align 4
  br label %271

127:                                              ; preds = %113
  %128 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IAVF_FLAG_AQ_GET_HENA, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %136 = call i32 @iavf_get_hena(%struct.iavf_adapter* %135)
  store i32 0, i32* %2, align 4
  br label %271

137:                                              ; preds = %127
  %138 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IAVF_FLAG_AQ_SET_HENA, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %146 = call i32 @iavf_set_hena(%struct.iavf_adapter* %145)
  store i32 0, i32* %2, align 4
  br label %271

147:                                              ; preds = %137
  %148 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %149 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IAVF_FLAG_AQ_SET_RSS_KEY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %156 = call i32 @iavf_set_rss_key(%struct.iavf_adapter* %155)
  store i32 0, i32* %2, align 4
  br label %271

157:                                              ; preds = %147
  %158 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IAVF_FLAG_AQ_SET_RSS_LUT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %166 = call i32 @iavf_set_rss_lut(%struct.iavf_adapter* %165)
  store i32 0, i32* %2, align 4
  br label %271

167:                                              ; preds = %157
  %168 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %169 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IAVF_FLAG_AQ_REQUEST_PROMISC, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %176 = load i32, i32* @FLAG_VF_UNICAST_PROMISC, align 4
  %177 = load i32, i32* @FLAG_VF_MULTICAST_PROMISC, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @iavf_set_promiscuous(%struct.iavf_adapter* %175, i32 %178)
  store i32 0, i32* %2, align 4
  br label %271

180:                                              ; preds = %167
  %181 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IAVF_FLAG_AQ_REQUEST_ALLMULTI, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %180
  %188 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %189 = load i32, i32* @FLAG_VF_MULTICAST_PROMISC, align 4
  %190 = call i32 @iavf_set_promiscuous(%struct.iavf_adapter* %188, i32 %189)
  store i32 0, i32* %2, align 4
  br label %271

191:                                              ; preds = %180
  %192 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %193 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @IAVF_FLAG_AQ_RELEASE_PROMISC, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IAVF_FLAG_AQ_RELEASE_ALLMULTI, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %207 = call i32 @iavf_set_promiscuous(%struct.iavf_adapter* %206, i32 0)
  store i32 0, i32* %2, align 4
  br label %271

208:                                              ; preds = %198, %191
  %209 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %210 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @IAVF_FLAG_AQ_ENABLE_CHANNELS, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %217 = call i32 @iavf_enable_channels(%struct.iavf_adapter* %216)
  store i32 0, i32* %2, align 4
  br label %271

218:                                              ; preds = %208
  %219 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %220 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IAVF_FLAG_AQ_DISABLE_CHANNELS, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %227 = call i32 @iavf_disable_channels(%struct.iavf_adapter* %226)
  store i32 0, i32* %2, align 4
  br label %271

228:                                              ; preds = %218
  %229 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %230 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @IAVF_FLAG_AQ_ADD_CLOUD_FILTER, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %237 = call i32 @iavf_add_cloud_filter(%struct.iavf_adapter* %236)
  store i32 0, i32* %2, align 4
  br label %271

238:                                              ; preds = %228
  %239 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %240 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @IAVF_FLAG_AQ_DEL_CLOUD_FILTER, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %247 = call i32 @iavf_del_cloud_filter(%struct.iavf_adapter* %246)
  store i32 0, i32* %2, align 4
  br label %271

248:                                              ; preds = %238
  %249 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %250 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IAVF_FLAG_AQ_DEL_CLOUD_FILTER, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %257 = call i32 @iavf_del_cloud_filter(%struct.iavf_adapter* %256)
  store i32 0, i32* %2, align 4
  br label %271

258:                                              ; preds = %248
  %259 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %260 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @IAVF_FLAG_AQ_ADD_CLOUD_FILTER, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %258
  %266 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %267 = call i32 @iavf_add_cloud_filter(%struct.iavf_adapter* %266)
  store i32 0, i32* %2, align 4
  br label %271

268:                                              ; preds = %258
  %269 = load i32, i32* @EAGAIN, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %2, align 4
  br label %271

271:                                              ; preds = %268, %265, %255, %245, %235, %225, %215, %205, %187, %174, %164, %154, %144, %134, %120, %110, %100, %90, %80, %70, %60, %50, %40, %30, %20, %10
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @iavf_send_vf_config_msg(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_disable_queues(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_map_queues(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_add_ether_addrs(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_add_vlans(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_del_ether_addrs(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_del_vlans(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_enable_vlan_stripping(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_disable_vlan_stripping(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_configure_queues(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_enable_queues(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_get_hena(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_set_hena(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_set_rss_key(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_set_rss_lut(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_set_promiscuous(%struct.iavf_adapter*, i32) #1

declare dso_local i32 @iavf_enable_channels(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_disable_channels(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_add_cloud_filter(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_del_cloud_filter(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
