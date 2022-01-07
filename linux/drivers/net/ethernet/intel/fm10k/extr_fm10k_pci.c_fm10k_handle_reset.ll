; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_handle_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_handle_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, %struct.TYPE_7__*, %struct.fm10k_hw, %struct.net_device* }
%struct.TYPE_7__ = type { i32 }
%struct.fm10k_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.1*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_hw.1 = type opaque
%struct.net_device = type { i32, i32, i32, i32 }

@__FM10K_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"reset_hw failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"init_hw failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"init_queueing_scheme failed: %d\0A\00", align 1
@fm10k_mac_vf = common dso_local global i64 0, align 8
@NET_ADDR_RANDOM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*)* @fm10k_handle_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_handle_reset(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %7 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %8 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %7, i32 0, i32 3
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %11 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %10, i32 0, i32 2
  store %struct.fm10k_hw* %11, %struct.fm10k_hw** %5, align 8
  %12 = load i32, i32* @__FM10K_RESETTING, align 4
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = call i32 (...) @rtnl_lock()
  %22 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %23 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = call i32 @pci_set_master(%struct.TYPE_7__* %24)
  %26 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %27 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.0*)** %29, align 8
  %31 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %32 = bitcast %struct.fm10k_hw* %31 to %struct.fm10k_hw.0*
  %33 = call i32 %30(%struct.fm10k_hw.0* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %38 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %184

43:                                               ; preds = %1
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %45 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32 (%struct.fm10k_hw.1*)*, i32 (%struct.fm10k_hw.1*)** %47, align 8
  %49 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %50 = bitcast %struct.fm10k_hw* %49 to %struct.fm10k_hw.1*
  %51 = call i32 %48(%struct.fm10k_hw.1* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %56 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %184

61:                                               ; preds = %43
  %62 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %63 = call i32 @fm10k_init_queueing_scheme(%struct.fm10k_intfc* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %68 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %184

73:                                               ; preds = %61
  %74 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %75 = call i32 @fm10k_mbx_request_irq(%struct.fm10k_intfc* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %181

79:                                               ; preds = %73
  %80 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %81 = call i32 @fm10k_hw_ready(%struct.fm10k_intfc* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %178

85:                                               ; preds = %79
  %86 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %87 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @fm10k_mac_vf, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %151

92:                                               ; preds = %85
  %93 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %94 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @is_valid_ether_addr(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %92
  %100 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %101 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %105 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ether_addr_copy(i32 %103, i32 %107)
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %113 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ether_addr_copy(i32 %111, i32 %115)
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %121 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ether_addr_copy(i32 %119, i32 %123)
  %125 = load i32, i32* @NET_ADDR_RANDOM, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %99, %92
  %132 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %133 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.net_device*, %struct.net_device** %4, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %150

144:                                              ; preds = %131
  %145 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %146 = load %struct.net_device*, %struct.net_device** %4, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %137
  br label %151

151:                                              ; preds = %150, %85
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = call i64 @netif_running(%struct.net_device* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load %struct.net_device*, %struct.net_device** %4, align 8
  %157 = call i32 @fm10k_open(%struct.net_device* %156)
  br label %159

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %155
  %160 = phi i32 [ %157, %155 ], [ 0, %158 ]
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %178

164:                                              ; preds = %159
  %165 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %166 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %165, i32 0, i32 1
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = call i32 @fm10k_iov_resume(%struct.TYPE_7__* %167)
  %169 = call i32 (...) @rtnl_unlock()
  %170 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %171 = call i32 @fm10k_resume_macvlan_task(%struct.fm10k_intfc* %170)
  %172 = load i32, i32* @__FM10K_RESETTING, align 4
  %173 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %174 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @clear_bit(i32 %172, i32 %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %194

178:                                              ; preds = %163, %84
  %179 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %180 = call i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc* %179)
  br label %181

181:                                              ; preds = %178, %78
  %182 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %183 = call i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc* %182)
  br label %184

184:                                              ; preds = %181, %66, %54, %36
  %185 = load %struct.net_device*, %struct.net_device** %4, align 8
  %186 = call i32 @netif_device_detach(%struct.net_device* %185)
  %187 = call i32 (...) @rtnl_unlock()
  %188 = load i32, i32* @__FM10K_RESETTING, align 4
  %189 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %190 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @clear_bit(i32 %188, i32 %191)
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %184, %164
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @fm10k_init_queueing_scheme(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_mbx_request_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_hw_ready(%struct.fm10k_intfc*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @fm10k_open(%struct.net_device*) #1

declare dso_local i32 @fm10k_iov_resume(%struct.TYPE_7__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @fm10k_resume_macvlan_task(%struct.fm10k_intfc*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @fm10k_mbx_free_irq(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_clear_queueing_scheme(%struct.fm10k_intfc*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
