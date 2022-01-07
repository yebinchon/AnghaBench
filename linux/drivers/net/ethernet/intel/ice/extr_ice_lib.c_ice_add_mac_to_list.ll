; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_add_mac_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_add_mac_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.list_head = type { i32 }
%struct.ice_fltr_list_entry = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_FLTR_TX = common dso_local global i32 0, align 4
@ICE_SRC_ID_VSI = common dso_local global i32 0, align 4
@ICE_SW_LKUP_MAC = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_add_mac_to_list(%struct.ice_vsi* %0, %struct.list_head* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ice_fltr_list_entry*, align 8
  %9 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %11 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %10, i32 0, i32 1
  %12 = load %struct.ice_pf*, %struct.ice_pf** %11, align 8
  store %struct.ice_pf* %12, %struct.ice_pf** %9, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.ice_fltr_list_entry* @devm_kzalloc(i32* %16, i32 28, i32 %17)
  store %struct.ice_fltr_list_entry* %18, %struct.ice_fltr_list_entry** %8, align 8
  %19 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %20 = icmp ne %struct.ice_fltr_list_entry* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load i32, i32* @ICE_FLTR_TX, align 4
  %26 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %27 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @ICE_SRC_ID_VSI, align 4
  %30 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %31 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @ICE_SW_LKUP_MAC, align 4
  %34 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %35 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @ICE_FWD_TO_VSI, align 4
  %38 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %39 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %42 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %48 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ether_addr_copy(i32 %52, i32* %53)
  %55 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %56 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %55, i32 0, i32 0
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %8, align 8
  %59 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %58, i32 0, i32 0
  %60 = load %struct.list_head*, %struct.list_head** %6, align 8
  %61 = call i32 @list_add(i32* %59, %struct.list_head* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %24, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ice_fltr_list_entry* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
