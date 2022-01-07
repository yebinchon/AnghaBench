; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_entry_to_vsi_fltr_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_add_entry_to_vsi_fltr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.list_head = type { i32 }
%struct.ice_fltr_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ice_fltr_list_entry = type { i32, %struct.ice_fltr_info }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, %struct.list_head*, %struct.ice_fltr_info*)* @ice_add_entry_to_vsi_fltr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_add_entry_to_vsi_fltr_list(%struct.ice_hw* %0, i32 %1, %struct.list_head* %2, %struct.ice_fltr_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.ice_fltr_info*, align 8
  %10 = alloca %struct.ice_fltr_list_entry*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store %struct.ice_fltr_info* %3, %struct.ice_fltr_info** %9, align 8
  %11 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %12 = call i32 @ice_hw_to_dev(%struct.ice_hw* %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ice_fltr_list_entry* @devm_kzalloc(i32 %12, i32 16, i32 %13)
  store %struct.ice_fltr_list_entry* %14, %struct.ice_fltr_list_entry** %10, align 8
  %15 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %10, align 8
  %16 = icmp ne %struct.ice_fltr_list_entry* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %10, align 8
  %21 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %20, i32 0, i32 1
  %22 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %9, align 8
  %23 = bitcast %struct.ice_fltr_info* %21 to i8*
  %24 = bitcast %struct.ice_fltr_info* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = load i32, i32* @ICE_FWD_TO_VSI, align 4
  %26 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %10, align 8
  %27 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %10, align 8
  %31 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ice_get_hw_vsi_num(%struct.ice_hw* %33, i32 %34)
  %36 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %10, align 8
  %37 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %10, align 8
  %41 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %40, i32 0, i32 0
  %42 = load %struct.list_head*, %struct.list_head** %8, align 8
  %43 = call i32 @list_add(i32* %41, %struct.list_head* %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %19, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.ice_fltr_list_entry* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ice_get_hw_vsi_num(%struct.ice_hw*, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
