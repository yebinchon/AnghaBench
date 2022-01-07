; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_add_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ice_fltr_list_entry = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tmp_add_list = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_SW_LKUP_VLAN = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i32 0, align 4
@ICE_FLTR_TX = common dso_local global i32 0, align 4
@ICE_SRC_ID_VSI = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failure Adding VLAN %d on VSI %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_add_vlan(%struct.ice_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_fltr_list_entry*, align 8
  %7 = alloca %struct.ice_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %11 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %10, i32 0, i32 2
  %12 = load %struct.ice_pf*, %struct.ice_pf** %11, align 8
  store %struct.ice_pf* %12, %struct.ice_pf** %7, align 8
  %13 = load i32, i32* @tmp_add_list, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  store i32 0, i32* %9, align 4
  %15 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %16 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ice_fltr_list_entry* @devm_kzalloc(i32* %18, i32 28, i32 %19)
  store %struct.ice_fltr_list_entry* %20, %struct.ice_fltr_list_entry** %6, align 8
  %21 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %22 = icmp ne %struct.ice_fltr_list_entry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %85

26:                                               ; preds = %2
  %27 = load i32, i32* @ICE_SW_LKUP_VLAN, align 4
  %28 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %29 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @ICE_FWD_TO_VSI, align 4
  %32 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %33 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @ICE_FLTR_TX, align 4
  %36 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %37 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @ICE_SRC_ID_VSI, align 4
  %40 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %41 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %44 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %47 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %51 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  %55 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %56 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %55, i32 0, i32 0
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %59 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %58, i32 0, i32 0
  %60 = call i32 @list_add(i32* %59, i32* @tmp_add_list)
  %61 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %62 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %61, i32 0, i32 1
  %63 = call i32 @ice_add_vlan(i32* %62, i32* @tmp_add_list)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %26
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %70 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %75 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %66, %26
  %79 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %80 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @ice_free_fltr_list(i32* %82, i32* @tmp_add_list)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %23
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.ice_fltr_list_entry* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ice_add_vlan(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @ice_free_fltr_list(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
