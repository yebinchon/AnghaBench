; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_alloc_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_alloc_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i64, i64, i64, i64, i64, %struct.net_device*, %struct.xgbe_desc_if }
%struct.net_device = type { i32 }
%struct.xgbe_desc_if = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_alloc_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_alloc_memory(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_desc_if*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 7
  store %struct.xgbe_desc_if* %8, %struct.xgbe_desc_if** %4, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 6
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 4
  store i64 %19, i64* %21, align 8
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %26 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %25, i32 0, i32 5
  store i64 %24, i64* %26, align 8
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %28 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %31 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xgbe_calc_rx_buf_size(%struct.net_device* %43, i32 %46)
  %48 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %49 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %51 = call i32 @xgbe_alloc_channels(%struct.xgbe_prv_data* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %73

56:                                               ; preds = %42
  %57 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %4, align 8
  %58 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %57, i32 0, i32 0
  %59 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %58, align 8
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %61 = bitcast %struct.xgbe_prv_data* %60 to %struct.xgbe_prv_data.0*
  %62 = call i32 %59(%struct.xgbe_prv_data.0* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %69

66:                                               ; preds = %56
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %68 = call i32 @xgbe_init_timers(%struct.xgbe_prv_data* %67)
  store i32 0, i32* %2, align 4
  br label %73

69:                                               ; preds = %65
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %71 = call i32 @xgbe_free_memory(%struct.xgbe_prv_data* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %66, %54
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @xgbe_calc_rx_buf_size(%struct.net_device*, i32) #1

declare dso_local i32 @xgbe_alloc_channels(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_init_timers(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_free_memory(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
