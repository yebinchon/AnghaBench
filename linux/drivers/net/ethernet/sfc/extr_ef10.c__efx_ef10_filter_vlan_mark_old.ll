; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c__efx_ef10_filter_vlan_mark_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c__efx_ef10_filter_vlan_mark_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { i32, i32 }
%struct.efx_ef10_filter_vlan = type { i32*, i32*, i32* }

@EFX_EF10_NUM_DEFAULT_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_ef10_filter_vlan*)* @_efx_ef10_filter_vlan_mark_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_efx_ef10_filter_vlan_mark_old(%struct.efx_nic* %0, %struct.efx_ef10_filter_vlan* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_filter_vlan*, align 8
  %5 = alloca %struct.efx_ef10_filter_table*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_ef10_filter_vlan* %1, %struct.efx_ef10_filter_vlan** %4, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %8, align 8
  store %struct.efx_ef10_filter_table* %9, %struct.efx_ef10_filter_table** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %13 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %19 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @efx_ef10_filter_mark_one_old(%struct.efx_nic* %17, i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %32 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %37 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %38 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @efx_ef10_filter_mark_one_old(%struct.efx_nic* %36, i32* %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %29

47:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EFX_EF10_NUM_DEFAULT_FILTERS, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %54 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %4, align 8
  %55 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @efx_ef10_filter_mark_one_old(%struct.efx_nic* %53, i32* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %48

64:                                               ; preds = %48
  ret void
}

declare dso_local i32 @efx_ef10_filter_mark_one_old(%struct.efx_nic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
