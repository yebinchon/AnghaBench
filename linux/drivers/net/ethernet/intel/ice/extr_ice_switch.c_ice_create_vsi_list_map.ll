; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_create_vsi_list_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_create_vsi_list_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi_list_map_info = type { i32, i32, i32, i32 }
%struct.ice_hw = type { %struct.ice_switch_info* }
%struct.ice_switch_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ice_vsi_list_map_info* (%struct.ice_hw*, i32*, i32, i32)* @ice_create_vsi_list_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ice_vsi_list_map_info* @ice_create_vsi_list_map(%struct.ice_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ice_vsi_list_map_info*, align 8
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_switch_info*, align 8
  %11 = alloca %struct.ice_vsi_list_map_info*, align 8
  %12 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %13, i32 0, i32 0
  %15 = load %struct.ice_switch_info*, %struct.ice_switch_info** %14, align 8
  store %struct.ice_switch_info* %15, %struct.ice_switch_info** %10, align 8
  %16 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %17 = call i32 @ice_hw_to_dev(%struct.ice_hw* %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ice_vsi_list_map_info* @devm_kcalloc(i32 %17, i32 1, i32 16, i32 %18)
  store %struct.ice_vsi_list_map_info* %19, %struct.ice_vsi_list_map_info** %11, align 8
  %20 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %11, align 8
  %21 = icmp ne %struct.ice_vsi_list_map_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.ice_vsi_list_map_info* null, %struct.ice_vsi_list_map_info** %5, align 8
  br label %53

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %11, align 8
  %26 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %11, align 8
  %28 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %43, %23
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %11, align 8
  %40 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_bit(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %11, align 8
  %48 = getelementptr inbounds %struct.ice_vsi_list_map_info, %struct.ice_vsi_list_map_info* %47, i32 0, i32 2
  %49 = load %struct.ice_switch_info*, %struct.ice_switch_info** %10, align 8
  %50 = getelementptr inbounds %struct.ice_switch_info, %struct.ice_switch_info* %49, i32 0, i32 0
  %51 = call i32 @list_add(i32* %48, i32* %50)
  %52 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %11, align 8
  store %struct.ice_vsi_list_map_info* %52, %struct.ice_vsi_list_map_info** %5, align 8
  br label %53

53:                                               ; preds = %46, %22
  %54 = load %struct.ice_vsi_list_map_info*, %struct.ice_vsi_list_map_info** %5, align 8
  ret %struct.ice_vsi_list_map_info* %54
}

declare dso_local %struct.ice_vsi_list_map_info* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
