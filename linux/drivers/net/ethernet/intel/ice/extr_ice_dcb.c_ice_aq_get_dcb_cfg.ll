; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_get_dcb_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb.c_ice_aq_get_dcb_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_dcbx_cfg = type { i32 }

@ICE_LLDPDU_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_get_dcb_cfg(%struct.ice_hw* %0, i32 %1, i32 %2, %struct.ice_dcbx_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_dcbx_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ice_dcbx_cfg* %3, %struct.ice_dcbx_cfg** %9, align 8
  %12 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %13 = call i32 @ice_hw_to_dev(%struct.ice_hw* %12)
  %14 = load i32, i32* @ICE_LLDPDU_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @devm_kzalloc(i32 %13, i32 %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %20, i32* %5, align 4
  br label %41

21:                                               ; preds = %4
  %22 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = load i32, i32* @ICE_LLDPDU_SIZE, align 4
  %28 = call i32 @ice_aq_get_lldp_mib(%struct.ice_hw* %22, i32 %23, i32 %24, i8* %26, i32 %27, i32* null, i32* null, i32* null)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load i32*, i32** %11, align 8
  %33 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %9, align 8
  %34 = call i32 @ice_lldp_to_dcb_cfg(i32* %32, %struct.ice_dcbx_cfg* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %21
  %36 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %37 = call i32 @ice_hw_to_dev(%struct.ice_hw* %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @devm_kfree(i32 %37, i32* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @ice_aq_get_lldp_mib(%struct.ice_hw*, i32, i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ice_lldp_to_dcb_cfg(i32*, %struct.ice_dcbx_cfg*) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
