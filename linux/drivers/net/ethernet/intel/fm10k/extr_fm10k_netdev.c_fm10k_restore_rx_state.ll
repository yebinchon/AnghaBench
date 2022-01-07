; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_restore_rx_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_restore_rx_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i64, i32, i32, %struct.fm10k_hw, %struct.net_device*, %struct.fm10k_l2_accel* }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, i64, i32)*, i32 (%struct.fm10k_hw.1*, i64, i32, i32)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_hw.1 = type opaque
%struct.net_device = type { i32, i32 }
%struct.fm10k_l2_accel = type { i32, i64, %struct.net_device** }

@IFF_PROMISC = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_ALLMULTI = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_MULTI = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_NONE = common dso_local global i32 0, align 4
@FM10K_VLAN_ALL = common dso_local global i64 0, align 8
@VLAN_N_VID = common dso_local global i64 0, align 8
@fm10k_uc_sync = common dso_local global i32 0, align 4
@fm10k_uc_unsync = common dso_local global i32 0, align 4
@fm10k_mc_sync = common dso_local global i32 0, align 4
@fm10k_mc_unsync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_restore_rx_state(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.fm10k_l2_accel*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 5
  %14 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %13, align 8
  store %struct.fm10k_l2_accel* %14, %struct.fm10k_l2_accel** %3, align 8
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 4
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %4, align 8
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 3
  store %struct.fm10k_hw* %19, %struct.fm10k_hw** %5, align 8
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %21 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @FM10K_XCAST_MODE_PROMISC, align 4
  store i32 %30, i32* %6, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_ALLMULTI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @FM10K_XCAST_MODE_ALLMULTI, align 4
  store i32 %39, i32* %6, align 4
  br label %54

40:                                               ; preds = %31
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_BROADCAST, align 4
  %45 = load i32, i32* @IFF_MULTICAST, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @FM10K_XCAST_MODE_MULTI, align 4
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @FM10K_XCAST_MODE_NONE, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %57 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %56)
  %58 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %59 = call i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %63 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32 (%struct.fm10k_hw.1*, i64, i32, i32)*, i32 (%struct.fm10k_hw.1*, i64, i32, i32)** %65, align 8
  %67 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %68 = bitcast %struct.fm10k_hw* %67 to %struct.fm10k_hw.1*
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %71 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 %66(%struct.fm10k_hw.1* %68, i64 %69, i32 %72, i32 1)
  br label %74

74:                                               ; preds = %61, %55
  %75 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %76 = load i64, i64* @FM10K_VLAN_ALL, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @FM10K_XCAST_MODE_PROMISC, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @fm10k_queue_vlan_request(%struct.fm10k_intfc* %75, i64 %76, i32 0, i32 %80)
  %82 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %83 = call i64 @fm10k_find_next_vlan(%struct.fm10k_intfc* %82, i64 0)
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %140, %74
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @VLAN_N_VID, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %144

88:                                               ; preds = %84
  %89 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @fm10k_queue_vlan_request(%struct.fm10k_intfc* %89, i64 %90, i32 0, i32 1)
  %92 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %95 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %92, i64 %93, i32 %97, i64 %98, i32 1)
  %100 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %3, align 8
  %101 = icmp ne %struct.fm10k_l2_accel* %100, null
  br i1 %101, label %102, label %139

102:                                              ; preds = %88
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %135, %102
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %3, align 8
  %106 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %103
  %110 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %3, align 8
  %111 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %110, i32 0, i32 2
  %112 = load %struct.net_device**, %struct.net_device*** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.net_device*, %struct.net_device** %112, i64 %114
  %116 = load %struct.net_device*, %struct.net_device** %115, align 8
  store %struct.net_device* %116, %struct.net_device** %10, align 8
  %117 = load %struct.net_device*, %struct.net_device** %10, align 8
  %118 = icmp ne %struct.net_device* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %109
  br label %135

