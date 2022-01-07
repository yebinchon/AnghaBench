; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i64, i64, i64, i64, i64, i64, i32*, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.ibmvnic_rwi = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Re-setting driver (%d)\0A\00", align 1
@VNIC_OPEN = common dso_local global i64 0, align 8
@VNIC_RESET_MOBILITY = common dso_local global i64 0, align 8
@VNIC_RESET_FAILOVER = common dso_local global i64 0, align 8
@VNIC_CLOSING = common dso_local global i64 0, align 8
@IBMVNIC_LOGICAL_LNK_DN = common dso_local global i32 0, align 4
@VNIC_CLOSED = common dso_local global i64 0, align 8
@VNIC_RESET_NON_FATAL = common dso_local global i64 0, align 8
@VNIC_PROBED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Couldn't initialize crq. rc=%d\0A\00", align 1
@IBMVNIC_INIT_FAILED = common dso_local global i32 0, align 4
@IBMVNIC_OPEN_FAILED = common dso_local global i32 0, align 4
@NETDEV_NOTIFY_PEERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_rwi*, i64)* @do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reset(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_rwi* %1, i64 %2) #0 {
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.ibmvnic_rwi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %4, align 8
  store %struct.ibmvnic_rwi* %1, %struct.ibmvnic_rwi** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 7
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %11, align 8
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %17, i32 0, i32 7
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = load %struct.ibmvnic_rwi*, %struct.ibmvnic_rwi** %5, align 8
  %21 = getelementptr inbounds %struct.ibmvnic_rwi, %struct.ibmvnic_rwi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @netdev_dbg(%struct.net_device* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i32 (...) @rtnl_lock()
  %25 = load %struct.net_device*, %struct.net_device** %11, align 8
  %26 = call i32 @netif_carrier_off(%struct.net_device* %25)
  %27 = load %struct.ibmvnic_rwi*, %struct.ibmvnic_rwi** %5, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_rwi, %struct.ibmvnic_rwi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  %44 = load %struct.net_device*, %struct.net_device** %11, align 8
  %45 = call i32 @ibmvnic_cleanup(%struct.net_device* %44)
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @VNIC_OPEN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %3
  %50 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VNIC_RESET_MOBILITY, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %49
  %56 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %57 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VNIC_RESET_FAILOVER, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load i64, i64* @VNIC_CLOSING, align 8
  %63 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = call i32 (...) @rtnl_unlock()
  %66 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %67 = load i32, i32* @IBMVNIC_LOGICAL_LNK_DN, align 4
  %68 = call i32 @set_link_state(%struct.ibmvnic_adapter* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = call i32 (...) @rtnl_lock()
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %247

73:                                               ; preds = %61
  %74 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VNIC_CLOSING, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 -1, i32* %13, align 4
  br label %247

80:                                               ; preds = %73
  %81 = load i64, i64* @VNIC_CLOSED, align 8
  %82 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %55, %49, %3
  %85 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VNIC_RESET_NON_FATAL, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %200

90:                                               ; preds = %84
  %91 = load i64, i64* @VNIC_PROBED, align 8
  %92 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %95 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @VNIC_RESET_MOBILITY, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %101 = call i32 @ibmvnic_reenable_crq_queue(%struct.ibmvnic_adapter* %100)
  store i32 %101, i32* %13, align 4
  %102 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %103 = call i32 @release_sub_crqs(%struct.ibmvnic_adapter* %102, i32 1)
  br label %115

104:                                              ; preds = %90
  %105 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %106 = call i32 @ibmvnic_reset_crq(%struct.ibmvnic_adapter* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @vio_enable_interrupts(i32 %112)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %99
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %120 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %119, i32 0, i32 7
  %121 = load %struct.net_device*, %struct.net_device** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @netdev_err(%struct.net_device* %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %247

124:                                              ; preds = %115
  %125 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %126 = call i32 @ibmvnic_reset_init(%struct.ibmvnic_adapter* %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @IBMVNIC_INIT_FAILED, align 4
  store i32 %130, i32* %13, align 4
  br label %247

131:                                              ; preds = %124
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* @VNIC_PROBED, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 0, i32* %13, align 4
  br label %247

136:                                              ; preds = %131
  %137 = load %struct.net_device*, %struct.net_device** %11, align 8
  %138 = call i32 @ibmvnic_login(%struct.net_device* %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i64, i64* %6, align 8
  %143 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %144 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %143, i32 0, i32 5
  store i64 %142, i64* %144, align 8
  br label %247

145:                                              ; preds = %136
  %146 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %147 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %169, label %151

151:                                              ; preds = %145
  %152 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %153 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %169, label %157

157:                                              ; preds = %151
  %158 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %159 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %165 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %10, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %163, %157, %151, %145
  %170 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %171 = call i32 @release_rx_pools(%struct.ibmvnic_adapter* %170)
  %172 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %173 = call i32 @release_tx_pools(%struct.ibmvnic_adapter* %172)
  %174 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %175 = call i32 @release_napi(%struct.ibmvnic_adapter* %174)
  %176 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %177 = call i32 @release_vpd_data(%struct.ibmvnic_adapter* %176)
  %178 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %179 = call i32 @init_resources(%struct.ibmvnic_adapter* %178)
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %169
  br label %247

183:                                              ; preds = %169
  br label %197

184:                                              ; preds = %163
  %185 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %186 = call i32 @reset_tx_pools(%struct.ibmvnic_adapter* %185)
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %247

190:                                              ; preds = %184
  %191 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %192 = call i32 @reset_rx_pools(%struct.ibmvnic_adapter* %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %247

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %183
  %198 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %199 = call i32 @ibmvnic_disable_irqs(%struct.ibmvnic_adapter* %198)
  br label %200

200:                                              ; preds = %197, %84
  %201 = load i64, i64* @VNIC_CLOSED, align 8
  %202 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %203 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %202, i32 0, i32 5
  store i64 %201, i64* %203, align 8
  %204 = load i64, i64* %6, align 8
  %205 = load i64, i64* @VNIC_CLOSED, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  store i32 0, i32* %13, align 4
  br label %247

208:                                              ; preds = %200
  %209 = load %struct.net_device*, %struct.net_device** %11, align 8
  %210 = call i32 @__ibmvnic_open(%struct.net_device* %209)
  store i32 %210, i32* %13, align 4
  %211 = load i32, i32* %13, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @IBMVNIC_OPEN_FAILED, align 4
  store i32 %214, i32* %13, align 4
  br label %247

215:                                              ; preds = %208
  %216 = load %struct.net_device*, %struct.net_device** %11, align 8
  %217 = call i32 @ibmvnic_set_multi(%struct.net_device* %216)
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %233, %215
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %222 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp slt i64 %220, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %218
  %226 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %227 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = call i32 @napi_schedule(i32* %231)
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %218

236:                                              ; preds = %218
  %237 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %238 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @VNIC_RESET_FAILOVER, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = load i32, i32* @NETDEV_NOTIFY_PEERS, align 4
  %244 = load %struct.net_device*, %struct.net_device** %11, align 8
  %245 = call i32 @call_netdevice_notifiers(i32 %243, %struct.net_device* %244)
  br label %246

246:                                              ; preds = %242, %236
  store i32 0, i32* %13, align 4
  br label %247

247:                                              ; preds = %246, %213, %207, %195, %189, %182, %141, %135, %129, %118, %79, %72
  %248 = call i32 (...) @rtnl_unlock()
  %249 = load i32, i32* %13, align 4
  ret i32 %249
}

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ibmvnic_cleanup(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @set_link_state(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @ibmvnic_reenable_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_sub_crqs(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @ibmvnic_reset_crq(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @vio_enable_interrupts(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ibmvnic_reset_init(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_login(%struct.net_device*) #1

declare dso_local i32 @release_rx_pools(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_tx_pools(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_napi(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_vpd_data(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @init_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @reset_tx_pools(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @reset_rx_pools(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @ibmvnic_disable_irqs(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @__ibmvnic_open(%struct.net_device*) #1

declare dso_local i32 @ibmvnic_set_multi(%struct.net_device*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
