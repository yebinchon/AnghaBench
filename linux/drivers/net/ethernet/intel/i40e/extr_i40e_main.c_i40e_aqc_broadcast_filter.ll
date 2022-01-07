; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_aqc_broadcast_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_aqc_broadcast_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_mac_filter = type { i64, i32 }

@I40E_FILTER_NEW = common dso_local global i64 0, align 8
@I40E_VLAN_ANY = common dso_local global i32 0, align 4
@__I40E_VSI_OVERFLOW_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error %s, forcing overflow promiscuous on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_vsi*, i8*, %struct.i40e_mac_filter*)* @i40e_aqc_broadcast_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_aqc_broadcast_filter(%struct.i40e_vsi* %0, i8* %1, %struct.i40e_mac_filter* %2) #0 {
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i40e_mac_filter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.i40e_mac_filter* %2, %struct.i40e_mac_filter** %6, align 8
  %10 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %6, align 8
  %11 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I40E_FILTER_NEW, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store %struct.i40e_hw* %19, %struct.i40e_hw** %8, align 8
  %20 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %6, align 8
  %21 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @I40E_VLAN_ANY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @i40e_aq_set_vsi_broadcast(%struct.i40e_hw* %26, i32 %29, i32 %30, i32* null)
  store i64 %31, i64* %9, align 8
  br label %42

32:                                               ; preds = %3
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %6, align 8
  %39 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @i40e_aq_set_vsi_bc_promisc_on_vlan(%struct.i40e_hw* %33, i32 %36, i32 %37, i32 %40, i32* null)
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %32, %25
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load i32, i32* @__I40E_VSI_OVERFLOW_PROMISC, align 4
  %47 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @set_bit(i32 %46, i32 %49)
  %51 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %52 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %58 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %59 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i40e_aq_str(%struct.i40e_hw* %57, i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %45, %42
  %66 = load i64, i64* %9, align 8
  ret i64 %66
}

declare dso_local i64 @i40e_aq_set_vsi_broadcast(%struct.i40e_hw*, i32, i32, i32*) #1

declare dso_local i64 @i40e_aq_set_vsi_bc_promisc_on_vlan(%struct.i40e_hw*, i32, i32, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i8*) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
