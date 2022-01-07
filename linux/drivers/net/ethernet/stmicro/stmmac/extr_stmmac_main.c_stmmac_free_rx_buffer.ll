; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_free_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_free_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.stmmac_rx_queue* }
%struct.stmmac_rx_queue = type { i32, %struct.stmmac_rx_buffer* }
%struct.stmmac_rx_buffer = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64, i32)* @stmmac_free_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_free_rx_buffer(%struct.stmmac_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmmac_rx_queue*, align 8
  %8 = alloca %struct.stmmac_rx_buffer*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %10 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %9, i32 0, i32 0
  %11 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %11, i64 %12
  store %struct.stmmac_rx_queue* %13, %struct.stmmac_rx_queue** %7, align 8
  %14 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %7, align 8
  %15 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %14, i32 0, i32 1
  %16 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %16, i64 %18
  store %struct.stmmac_rx_buffer* %19, %struct.stmmac_rx_buffer** %8, align 8
  %20 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %8, align 8
  %21 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %7, align 8
  %26 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %8, align 8
  %29 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @page_pool_put_page(i32 %27, i32* %30, i32 0)
  br label %32

32:                                               ; preds = %24, %3
  %33 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %8, align 8
  %34 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %7, align 8
  %41 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %8, align 8
  %44 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @page_pool_put_page(i32 %42, i32* %45, i32 0)
  br label %47

47:                                               ; preds = %39, %32
  %48 = load %struct.stmmac_rx_buffer*, %struct.stmmac_rx_buffer** %8, align 8
  %49 = getelementptr inbounds %struct.stmmac_rx_buffer, %struct.stmmac_rx_buffer* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  ret void
}

declare dso_local i32 @page_pool_put_page(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
