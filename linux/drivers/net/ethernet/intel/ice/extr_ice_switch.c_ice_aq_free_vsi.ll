; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_free_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_aq_free_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_vsi_ctx = type { i32, i8*, i8* }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_add_update_free_vsi_resp = type { i32, i32 }
%struct.ice_aqc_add_get_update_free_vsi = type { i8*, i8* }
%struct.ice_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_add_update_free_vsi_resp, %struct.ice_aqc_add_get_update_free_vsi }

@ice_aqc_opc_free_vsi = common dso_local global i32 0, align 4
@ICE_AQ_VSI_IS_VALID = common dso_local global i32 0, align 4
@ICE_AQ_VSI_KEEP_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_vsi_ctx*, i32, %struct.ice_sq_cd*)* @ice_aq_free_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_free_vsi(%struct.ice_hw* %0, %struct.ice_vsi_ctx* %1, i32 %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca %struct.ice_vsi_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_sq_cd*, align 8
  %9 = alloca %struct.ice_aqc_add_update_free_vsi_resp*, align 8
  %10 = alloca %struct.ice_aqc_add_get_update_free_vsi*, align 8
  %11 = alloca %struct.ice_aq_desc, align 8
  %12 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store %struct.ice_vsi_ctx* %1, %struct.ice_vsi_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %8, align 8
  %13 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %11, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.ice_aqc_add_get_update_free_vsi* %14, %struct.ice_aqc_add_get_update_free_vsi** %10, align 8
  %15 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %11, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ice_aqc_add_update_free_vsi_resp* %16, %struct.ice_aqc_add_update_free_vsi_resp** %9, align 8
  %17 = load i32, i32* @ice_aqc_opc_free_vsi, align 4
  %18 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %11, i32 %17)
  %19 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ICE_AQ_VSI_IS_VALID, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.ice_aqc_add_get_update_free_vsi*, %struct.ice_aqc_add_get_update_free_vsi** %10, align 8
  %26 = getelementptr inbounds %struct.ice_aqc_add_get_update_free_vsi, %struct.ice_aqc_add_get_update_free_vsi* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load i32, i32* @ICE_AQ_VSI_KEEP_ALLOC, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.ice_aqc_add_get_update_free_vsi*, %struct.ice_aqc_add_get_update_free_vsi** %10, align 8
  %33 = getelementptr inbounds %struct.ice_aqc_add_get_update_free_vsi, %struct.ice_aqc_add_get_update_free_vsi* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %29, %4
  %35 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %36 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %8, align 8
  %37 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %35, %struct.ice_aq_desc* %11, i32* null, i32 0, %struct.ice_sq_cd* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = load %struct.ice_aqc_add_update_free_vsi_resp*, %struct.ice_aqc_add_update_free_vsi_resp** %9, align 8
  %42 = getelementptr inbounds %struct.ice_aqc_add_update_free_vsi_resp, %struct.ice_aqc_add_update_free_vsi_resp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le16_to_cpu(i32 %43)
  %45 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ice_aqc_add_update_free_vsi_resp*, %struct.ice_aqc_add_update_free_vsi_resp** %9, align 8
  %48 = getelementptr inbounds %struct.ice_aqc_add_update_free_vsi_resp, %struct.ice_aqc_add_update_free_vsi_resp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le16_to_cpu(i32 %49)
  %51 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %40, %34
  %54 = load i32, i32* %12, align 4
  ret i32 %54
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i32*, i32, %struct.ice_sq_cd*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
