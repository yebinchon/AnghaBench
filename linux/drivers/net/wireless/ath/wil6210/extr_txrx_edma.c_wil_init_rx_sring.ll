; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_init_rx_sring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_init_rx_sring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_status_ring* }
%struct.wil_status_ring = type { i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"init RX sring: size=%u, ring_id=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i64, i64, i64)* @wil_init_rx_sring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_init_rx_sring(%struct.wil6210_priv* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wil_status_ring*, align 8
  %11 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %13 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %12, i32 0, i32 0
  %14 = load %struct.wil_status_ring*, %struct.wil_status_ring** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %14, i64 %15
  store %struct.wil_status_ring* %16, %struct.wil_status_ring** %10, align 8
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19)
  %21 = load %struct.wil_status_ring*, %struct.wil_status_ring** %10, align 8
  %22 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %21, i32 0, i32 4
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  %24 = load %struct.wil_status_ring*, %struct.wil_status_ring** %10, align 8
  %25 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.wil_status_ring*, %struct.wil_status_ring** %10, align 8
  %28 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.wil_status_ring*, %struct.wil_status_ring** %10, align 8
  %31 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %33 = load %struct.wil_status_ring*, %struct.wil_status_ring** %10, align 8
  %34 = call i32 @wil_sring_alloc(%struct.wil6210_priv* %32, %struct.wil_status_ring* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %54

39:                                               ; preds = %4
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @wil_wmi_rx_sring_add(%struct.wil6210_priv* %40, i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.wil_status_ring*, %struct.wil_status_ring** %10, align 8
  %48 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %47, i32 0, i32 3
  store i32 1, i32* %48, align 8
  store i32 0, i32* %5, align 4
  br label %54

49:                                               ; preds = %45
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %51 = load %struct.wil_status_ring*, %struct.wil_status_ring** %10, align 8
  %52 = call i32 @wil_sring_free(%struct.wil6210_priv* %50, %struct.wil_status_ring* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %46, %37
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wil_sring_alloc(%struct.wil6210_priv*, %struct.wil_status_ring*) #1

declare dso_local i32 @wil_wmi_rx_sring_add(%struct.wil6210_priv*, i64) #1

declare dso_local i32 @wil_sring_free(%struct.wil6210_priv*, %struct.wil_status_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
