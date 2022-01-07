; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_sring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_sring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil_status_ring = type { i64, i64, i32*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"status_ring_free, size(bytes)=%zu, 0x%p:%pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.wil_status_ring*)* @wil_sring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_sring_free(%struct.wil6210_priv* %0, %struct.wil_status_ring* %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.wil_status_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store %struct.wil_status_ring* %1, %struct.wil_status_ring** %4, align 8
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %8 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %7)
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %10 = icmp ne %struct.wil_status_ring* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %13 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  br label %47

17:                                               ; preds = %11
  %18 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %19 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %22 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = mul i64 %20, %23
  store i64 %24, i64* %6, align 8
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %28 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %31 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %30, i32 0, i32 3
  %32 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %26, i32* %29, i32* %31)
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %36 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %40 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dma_free_coherent(%struct.device* %33, i64 %34, i8* %38, i32 %41)
  %43 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %44 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %43, i32 0, i32 3
  store i32 0, i32* %44, align 8
  %45 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %46 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
