; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_manage_mac_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_manage_mac_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_manage_mac_write = type { i32, i32, i32 }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_manage_mac_write }

@ice_aqc_opc_manage_mac_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_manage_mac_write(%struct.ice_hw* %0, i32* %1, i32 %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_sq_cd*, align 8
  %9 = alloca %struct.ice_aqc_manage_mac_write*, align 8
  %10 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %8, align 8
  %11 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ice_aqc_manage_mac_write* %12, %struct.ice_aqc_manage_mac_write** %9, align 8
  %13 = load i32, i32* @ice_aqc_opc_manage_mac_write, align 4
  %14 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %10, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.ice_aqc_manage_mac_write*, %struct.ice_aqc_manage_mac_write** %9, align 8
  %17 = getelementptr inbounds %struct.ice_aqc_manage_mac_write, %struct.ice_aqc_manage_mac_write* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = load %struct.ice_aqc_manage_mac_write*, %struct.ice_aqc_manage_mac_write** %9, align 8
  %22 = getelementptr inbounds %struct.ice_aqc_manage_mac_write, %struct.ice_aqc_manage_mac_write* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = load %struct.ice_aqc_manage_mac_write*, %struct.ice_aqc_manage_mac_write** %9, align 8
  %28 = getelementptr inbounds %struct.ice_aqc_manage_mac_write, %struct.ice_aqc_manage_mac_write* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %30 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %8, align 8
  %31 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %29, %struct.ice_aq_desc* %10, i32* null, i32 0, %struct.ice_sq_cd* %30)
  ret i32 %31
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
