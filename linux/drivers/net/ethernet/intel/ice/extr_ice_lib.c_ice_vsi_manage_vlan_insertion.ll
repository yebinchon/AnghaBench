; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_manage_vlan_insertion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_manage_vlan_insertion.c"
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
@ICE_AQ_VSI_VLAN_MODE_ALL = common dso_local global i32 0, align 4
@ICE_AQ_VSI_VLAN_EMOD_M = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_VLAN_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"update VSI for VLAN insert failed, err %d aq_err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_manage_vlan_insertion(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca %struct.ice_vsi_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %9 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %16 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.ice_hw* %18, %struct.ice_hw** %5, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device* %19, i32 8, i32 %20)
  store %struct.ice_vsi_ctx* %21, %struct.ice_vsi_ctx** %6, align 8
  %22 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %23 = icmp ne %struct.ice_vsi_ctx* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %1
  %28 = load i32, i32* @ICE_AQ_VSI_VLAN_MODE_ALL, align 4
  %29 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %33 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ICE_AQ_VSI_VLAN_EMOD_M, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @ICE_AQ_VSI_PROP_VLAN_VALID, align 4
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %49 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %50 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %53 = call i32 @ice_update_vsi(%struct.ice_hw* %48, i32 %51, %struct.ice_vsi_ctx* %52, i32* null)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %27
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %60 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %74

66:                                               ; preds = %27
  %67 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %72 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %56
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %77 = call i32 @devm_kfree(%struct.device* %75, %struct.ice_vsi_ctx* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %24
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_update_vsi(%struct.ice_hw*, i32, %struct.ice_vsi_ctx*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
