; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_add_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_mac_filter = type { i64, i32, i64, i32 }
%struct.i40e_vsi = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@I40E_FILTER_NEW = common dso_local global i64 0, align 8
@I40E_VSI_FLAG_FILTER_CHANGED = common dso_local global i32 0, align 4
@__I40E_MACVLAN_SYNC_PENDING = common dso_local global i32 0, align 4
@I40E_FILTER_REMOVE = common dso_local global i64 0, align 8
@I40E_FILTER_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i40e_mac_filter* @i40e_add_filter(%struct.i40e_vsi* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.i40e_mac_filter*, align 8
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40e_mac_filter*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %11 = icmp ne %struct.i40e_vsi* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  store %struct.i40e_mac_filter* null, %struct.i40e_mac_filter** %4, align 8
  br label %83

16:                                               ; preds = %12
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call %struct.i40e_mac_filter* @i40e_find_filter(%struct.i40e_vsi* %17, i32* %18, i64 %19)
  store %struct.i40e_mac_filter* %20, %struct.i40e_mac_filter** %8, align 8
  %21 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %22 = icmp ne %struct.i40e_mac_filter* %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.i40e_mac_filter* @kzalloc(i32 32, i32 %24)
  store %struct.i40e_mac_filter* %25, %struct.i40e_mac_filter** %8, align 8
  %26 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %27 = icmp ne %struct.i40e_mac_filter* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store %struct.i40e_mac_filter* null, %struct.i40e_mac_filter** %4, align 8
  br label %83

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %37 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ether_addr_copy(i32 %38, i32* %39)
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %43 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* @I40E_FILTER_NEW, align 8
  %45 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %46 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %48 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %47, i32 0, i32 1
  %49 = call i32 @INIT_HLIST_NODE(i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @i40e_addr_to_hkey(i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %53 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %56 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %55, i32 0, i32 1
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @hash_add(i32 %54, i32* %56, i32 %57)
  %59 = load i32, i32* @I40E_VSI_FLAG_FILTER_CHANGED, align 4
  %60 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %61 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @__I40E_MACVLAN_SYNC_PENDING, align 4
  %65 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %66 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @set_bit(i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %35, %16
  %72 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %73 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @I40E_FILTER_REMOVE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* @I40E_FILTER_ACTIVE, align 8
  %79 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  %80 = getelementptr inbounds %struct.i40e_mac_filter, %struct.i40e_mac_filter* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %8, align 8
  store %struct.i40e_mac_filter* %82, %struct.i40e_mac_filter** %4, align 8
  br label %83

83:                                               ; preds = %81, %28, %15
  %84 = load %struct.i40e_mac_filter*, %struct.i40e_mac_filter** %4, align 8
  ret %struct.i40e_mac_filter* %84
}

declare dso_local %struct.i40e_mac_filter* @i40e_find_filter(%struct.i40e_vsi*, i32*, i64) #1

declare dso_local %struct.i40e_mac_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @i40e_addr_to_hkey(i32*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
