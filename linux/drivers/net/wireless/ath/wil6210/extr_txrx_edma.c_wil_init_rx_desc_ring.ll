; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_init_rx_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_init_rx_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring }
%struct.wil_ring = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"init RX desc ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i32, i32)* @wil_init_rx_desc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_init_rx_desc_ring(%struct.wil6210_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wil_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %11 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %10, i32 0, i32 0
  store %struct.wil_ring* %11, %struct.wil_ring** %8, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %13 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %16 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %18 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %20 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %21 = call i32 @wil_ring_alloc_desc_ring(%struct.wil6210_priv* %19, %struct.wil_ring* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @wil_wmi_rx_desc_ring_add(%struct.wil6210_priv* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %39

34:                                               ; preds = %32
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %36 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %37 = call i32 @wil_ring_free_edma(%struct.wil6210_priv* %35, %struct.wil_ring* %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %33, %24
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_ring_alloc_desc_ring(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @wil_wmi_rx_desc_ring_add(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil_ring_free_edma(%struct.wil6210_priv*, %struct.wil_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
