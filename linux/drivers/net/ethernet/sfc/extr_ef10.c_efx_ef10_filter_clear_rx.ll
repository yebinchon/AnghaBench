; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_clear_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_clear_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { i32 }

@EFX_FILTER_PRI_AUTO = common dso_local global i32 0, align 4
@HUNT_FILTER_TBL_ROWS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32)* @efx_ef10_filter_clear_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_filter_clear_rx(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_ef10_filter_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add i32 %9, 1
  %11 = shl i32 1, %10
  %12 = sub i32 %11, 1
  %13 = load i32, i32* @EFX_FILTER_PRI_AUTO, align 4
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = call i32 @down_read(i32* %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 1
  %22 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %21, align 8
  store %struct.efx_ef10_filter_table* %22, %struct.efx_ef10_filter_table** %5, align 8
  %23 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %24 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %23, i32 0, i32 0
  %25 = call i32 @down_write(i32* %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %44, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @HUNT_FILTER_TBL_ROWS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @efx_ef10_filter_remove_internal(%struct.efx_nic* %31, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37, %30
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %26

47:                                               ; preds = %42, %26
  %48 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %5, align 8
  %49 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %48, i32 0, i32 0
  %50 = call i32 @up_write(i32* %49)
  %51 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 0
  %53 = call i32 @up_read(i32* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @efx_ef10_filter_remove_internal(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
