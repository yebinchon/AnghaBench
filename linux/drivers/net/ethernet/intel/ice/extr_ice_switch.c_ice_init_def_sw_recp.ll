; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_init_def_sw_recp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_init_def_sw_recp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ice_sw_recipe* }
%struct.ice_sw_recipe = type { i64, i32, i32, i32 }

@ICE_MAX_NUM_RECIPES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_SW_LKUP_LAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_init_def_sw_recp(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_sw_recipe*, align 8
  %5 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %6 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %7 = call i32 @ice_hw_to_dev(%struct.ice_hw* %6)
  %8 = load i32, i32* @ICE_MAX_NUM_RECIPES, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ice_sw_recipe* @devm_kcalloc(i32 %7, i32 %8, i32 24, i32 %9)
  store %struct.ice_sw_recipe* %10, %struct.ice_sw_recipe** %4, align 8
  %11 = load %struct.ice_sw_recipe*, %struct.ice_sw_recipe** %4, align 8
  %12 = icmp ne %struct.ice_sw_recipe* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ICE_SW_LKUP_LAST, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.ice_sw_recipe*, %struct.ice_sw_recipe** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %22, i64 %23
  %25 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load %struct.ice_sw_recipe*, %struct.ice_sw_recipe** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %26, i64 %27
  %29 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %28, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.ice_sw_recipe*, %struct.ice_sw_recipe** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %31, i64 %32
  %34 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.ice_sw_recipe*, %struct.ice_sw_recipe** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %36, i64 %37
  %39 = getelementptr inbounds %struct.ice_sw_recipe, %struct.ice_sw_recipe* %38, i32 0, i32 1
  %40 = call i32 @mutex_init(i32* %39)
  br label %41

41:                                               ; preds = %20
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %16

44:                                               ; preds = %16
  %45 = load %struct.ice_sw_recipe*, %struct.ice_sw_recipe** %4, align 8
  %46 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.ice_sw_recipe* %45, %struct.ice_sw_recipe** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.ice_sw_recipe* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
