; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_update_filter_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_update_filter_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_aqc_add_macvlan_element_data = type { i64 }
%struct.i40e_new_mac_filter = type { i32 }

@I40E_AQC_MM_ERR_NO_RES = common dso_local global i64 0, align 8
@I40E_FILTER_FAILED = common dso_local global i32 0, align 4
@I40E_FILTER_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.i40e_aqc_add_macvlan_element_data*, %struct.i40e_new_mac_filter*)* @i40e_update_filter_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_update_filter_state(i32 %0, %struct.i40e_aqc_add_macvlan_element_data* %1, %struct.i40e_new_mac_filter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_aqc_add_macvlan_element_data*, align 8
  %6 = alloca %struct.i40e_new_mac_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.i40e_aqc_add_macvlan_element_data* %1, %struct.i40e_aqc_add_macvlan_element_data** %5, align 8
  store %struct.i40e_new_mac_filter* %2, %struct.i40e_new_mac_filter** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load %struct.i40e_aqc_add_macvlan_element_data*, %struct.i40e_aqc_add_macvlan_element_data** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.i40e_aqc_add_macvlan_element_data, %struct.i40e_aqc_add_macvlan_element_data* %14, i64 %16
  %18 = getelementptr inbounds %struct.i40e_aqc_add_macvlan_element_data, %struct.i40e_aqc_add_macvlan_element_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @I40E_AQC_MM_ERR_NO_RES, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* @I40E_FILTER_FAILED, align 4
  %24 = load %struct.i40e_new_mac_filter*, %struct.i40e_new_mac_filter** %6, align 8
  %25 = getelementptr inbounds %struct.i40e_new_mac_filter, %struct.i40e_new_mac_filter* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %32

26:                                               ; preds = %13
  %27 = load i32, i32* @I40E_FILTER_ACTIVE, align 4
  %28 = load %struct.i40e_new_mac_filter*, %struct.i40e_new_mac_filter** %6, align 8
  %29 = getelementptr inbounds %struct.i40e_new_mac_filter, %struct.i40e_new_mac_filter* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.i40e_new_mac_filter*, %struct.i40e_new_mac_filter** %6, align 8
  %34 = call %struct.i40e_new_mac_filter* @i40e_next_filter(%struct.i40e_new_mac_filter* %33)
  store %struct.i40e_new_mac_filter* %34, %struct.i40e_new_mac_filter** %6, align 8
  %35 = load %struct.i40e_new_mac_filter*, %struct.i40e_new_mac_filter** %6, align 8
  %36 = icmp ne %struct.i40e_new_mac_filter* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %42

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9

42:                                               ; preds = %37, %9
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.i40e_new_mac_filter* @i40e_next_filter(%struct.i40e_new_mac_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
