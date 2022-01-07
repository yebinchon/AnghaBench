; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_remove_unsafe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_remove_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { i32 }

@EFX_EF10_FILTER_ID_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32, i64)* @efx_ef10_filter_remove_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_filter_remove_unsafe(%struct.efx_nic* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.efx_ef10_filter_table*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %9, align 8
  store %struct.efx_ef10_filter_table* %10, %struct.efx_ef10_filter_table** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @EFX_EF10_FILTER_ID_INVALID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %27

15:                                               ; preds = %3
  %16 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %7, align 8
  %17 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %16, i32 0, i32 0
  %18 = call i32 @down_write(i32* %17)
  %19 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 1, %20
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @efx_ef10_filter_remove_internal(%struct.efx_nic* %19, i32 %21, i64 %22, i32 1)
  %24 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %7, align 8
  %25 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %24, i32 0, i32 0
  %26 = call i32 @up_write(i32* %25)
  br label %27

27:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @efx_ef10_filter_remove_internal(%struct.efx_nic*, i32, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
