; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring }
%struct.wil_ring = type { i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"rx_init\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Rx ring already allocated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i32)* @wil_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_rx_init(%struct.wil6210_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %9 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %8, i32 0, i32 0
  store %struct.wil_ring* %9, %struct.wil_ring** %6, align 8
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %11 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %13 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %18 = call i32 @wil_err(%struct.wil6210_priv* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %23 = call i32 @wil_rx_buf_len_init(%struct.wil6210_priv* %22)
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %27 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %29 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %31 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %32 = call i32 @wil_vring_alloc(%struct.wil6210_priv* %30, %struct.wil_ring* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %21
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %39 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %40 = call i32 @wmi_rx_chain_add(%struct.wil6210_priv* %38, %struct.wil_ring* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %54

44:                                               ; preds = %37
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %46 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %47 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wil_rx_refill(%struct.wil6210_priv* %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %59

54:                                               ; preds = %52, %43
  %55 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %56 = load %struct.wil_ring*, %struct.wil_ring** %6, align 8
  %57 = call i32 @wil_vring_free(%struct.wil6210_priv* %55, %struct.wil_ring* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %53, %35, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_rx_buf_len_init(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_vring_alloc(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @wmi_rx_chain_add(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @wil_rx_refill(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil_vring_free(%struct.wil6210_priv*, %struct.wil_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
