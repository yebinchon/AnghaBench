; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_display_rx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_display_rx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i64, %struct.stmmac_rx_queue*, %struct.TYPE_2__* }
%struct.stmmac_rx_queue = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"\09RX Queue %u rings\0A\00", align 1
@DMA_RX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_display_rx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_display_rx_rings(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stmmac_rx_queue*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %43, %1
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 1
  %19 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %19, i64 %20
  store %struct.stmmac_rx_queue* %21, %struct.stmmac_rx_queue** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %6, align 8
  %30 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %4, align 8
  br label %38

33:                                               ; preds = %16
  %34 = load %struct.stmmac_rx_queue*, %struct.stmmac_rx_queue** %6, align 8
  %35 = getelementptr inbounds %struct.stmmac_rx_queue, %struct.stmmac_rx_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @DMA_RX_SIZE, align 4
  %42 = call i32 @stmmac_display_ring(%struct.stmmac_priv* %39, i8* %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %12

46:                                               ; preds = %12
  ret void
}

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @stmmac_display_ring(%struct.stmmac_priv*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
