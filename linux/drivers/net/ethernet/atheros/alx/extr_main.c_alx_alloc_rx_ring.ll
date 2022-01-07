; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_alloc_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_alloc_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.alx_rx_queue = type { i32, i64, i64, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*, %struct.alx_rx_queue*, i32)* @alx_alloc_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_alloc_rx_ring(%struct.alx_priv* %0, %struct.alx_rx_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.alx_priv*, align 8
  %6 = alloca %struct.alx_rx_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %5, align 8
  store %struct.alx_rx_queue* %1, %struct.alx_rx_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %9 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @kcalloc(i32 %10, i32 4, i32 %11)
  %13 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %14 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %16 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %24 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %31 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %33 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %40 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %42 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %51 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %58 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.alx_priv*, %struct.alx_priv** %5, align 8
  %60 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %67 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.alx_rx_queue*, %struct.alx_rx_queue** %6, align 8
  %69 = getelementptr inbounds %struct.alx_rx_queue, %struct.alx_rx_queue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %22, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