120:                                              ; preds = %109
  %121 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %3, align 8
  %122 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  store i64 %127, i64* %9, align 8
  %128 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.net_device*, %struct.net_device** %10, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %128, i64 %129, i32 %132, i64 %133, i32 1)
  br label %135

135:                                              ; preds = %120, %119
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %103

138:                                              ; preds = %103
  br label %139

139:                                              ; preds = %138, %88
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i64 @fm10k_find_next_vlan(%struct.fm10k_intfc* %141, i64 %142)
  store i64 %143, i64* %8, align 8
  br label %84

144:                                              ; preds = %84
  %145 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %146 = call i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %150 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32 (%struct.fm10k_hw.0*, i64, i32)*, i32 (%struct.fm10k_hw.0*, i64, i32)** %152, align 8
  %154 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %155 = bitcast %struct.fm10k_hw* %154 to %struct.fm10k_hw.0*
  %156 = load i64, i64* %9, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 %153(%struct.fm10k_hw.0* %155, i64 %156, i32 %157)
  br label %159

159:                                              ; preds = %148, %144
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = load i32, i32* @fm10k_uc_sync, align 4
  %162 = load i32, i32* @fm10k_uc_unsync, align 4
  %163 = call i32 @__dev_uc_sync(%struct.net_device* %160, i32 %161, i32 %162)
  %164 = load %struct.net_device*, %struct.net_device** %4, align 8
  %165 = load i32, i32* @fm10k_mc_sync, align 4
  %166 = load i32, i32* @fm10k_mc_unsync, align 4
  %167 = call i32 @__dev_mc_sync(%struct.net_device* %164, i32 %165, i32 %166)
  %168 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %3, align 8
  %169 = icmp ne %struct.fm10k_l2_accel* %168, null
  br i1 %169, label %170, label %220

170:                                              ; preds = %159
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %216, %170
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %3, align 8
  %174 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %219

177:                                              ; preds = %171
  %178 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %3, align 8
  %179 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %178, i32 0, i32 2
  %180 = load %struct.net_device**, %struct.net_device*** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.net_device*, %struct.net_device** %180, i64 %182
  %184 = load %struct.net_device*, %struct.net_device** %183, align 8
  store %struct.net_device* %184, %struct.net_device** %11, align 8
  %185 = load %struct.net_device*, %struct.net_device** %11, align 8
  %186 = icmp ne %struct.net_device* %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %177
  br label %216

188:                                              ; preds = %177
  %189 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %3, align 8
  %190 = getelementptr inbounds %struct.fm10k_l2_accel, %struct.fm10k_l2_accel* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  store i64 %195, i64* %9, align 8
  %196 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %197 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32 (%struct.fm10k_hw.0*, i64, i32)*, i32 (%struct.fm10k_hw.0*, i64, i32)** %199, align 8
  %201 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %202 = bitcast %struct.fm10k_hw* %201 to %struct.fm10k_hw.0*
  %203 = load i64, i64* %9, align 8
  %204 = load i32, i32* @FM10K_XCAST_MODE_NONE, align 4
  %205 = call i32 %200(%struct.fm10k_hw.0* %202, i64 %203, i32 %204)
  %206 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %207 = load i64, i64* %9, align 8
  %208 = load %struct.net_device*, %struct.net_device** %11, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %212 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %206, i64 %207, i32 %210, i64 %214, i32 1)
  br label %216

216:                                              ; preds = %188, %187
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %7, align 4
  br label %171

219:                                              ; preds = %171
  br label %220

220:                                              ; preds = %219, %159
  %221 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %222 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %221)
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %225 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  %226 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %227 = call i32 @fm10k_restore_udp_port_info(%struct.fm10k_intfc* %226)
  ret void
}

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_queue_vlan_request(%struct.fm10k_intfc*, i64, i32, i32) #1

declare dso_local i64 @fm10k_find_next_vlan(%struct.fm10k_intfc*, i64) #1

declare dso_local i32 @fm10k_queue_mac_request(%struct.fm10k_intfc*, i64, i32, i64, i32) #1

declare dso_local i32 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @__dev_mc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_restore_udp_port_info(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
