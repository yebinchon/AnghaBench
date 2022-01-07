; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_manage_vlan_stripping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_manage_vlan_stripping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { %struct.TYPE_9__, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.ice_hw, %struct.TYPE_6__* }
%struct.ice_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ice_vsi_ctx = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_EMOD_STR_BOTH = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_EMOD_NOTHING = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_MODE_ALL = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_VLAN_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"update VSI for VLAN strip failed, ena = %d err %d aq_err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_manage_vlan_stripping(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ice_hw*, align 8
  %8 = alloca %struct.ice_vsi_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %18 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.ice_hw* %20, %struct.ice_hw** %7, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device* %21, i32 8, i32 %22)
  store %struct.ice_vsi_ctx* %23, %struct.ice_vsi_ctx** %8, align 8
  %24 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %25 = icmp ne %struct.ice_vsi_ctx* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %86

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @ICE_AQ_VSI_VLAN_EMOD_STR_BOTH, align 4
  %34 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* @ICE_AQ_VSI_VLAN_EMOD_NOTHING, align 4
  %39 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @ICE_AQ_VSI_VLAN_MODE_ALL, align 4
  %44 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @ICE_AQ_VSI_PROP_VLAN_VALID, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %55 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %56 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %59 = call i32 @ice_update_vsi(%struct.ice_hw* %54, i32 %57, %struct.ice_vsi_ctx* %58, i32* null)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %42
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ice_hw*, %struct.ice_hw** %7, align 8
  %67 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %81

73:                                               ; preds = %42
  %74 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %79 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %73, %62
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %8, align 8
  %84 = call i32 @devm_kfree(%struct.device* %82, %struct.ice_vsi_ctx* %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %26
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_update_vsi(%struct.ice_hw*, i32, %struct.ice_vsi_ctx*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
