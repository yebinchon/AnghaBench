; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_aqc_del_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_aqc_del_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.i40e_hw }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_aqc_remove_macvlan_element_data = type { i32 }

@I40E_AQ_RC_ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"ignoring delete macvlan error on %s, err %s, aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i8*, %struct.i40e_aqc_remove_macvlan_element_data*, i32, i32*)* @i40e_aqc_del_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_aqc_del_filters(%struct.i40e_vsi* %0, i8* %1, %struct.i40e_aqc_remove_macvlan_element_data* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i40e_aqc_remove_macvlan_element_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.i40e_aqc_remove_macvlan_element_data* %2, %struct.i40e_aqc_remove_macvlan_element_data** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store %struct.i40e_hw* %17, %struct.i40e_hw** %11, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.i40e_aqc_remove_macvlan_element_data*, %struct.i40e_aqc_remove_macvlan_element_data** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @i40e_aq_remove_macvlan(%struct.i40e_hw* %18, i32 %21, %struct.i40e_aqc_remove_macvlan_element_data* %22, i32 %23, i32* null)
  store i64 %24, i64* %12, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @I40E_AQ_RC_ENOENT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %40 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @i40e_stat_str(%struct.i40e_hw* %46, i64 %47)
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @i40e_aq_str(%struct.i40e_hw* %49, i32 %50)
  %52 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %35, %31, %5
  ret void
}

declare dso_local i64 @i40e_aq_remove_macvlan(%struct.i40e_hw*, i32, %struct.i40e_aqc_remove_macvlan_element_data*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i64) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
