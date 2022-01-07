; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c___i40e_del_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c___i40e_del_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_mac_filter = type { i64, i32 }

@I40E_FILTER_FAILED = common dso_local global i64 0, align 8
@I40E_FILTER_NEW = common dso_local global i64 0, align 8
@I40E_FILTER_REMOVE = common dso_local global i64 0, align 8
@I40E_VSI_FLAG_FILTER_CHANGED = common dso_local global i32 0, align 4
@__I40E_MACVLAN_SYNC_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__i40e_del_filter(%struct.i40e_vsi* %0, %struct.i40e_mac_filter* %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_mac_filter*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store %struct.i40e_mac_filter* %1, %struct.i40e_mac_filter** %4, align 8
  %5 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %4, align 8
  %6 = icmp ne %struct.i40e_mac_filter* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %43

8:                                                ; preds = %2
  %9 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @I40E_FILTER_FAILED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %4, align 8
  %16 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I40E_FILTER_NEW, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14, %8
  %21 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %4, align 8
  %22 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %21, i32 0, i32 1
  %23 = call i32 @hash_del(i32* %22)
  %24 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %4, align 8
  %25 = call i32 @kfree(%struct.i40e_mac_filter* %24)
  br label %30

26:                                               ; preds = %14
  %27 = load i64, i64* @I40E_FILTER_REMOVE, align 8
  %28 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %4, align 8
  %29 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* @I40E_VSI_FLAG_FILTER_CHANGED, align 4
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @__I40E_MACVLAN_SYNC_PENDING, align 4
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %38 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_bit(i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %30, %7
  ret void
}

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @kfree(%struct.i40e_mac_filter*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
