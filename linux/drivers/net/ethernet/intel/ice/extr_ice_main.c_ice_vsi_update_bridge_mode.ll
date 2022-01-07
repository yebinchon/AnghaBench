; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_update_bridge_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_update_bridge_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, %struct.ice_aqc_vsi_props, %struct.TYPE_5__* }
%struct.ice_aqc_vsi_props = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ice_hw, %struct.TYPE_4__* }
%struct.ice_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ice_vsi_ctx = type { %struct.ice_aqc_vsi_props }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEB = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SW_FLAG_ALLOW_LB = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_SW_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"update VSI for bridge mode failed, bmode = %d err %d aq_err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, i32)* @ice_vsi_update_bridge_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_update_bridge_mode(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ice_aqc_vsi_props*, align 8
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca %struct.ice_vsi_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.ice_hw* %21, %struct.ice_hw** %8, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %22, i32 0, i32 1
  store %struct.ice_aqc_vsi_props* %23, %struct.ice_aqc_vsi_props** %7, align 8
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device* %24, i32 8, i32 %25)
  store %struct.ice_vsi_ctx* %26, %struct.ice_vsi_ctx** %9, align 8
  %27 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %28 = icmp ne %struct.ice_vsi_ctx* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %94

32:                                               ; preds = %2
  %33 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %33, i32 0, i32 0
  %35 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %36 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %35, i32 0, i32 1
  %37 = bitcast %struct.ice_aqc_vsi_props* %34 to i8*
  %38 = bitcast %struct.ice_aqc_vsi_props* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @BRIDGE_MODE_VEB, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_ALLOW_LB, align 4
  %44 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.ice_aqc_vsi_props, %struct.ice_aqc_vsi_props* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %57

49:                                               ; preds = %32
  %50 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_ALLOW_LB, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.ice_aqc_vsi_props, %struct.ice_aqc_vsi_props* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %42
  %58 = load i32, i32* @ICE_AQ_VSI_PROP_SW_VALID, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %61 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.ice_aqc_vsi_props, %struct.ice_aqc_vsi_props* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %64 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %65 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %68 = call i32 @ice_update_vsi(%struct.ice_hw* %63, i32 %66, %struct.ice_vsi_ctx* %67, i32* null)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %57
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %76 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %89

82:                                               ; preds = %57
  %83 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %84 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.ice_aqc_vsi_props, %struct.ice_aqc_vsi_props* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ice_aqc_vsi_props*, %struct.ice_aqc_vsi_props** %7, align 8
  %88 = getelementptr inbounds %struct.ice_aqc_vsi_props, %struct.ice_aqc_vsi_props* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %71
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %9, align 8
  %92 = call i32 @devm_kfree(%struct.device* %90, %struct.ice_vsi_ctx* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %29
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_update_vsi(%struct.ice_hw*, i32, %struct.ice_vsi_ctx*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
