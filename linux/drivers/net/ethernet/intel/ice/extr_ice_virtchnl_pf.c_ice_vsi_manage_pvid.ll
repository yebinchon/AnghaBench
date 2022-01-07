; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vsi_manage_pvid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vsi_manage_pvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ice_hw, %struct.TYPE_4__* }
%struct.ice_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ice_vsi_ctx = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"update VSI for port VLAN failed, err %d aq_err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, i32, i32)* @ice_vsi_manage_pvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_manage_pvid(%struct.ice_vsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.ice_hw*, align 8
  %10 = alloca %struct.ice_vsi_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.ice_hw* %22, %struct.ice_hw** %9, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device* %23, i32 4, i32 %24)
  store %struct.ice_vsi_ctx* %25, %struct.ice_vsi_ctx** %10, align 8
  %26 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %27 = icmp ne %struct.ice_vsi_ctx* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %3
  %32 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %33 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ice_vsi_set_pvid_fill_ctxt(%struct.ice_vsi_ctx* %40, i32 %41)
  br label %46

43:                                               ; preds = %31
  %44 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %45 = call i32 @ice_vsi_kill_pvid_fill_ctxt(%struct.ice_vsi_ctx* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %49 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %52 = call i32 @ice_update_vsi(%struct.ice_hw* %47, i32 %50, %struct.ice_vsi_ctx* %51, i32* null)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load %struct.device*, %struct.device** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %59 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_info(%struct.device* %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %71

65:                                               ; preds = %46
  %66 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %67 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %70 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %55
  %72 = load %struct.device*, %struct.device** %8, align 8
  %73 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %10, align 8
  %74 = call i32 @devm_kfree(%struct.device* %72, %struct.ice_vsi_ctx* %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ice_vsi_set_pvid_fill_ctxt(%struct.ice_vsi_ctx*, i32) #1

declare dso_local i32 @ice_vsi_kill_pvid_fill_ctxt(%struct.ice_vsi_ctx*) #1

declare dso_local i32 @ice_update_vsi(%struct.ice_hw*, i32, %struct.ice_vsi_ctx*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
