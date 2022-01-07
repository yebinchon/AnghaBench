; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_query_port_ets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_query_port_ets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ice_aqc_port_ets_elem = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_query_port_ets = type { i32 }
%struct.ice_aq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ice_aqc_query_port_ets }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ice_aqc_opc_query_port_ets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, %struct.ice_aqc_port_ets_elem*, i32, %struct.ice_sq_cd*)* @ice_aq_query_port_ets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_query_port_ets(%struct.ice_port_info* %0, %struct.ice_aqc_port_ets_elem* %1, i32 %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_port_info*, align 8
  %7 = alloca %struct.ice_aqc_port_ets_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_sq_cd*, align 8
  %10 = alloca %struct.ice_aqc_query_port_ets*, align 8
  %11 = alloca %struct.ice_aq_desc, align 4
  %12 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %6, align 8
  store %struct.ice_aqc_port_ets_elem* %1, %struct.ice_aqc_port_ets_elem** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %9, align 8
  %13 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %14 = icmp ne %struct.ice_port_info* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %16, i32* %5, align 4
  br label %38

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.ice_aqc_query_port_ets* %19, %struct.ice_aqc_query_port_ets** %10, align 8
  %20 = load i32, i32* @ice_aqc_opc_query_port_ets, align 4
  %21 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %11, i32 %20)
  %22 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %23 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ice_aqc_query_port_ets*, %struct.ice_aqc_query_port_ets** %10, align 8
  %29 = getelementptr inbounds %struct.ice_aqc_query_port_ets, %struct.ice_aqc_query_port_ets* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %31 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ice_aqc_port_ets_elem*, %struct.ice_aqc_port_ets_elem** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %9, align 8
  %36 = call i32 @ice_aq_send_cmd(i32 %32, %struct.ice_aq_desc* %11, %struct.ice_aqc_port_ets_elem* %33, i32 %34, %struct.ice_sq_cd* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %17, %15
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(i32, %struct.ice_aq_desc*, %struct.ice_aqc_port_ets_elem*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
