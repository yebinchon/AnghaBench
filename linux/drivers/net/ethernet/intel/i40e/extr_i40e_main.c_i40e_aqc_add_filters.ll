; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_aqc_add_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_aqc_add_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i8*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.i40e_hw }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_aqc_add_macvlan_element_data = type { i32 }
%struct.i40e_new_mac_filter = type { i32 }

@I40E_VSI_MAIN = common dso_local global i8* null, align 8
@__I40E_VSI_OVERFLOW_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Error %s adding RX filters on %s, promiscuous mode forced on\0A\00", align 1
@I40E_VSI_SRIOV = common dso_local global i8* null, align 8
@I40E_VSI_VMDQ1 = common dso_local global i8* null, align 8
@I40E_VSI_VMDQ2 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"Error %s adding RX filters on %s, please set promiscuous on manually for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Error %s adding RX filters on %s, incorrect VSI type: %i.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i8*, %struct.i40e_aqc_add_macvlan_element_data*, %struct.i40e_new_mac_filter*, i32)* @i40e_aqc_add_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_aqc_add_filters(%struct.i40e_vsi* %0, i8* %1, %struct.i40e_aqc_add_macvlan_element_data* %2, %struct.i40e_new_mac_filter* %3, i32 %4) #0 {
  %6 = alloca %struct.i40e_vsi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i40e_aqc_add_macvlan_element_data*, align 8
  %9 = alloca %struct.i40e_new_mac_filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.i40e_aqc_add_macvlan_element_data* %2, %struct.i40e_aqc_add_macvlan_element_data** %8, align 8
  store %struct.i40e_new_mac_filter* %3, %struct.i40e_new_mac_filter** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store %struct.i40e_hw* %17, %struct.i40e_hw** %11, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.i40e_aqc_add_macvlan_element_data*, %struct.i40e_aqc_add_macvlan_element_data** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @i40e_aq_add_macvlan(%struct.i40e_hw* %18, i32 %21, %struct.i40e_aqc_add_macvlan_element_data* %22, i32 %23, i32* null)
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.i40e_aqc_add_macvlan_element_data*, %struct.i40e_aqc_add_macvlan_element_data** %8, align 8
  %31 = load %struct.i40e_new_mac_filter*, %struct.i40e_new_mac_filter** %9, align 8
  %32 = call i32 @i40e_update_filter_state(i32 %29, %struct.i40e_aqc_add_macvlan_element_data* %30, %struct.i40e_new_mac_filter* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %107

36:                                               ; preds = %5
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %38 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** @I40E_VSI_MAIN, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load i32, i32* @__I40E_VSI_OVERFLOW_PROMISC, align 4
  %44 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %45 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @set_bit(i32 %43, i32 %46)
  %48 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %49 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @i40e_aq_str(%struct.i40e_hw* %54, i32 %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i32*, i8*, i32, i8*, ...) @dev_warn(i32* %53, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %57)
  br label %106

59:                                               ; preds = %36
  %60 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %61 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** @I40E_VSI_SRIOV, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %67 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @I40E_VSI_VMDQ1, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %73 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @I40E_VSI_VMDQ2, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71, %65, %59
  %78 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %79 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @i40e_aq_str(%struct.i40e_hw* %84, i32 %85)
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 (i32*, i8*, i32, i8*, ...) @dev_warn(i32* %83, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %86, i8* %87, i8* %88)
  br label %105

90:                                               ; preds = %71
  %91 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.i40e_hw*, %struct.i40e_hw** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @i40e_aq_str(%struct.i40e_hw* %97, i32 %98)
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.i40e_vsi*, %struct.i40e_vsi** %6, align 8
  %102 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32*, i8*, i32, i8*, ...) @dev_warn(i32* %96, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %99, i8* %100, i8* %103)
  br label %105

105:                                              ; preds = %90, %77
  br label %106

106:                                              ; preds = %105, %42
  br label %107

107:                                              ; preds = %106, %5
  ret void
}

declare dso_local i32 @i40e_aq_add_macvlan(%struct.i40e_hw*, i32, %struct.i40e_aqc_add_macvlan_element_data*, i32, i32*) #1

declare dso_local i32 @i40e_update_filter_state(i32, %struct.i40e_aqc_add_macvlan_element_data*, %struct.i40e_new_mac_filter*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
