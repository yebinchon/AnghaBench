; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_napi_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_napi_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_2__*, i32, %struct.stmmac_channel*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.stmmac_channel = type { i32, i32 }

@handle_rx = common dso_local global i32 0, align 4
@handle_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, i64)* @stmmac_napi_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_napi_check(%struct.stmmac_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmmac_channel*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %8 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %9 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 3
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @stmmac_dma_interrupt_status(%struct.stmmac_priv* %7, i32 %10, i32* %12, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %16 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %15, i32 0, i32 2
  %17 = load %struct.stmmac_channel*, %struct.stmmac_channel** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.stmmac_channel, %struct.stmmac_channel* %17, i64 %18
  store %struct.stmmac_channel* %19, %struct.stmmac_channel** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @handle_rx, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load %struct.stmmac_channel*, %struct.stmmac_channel** %6, align 8
  %34 = getelementptr inbounds %struct.stmmac_channel, %struct.stmmac_channel* %33, i32 0, i32 1
  %35 = call i64 @napi_schedule_prep(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @stmmac_disable_dma_irq(%struct.stmmac_priv* %38, i32 %41, i64 %42)
  %44 = load %struct.stmmac_channel*, %struct.stmmac_channel** %6, align 8
  %45 = getelementptr inbounds %struct.stmmac_channel, %struct.stmmac_channel* %44, i32 0, i32 1
  %46 = call i32 @__napi_schedule_irqoff(i32* %45)
  %47 = load i32, i32* @handle_tx, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %37, %32
  br label %51

51:                                               ; preds = %50, %24, %2
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @handle_tx, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %59 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.stmmac_channel*, %struct.stmmac_channel** %6, align 8
  %66 = getelementptr inbounds %struct.stmmac_channel, %struct.stmmac_channel* %65, i32 0, i32 0
  %67 = call i32 @napi_schedule_irqoff(i32* %66)
  br label %68

68:                                               ; preds = %64, %56, %51
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @stmmac_dma_interrupt_status(%struct.stmmac_priv*, i32, i32*, i64) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @stmmac_disable_dma_irq(%struct.stmmac_priv*, i32, i64) #1

declare dso_local i32 @__napi_schedule_irqoff(i32*) #1

declare dso_local i32 @napi_schedule_irqoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
