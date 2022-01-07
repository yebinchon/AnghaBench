; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_add_rem_eth_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_add_rem_eth_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ice_fltr_list_entry = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tmp_add_list = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_SW_LKUP_ETHERTYPE = common dso_local global i32 0, align 4
@ICE_DROP_PACKET = common dso_local global i32 0, align 4
@ICE_FLTR_TX = common dso_local global i32 0, align 4
@ICE_SRC_ID_VSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Failure Adding or Removing Ethertype on VSI %i error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vsi*, i32)* @ice_vsi_add_rem_eth_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_vsi_add_rem_eth_mac(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_fltr_list_entry*, align 8
  %6 = alloca %struct.ice_pf*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %8, i32 0, i32 3
  %10 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  store %struct.ice_pf* %10, %struct.ice_pf** %6, align 8
  %11 = load i32, i32* @tmp_add_list, align 4
  %12 = call i32 @LIST_HEAD(i32 %11)
  %13 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ice_fltr_list_entry* @devm_kzalloc(i32* %16, i32 28, i32 %17)
  store %struct.ice_fltr_list_entry* %18, %struct.ice_fltr_list_entry** %5, align 8
  %19 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %20 = icmp ne %struct.ice_fltr_list_entry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %88

22:                                               ; preds = %2
  %23 = load i32, i32* @ICE_SW_LKUP_ETHERTYPE, align 4
  %24 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %25 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @ICE_DROP_PACKET, align 4
  %28 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %29 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @ICE_FLTR_TX, align 4
  %32 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %33 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ICE_SRC_ID_VSI, align 4
  %36 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %37 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %40 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %43 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %46 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %49 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 4
  %53 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %54 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %53, i32 0, i32 0
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %5, align 8
  %57 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %56, i32 0, i32 0
  %58 = call i32 @list_add(i32* %57, i32* @tmp_add_list)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %22
  %62 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %63 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %62, i32 0, i32 1
  %64 = call i32 @ice_add_eth_mac(i32* %63, i32* @tmp_add_list)
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %22
  %66 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %67 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %66, i32 0, i32 1
  %68 = call i32 @ice_remove_eth_mac(i32* %67, i32* @tmp_add_list)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %74 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %78 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %72, %69
  %83 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %84 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = call i32 @ice_free_fltr_list(i32* %86, i32* @tmp_add_list)
  br label %88

88:                                               ; preds = %82, %21
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.ice_fltr_list_entry* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ice_add_eth_mac(i32*, i32*) #1

declare dso_local i32 @ice_remove_eth_mac(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @ice_free_fltr_list(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
