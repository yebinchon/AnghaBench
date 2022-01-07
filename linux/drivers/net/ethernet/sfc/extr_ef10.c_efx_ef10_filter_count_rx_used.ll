; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_count_rx_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_count_rx_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@HUNT_FILTER_TBL_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.efx_nic*, i32)* @efx_ef10_filter_count_rx_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efx_ef10_filter_count_rx_used(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_ef10_filter_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = call i32 @down_read(i32* %9)
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 1
  %13 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %12, align 8
  store %struct.efx_ef10_filter_table* %13, %struct.efx_ef10_filter_table** %5, align 8
  %14 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %15 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %43, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @HUNT_FILTER_TBL_ROWS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %23 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %21
  %32 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.TYPE_4__* @efx_ef10_filter_entry_spec(%struct.efx_ef10_filter_table* %32, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %39, %31, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %17

46:                                               ; preds = %17
  %47 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %48 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %47, i32 0, i32 0
  %49 = call i32 @up_read(i32* %48)
  %50 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 0
  %52 = call i32 @up_read(i32* %51)
  %53 = load i64, i64* %7, align 8
  ret i64 %53
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @efx_ef10_filter_entry_spec(%struct.efx_ef10_filter_table*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
