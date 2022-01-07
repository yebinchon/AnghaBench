; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_set_dcb_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_set_dcb_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_dcbx_cfg, %struct.ice_hw* }
%struct.ice_dcbx_cfg = type { i64 }
%struct.ice_hw = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_LLDPDU_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@SET_LOCAL_MIB_TYPE_LOCAL_MIB = common dso_local global i32 0, align 4
@ICE_DCBX_APPS_NON_WILLING = common dso_local global i64 0, align 8
@SET_LOCAL_MIB_TYPE_CEE_NON_WILLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_dcb_cfg(%struct.ice_port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ice_dcbx_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %3, align 8
  store i32* null, i32** %5, align 8
  %10 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %11 = icmp ne %struct.ice_port_info* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %16 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %15, i32 0, i32 1
  %17 = load %struct.ice_hw*, %struct.ice_hw** %16, align 8
  store %struct.ice_hw* %17, %struct.ice_hw** %8, align 8
  %18 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %19 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %18, i32 0, i32 0
  store %struct.ice_dcbx_cfg* %19, %struct.ice_dcbx_cfg** %6, align 8
  %20 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %21 = call i32 @ice_hw_to_dev(%struct.ice_hw* %20)
  %22 = load i32, i32* @ICE_LLDPDU_SIZE, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @devm_kzalloc(i32 %21, i32 %22, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %14
  %28 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %28, i32* %2, align 4
  br label %55

29:                                               ; preds = %14
  %30 = load i32, i32* @SET_LOCAL_MIB_TYPE_LOCAL_MIB, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %32 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICE_DCBX_APPS_NON_WILLING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* @SET_LOCAL_MIB_TYPE_CEE_NON_WILLING, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %6, align 8
  %43 = call i32 @ice_dcb_cfg_to_lldp(i32* %41, i32* %9, %struct.ice_dcbx_cfg* %42)
  %44 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = bitcast i32* %46 to i8*
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @ice_aq_set_lldp_mib(%struct.ice_hw* %44, i32 %45, i8* %47, i32 %48, i32* null)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %51 = call i32 @ice_hw_to_dev(%struct.ice_hw* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @devm_kfree(i32 %51, i32* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %40, %27, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_dcb_cfg_to_lldp(i32*, i32*, %struct.ice_dcbx_cfg*) #1

declare dso_local i32 @ice_aq_set_lldp_mib(%struct.ice_hw*, i32, i8*, i32, i32*) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
