; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_init_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_init_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, %struct.wil_status_ring* }
%struct.wil_status_ring = type { i32, i32, i32, i32 }

@WIL_SRING_SIZE_ORDER_MIN = common dso_local global i32 0, align 4
@WIL_SRING_SIZE_ORDER_MAX = common dso_local global i32 0, align 4
@WIL_TX_SRING_SIZE_ORDER_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"init TX sring: size=%u, ring_id=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*)* @wil_tx_init_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_tx_init_edma(%struct.wil6210_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil_status_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %9 = call i32 @wil_find_free_sring(%struct.wil6210_priv* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @WIL_SRING_SIZE_ORDER_MIN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WIL_SRING_SIZE_ORDER_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @WIL_TX_SRING_SIZE_ORDER_DEFAULT, align 4
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %24 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %27 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %77

38:                                               ; preds = %25
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %40 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %39, i32 0, i32 2
  %41 = load %struct.wil_status_ring*, %struct.wil_status_ring** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %41, i64 %43
  store %struct.wil_status_ring* %44, %struct.wil_status_ring** %5, align 8
  %45 = load %struct.wil_status_ring*, %struct.wil_status_ring** %5, align 8
  %46 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.wil_status_ring*, %struct.wil_status_ring** %5, align 8
  %49 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wil_status_ring*, %struct.wil_status_ring** %5, align 8
  %51 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %50, i32 0, i32 2
  store i32 4, i32* %51, align 4
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %53 = load %struct.wil_status_ring*, %struct.wil_status_ring** %5, align 8
  %54 = call i32 @wil_sring_alloc(%struct.wil6210_priv* %52, %struct.wil_status_ring* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %38
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @wil_wmi_tx_sring_cfg(%struct.wil6210_priv* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %72

66:                                               ; preds = %59
  %67 = load %struct.wil_status_ring*, %struct.wil_status_ring** %5, align 8
  %68 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %71 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %2, align 4
  br label %77

72:                                               ; preds = %65
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %74 = load %struct.wil_status_ring*, %struct.wil_status_ring** %5, align 8
  %75 = call i32 @wil_sring_free(%struct.wil6210_priv* %73, %struct.wil_status_ring* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %66, %57, %36
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @wil_find_free_sring(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @wil_sring_alloc(%struct.wil6210_priv*, %struct.wil_status_ring*) #1

declare dso_local i32 @wil_wmi_tx_sring_cfg(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil_sring_free(%struct.wil6210_priv*, %struct.wil_status_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
