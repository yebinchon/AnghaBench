; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_kill_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_kill_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ice_fltr_list_entry = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tmp_add_list = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_SW_LKUP_VLAN = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i32 0, align 4
@ICE_FLTR_TX = common dso_local global i32 0, align 4
@ICE_SRC_ID_VSI = common dso_local global i32 0, align 4
@ICE_ERR_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Failed to remove VLAN %d on VSI %i, it does not exist, status: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Error removing VLAN %d on vsi %i error: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_kill_vlan(%struct.ice_vsi* %0, i32 %1) #0 {
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
  br label %102

26:                                               ; preds = %2
  %27 = load i32, i32* @ICE_SW_LKUP_VLAN, align 4
  %28 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %29 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  %31 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %32 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %35 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @ICE_FWD_TO_VSI, align 4
  %38 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %39 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %43 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* @ICE_FLTR_TX, align 4
  %48 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %49 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @ICE_SRC_ID_VSI, align 4
  %52 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %53 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %56 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %55, i32 0, i32 0
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.ice_fltr_list_entry*, %struct.ice_fltr_list_entry** %6, align 8
  %59 = getelementptr inbounds %struct.ice_fltr_list_entry, %struct.ice_fltr_list_entry* %58, i32 0, i32 0
  %60 = call i32 @list_add(i32* %59, i32* @tmp_add_list)
  %61 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %62 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %61, i32 0, i32 1
  %63 = call i32 @ice_remove_vlan(i32* %62, i32* @tmp_add_list)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ICE_ERR_DOES_NOT_EXIST, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %26
  %68 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %69 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %74 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %75, i32 %76)
  br label %95

78:                                               ; preds = %26
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %83 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %88 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89, i32 %90)
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %81, %78
  br label %95

95:                                               ; preds = %94, %67
  %96 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %97 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i32 @ice_free_fltr_list(i32* %99, i32* @tmp_add_list)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %23
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.ice_fltr_list_entry* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ice_remove_vlan(i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ice_free_fltr_list(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
