; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_LRO = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSC_ENABLED = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSC_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_MIN_RSC_ITR = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rx-usecs set too low, disabling RSC\0A\00", align 1
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@NETIF_F_HW_TC = common dso_local global i32 0, align 4
@IXGBE_FLAG_FDIR_PERFECT_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@RING_F_RSS = common dso_local global i64 0, align 8
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IXGBE_FLAG2_UDP_TUN_REREG_NEEDED = common dso_local global i32 0, align 4
@IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK = common dso_local global i32 0, align 4
@IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK = common dso_local global i32 0, align 4
@NETIF_F_HW_L2FW_DOFFLOAD = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgbe_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %14, %15
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NETIF_F_LRO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %80

36:                                               ; preds = %2
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IXGBE_FLAG2_RSC_CAPABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %36
  %44 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %43
  %51 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IXGBE_MIN_RSC_ITR, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55, %50
  %62 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  store i32 1, i32* %7, align 4
  br label %78

67:                                               ; preds = %55
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = xor i32 %68, %69
  %71 = load i32, i32* @NETIF_F_LRO, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @probe, align 4
  %76 = call i32 @e_info(i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %67
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %43, %36
  br label %80

80:                                               ; preds = %79, %29
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @NETIF_F_HW_TC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %85, %80
  %91 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %92 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %90
  %99 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %106 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %107 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %158

110:                                              ; preds = %85
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %112 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %110
  %119 = load i32, i32* @IXGBE_FLAG_FDIR_PERFECT_CAPABLE, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %122 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %126 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %150, label %131

131:                                              ; preds = %118
  %132 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %133 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %150, label %136

136:                                              ; preds = %131
  %137 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %138 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %137, i32 0, i32 6
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i64, i64* @RING_F_RSS, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp sle i32 %143, 1
  br i1 %144, label %150, label %145

145:                                              ; preds = %136
  %146 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %147 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145, %136, %131, %118
  br label %157

151:                                              ; preds = %145
  %152 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %153 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %154 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %150
  br label %158

158:                                              ; preds = %157, %98
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @NETIF_F_RXALL, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 1, i32* %7, align 4
  br label %164

164:                                              ; preds = %163, %158
  %165 = load i32, i32* %4, align 4
  %166 = load %struct.net_device*, %struct.net_device** %3, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  %168 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %169 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %164
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* @IXGBE_FLAG2_UDP_TUN_REREG_NEEDED, align 4
  %181 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %182 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %190

185:                                              ; preds = %174
  %186 = load i32, i32* @IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK, align 4
  store i32 %186, i32* %8, align 4
  %187 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @ixgbe_clear_udp_tunnel_port(%struct.ixgbe_adapter* %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %179
  br label %191

191:                                              ; preds = %190, %164
  %192 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %193 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %191
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load i32, i32* @IXGBE_FLAG2_UDP_TUN_REREG_NEEDED, align 4
  %205 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %206 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %214

209:                                              ; preds = %198
  %210 = load i32, i32* @IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK, align 4
  store i32 %210, i32* %9, align 4
  %211 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @ixgbe_clear_udp_tunnel_port(%struct.ixgbe_adapter* %211, i32 %212)
  br label %214

214:                                              ; preds = %209, %203
  br label %215

215:                                              ; preds = %214, %191
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @NETIF_F_HW_L2FW_DOFFLOAD, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %222 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp sgt i32 %223, 1
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %227 = call i32 @ixgbe_reset_l2fw_offload(%struct.ixgbe_adapter* %226)
  br label %246

228:                                              ; preds = %220, %215
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.net_device*, %struct.net_device** %3, align 8
  %233 = call i32 @ixgbe_do_reset(%struct.net_device* %232)
  br label %245

234:                                              ; preds = %228
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %237 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %238 = or i32 %236, %237
  %239 = and i32 %235, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %234
  %242 = load %struct.net_device*, %struct.net_device** %3, align 8
  %243 = call i32 @ixgbe_set_rx_mode(%struct.net_device* %242)
  br label %244

244:                                              ; preds = %241, %234
  br label %245

245:                                              ; preds = %244, %231
  br label %246

246:                                              ; preds = %245, %225
  ret i32 1
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e_info(i32, i8*) #1

declare dso_local i32 @ixgbe_clear_udp_tunnel_port(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_reset_l2fw_offload(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_do_reset(%struct.net_device*) #1

declare dso_local i32 @ixgbe_set_rx_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
