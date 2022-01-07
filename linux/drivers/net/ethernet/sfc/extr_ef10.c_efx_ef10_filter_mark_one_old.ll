; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_mark_one_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_mark_one_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EFX_EF10_FILTER_ID_INVALID = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"marked null spec old %04x:%04x\0A\00", align 1
@EFX_EF10_FILTER_FLAG_AUTO_OLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i64*)* @efx_ef10_filter_mark_one_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_filter_mark_one_old(%struct.efx_nic* %0, i64* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.efx_ef10_filter_table*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %8, align 8
  store %struct.efx_ef10_filter_table* %9, %struct.efx_ef10_filter_table** %5, align 8
  %10 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %11 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %10, i32 0, i32 1
  %12 = call i32 @efx_rwsem_assert_write_locked(i32* %11)
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EFX_EF10_FILTER_ID_INVALID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @efx_ef10_filter_get_unsafe_id(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %22 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %17
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = load i32, i32* @drv, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @netif_dbg(%struct.efx_nic* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %17
  %41 = load i32, i32* @EFX_EF10_FILTER_FLAG_AUTO_OLD, align 4
  %42 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %43 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %41
  store i32 %50, i32* %48, align 4
  %51 = load i64, i64* @EFX_EF10_FILTER_ID_INVALID, align 8
  %52 = load i64*, i64** %4, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @efx_rwsem_assert_write_locked(i32*) #1

declare dso_local i32 @efx_ef10_filter_get_unsafe_id(i64) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
