; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_update_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_update_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_vsi_ctx = type { i32, i8*, i8*, i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_add_update_free_vsi_resp = type { i32, i32 }
%struct.ice_aqc_add_get_update_free_vsi = type { i32 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_add_update_free_vsi_resp, %struct.ice_aqc_add_get_update_free_vsi }

@ice_aqc_opc_update_vsi = common dso_local global i32 0, align 4
@ICE_AQ_VSI_IS_VALID = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_vsi_ctx*, %struct.ice_sq_cd*)* @ice_aq_update_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_update_vsi(%struct.ice_hw* %0, %struct.ice_vsi_ctx* %1, %struct.ice_sq_cd* %2) #0 {
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_vsi_ctx*, align 8
  %6 = alloca %struct.ice_sq_cd*, align 8
  %7 = alloca %struct.ice_aqc_add_update_free_vsi_resp*, align 8
  %8 = alloca %struct.ice_aqc_add_get_update_free_vsi*, align 8
  %9 = alloca %struct.ice_aq_desc, align 4
  %10 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_vsi_ctx* %1, %struct.ice_vsi_ctx** %5, align 8
  store %struct.ice_sq_cd* %2, %struct.ice_sq_cd** %6, align 8
  %11 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %9, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.ice_aqc_add_get_update_free_vsi* %12, %struct.ice_aqc_add_get_update_free_vsi** %8, align 8
  %13 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ice_aqc_add_update_free_vsi_resp* %14, %struct.ice_aqc_add_update_free_vsi_resp** %7, align 8
  %15 = load i32, i32* @ice_aqc_opc_update_vsi, align 4
  %16 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %9, i32 %15)
  %17 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ICE_AQ_VSI_IS_VALID, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = load %struct.ice_aqc_add_get_update_free_vsi*, %struct.ice_aqc_add_get_update_free_vsi** %8, align 8
  %24 = getelementptr inbounds %struct.ice_aqc_add_get_update_free_vsi, %struct.ice_aqc_add_get_update_free_vsi* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %31 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %31, i32 0, i32 3
  %33 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %6, align 8
  %34 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %30, %struct.ice_aq_desc* %9, i32* %32, i32 4, %struct.ice_sq_cd* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %3
  %38 = load %struct.ice_aqc_add_update_free_vsi_resp*, %struct.ice_aqc_add_update_free_vsi_resp** %7, align 8
  %39 = getelementptr inbounds %struct.ice_aqc_add_update_free_vsi_resp, %struct.ice_aqc_add_update_free_vsi_resp* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le16_to_cpu(i32 %40)
  %42 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ice_aqc_add_update_free_vsi_resp*, %struct.ice_aqc_add_update_free_vsi_resp** %7, align 8
  %45 = getelementptr inbounds %struct.ice_aqc_add_update_free_vsi_resp, %struct.ice_aqc_add_update_free_vsi_resp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le16_to_cpu(i32 %46)
  %48 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %37, %3
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
