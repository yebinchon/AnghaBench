; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_set_port_id_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_set_port_id_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_hw* }
%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_set_port_id_led = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_set_port_id_led }

@ice_aqc_opc_set_port_id_led = common dso_local global i32 0, align 4
@ICE_AQC_PORT_IDENT_LED_ORIG = common dso_local global i32 0, align 4
@ICE_AQC_PORT_IDENT_LED_BLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_set_port_id_led(%struct.ice_port_info* %0, i32 %1, %struct.ice_sq_cd* %2) #0 {
  %4 = alloca %struct.ice_port_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_sq_cd*, align 8
  %7 = alloca %struct.ice_aqc_set_port_id_led*, align 8
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ice_sq_cd* %2, %struct.ice_sq_cd** %6, align 8
  %10 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %11 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %10, i32 0, i32 0
  %12 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  store %struct.ice_hw* %12, %struct.ice_hw** %8, align 8
  %13 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ice_aqc_set_port_id_led* %14, %struct.ice_aqc_set_port_id_led** %7, align 8
  %15 = load i32, i32* @ice_aqc_opc_set_port_id_led, align 4
  %16 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %9, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @ICE_AQC_PORT_IDENT_LED_ORIG, align 4
  %21 = load %struct.ice_aqc_set_port_id_led*, %struct.ice_aqc_set_port_id_led** %7, align 8
  %22 = getelementptr inbounds %struct.ice_aqc_set_port_id_led, %struct.ice_aqc_set_port_id_led* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @ICE_AQC_PORT_IDENT_LED_BLINK, align 4
  %25 = load %struct.ice_aqc_set_port_id_led*, %struct.ice_aqc_set_port_id_led** %7, align 8
  %26 = getelementptr inbounds %struct.ice_aqc_set_port_id_led, %struct.ice_aqc_set_port_id_led* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %29 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %6, align 8
  %30 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %28, %struct.ice_aq_desc* %9, i32* null, i32 0, %struct.ice_sq_cd* %29)
  ret i32 %30
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
