; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_del_vlan_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_del_vlan_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_ef10_filter_vlan = type { i64*, i64*, i64*, i32 }

@EFX_FILTER_PRI_AUTO = common dso_local global i32 0, align 4
@EFX_EF10_NUM_DEFAULT_FILTERS = common dso_local global i32 0, align 4
@EFX_EF10_FILTER_ID_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_ef10_filter_vlan*)* @efx_ef10_filter_del_vlan_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_filter_del_vlan_internal(%struct.efx_nic* %0, %struct.efx_ef10_filter_vlan* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_filter_vlan*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_ef10_filter_vlan* %1, %struct.efx_ef10_filter_vlan** %4, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = call i32 @efx_rwsem_assert_write_locked(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %91

11:                                               ; preds = %2
  %12 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %13 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %12, i32 0, i32 3
  %14 = call i32 @list_del(i32* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %11
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %18 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i64* %19)
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %25 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %26 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic* %23, i32 %24, i64 %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %15

36:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %40 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = call i32 @ARRAY_SIZE(i64* %41)
  %43 = icmp ult i32 %38, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %46 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %47 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %48 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic* %45, i32 %46, i64 %53)
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %37

58:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %85, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @EFX_EF10_NUM_DEFAULT_FILTERS, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %65 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EFX_EF10_FILTER_ID_INVALID, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %63
  %74 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %75 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %76 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %77 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic* %74, i32 %75, i64 %82)
  br label %84

84:                                               ; preds = %73, %63
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %59

88:                                               ; preds = %59
  %89 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %90 = call i32 @kfree(%struct.efx_ef10_filter_vlan* %89)
  br label %91

91:                                               ; preds = %88, %10
  ret void
}

declare dso_local i32 @efx_rwsem_assert_write_locked(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @efx_ef10_filter_remove_unsafe(%struct.efx_nic*, i32, i64) #1

declare dso_local i32 @kfree(%struct.efx_ef10_filter_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
