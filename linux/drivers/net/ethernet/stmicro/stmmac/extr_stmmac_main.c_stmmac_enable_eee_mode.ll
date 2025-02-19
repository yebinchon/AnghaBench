; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_enable_eee_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_enable_eee_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_2__*, i32, i32, %struct.stmmac_tx_queue* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.stmmac_tx_queue = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_enable_eee_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_enable_eee_mode(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stmmac_tx_queue*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %6 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %7 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 3
  %18 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %18, i64 %19
  store %struct.stmmac_tx_queue* %20, %struct.stmmac_tx_queue** %5, align 8
  %21 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %22 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %25 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %49

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %35 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %41 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @stmmac_set_eee_mode(%struct.stmmac_priv* %39, i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %28, %38, %33
  ret void
}

declare dso_local i32 @stmmac_set_eee_mode(%struct.stmmac_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
