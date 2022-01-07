; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"init_irq: %s, n_msi=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1
@wil6210_irq_tx_edma = common dso_local global i32 0, align 4
@wil6210_irq_rx_edma = common dso_local global i32 0, align 4
@wil6210_irq_tx = common dso_local global i32 0, align 4
@wil6210_irq_rx = common dso_local global i32 0, align 4
@wil6210_hardirq = common dso_local global i32 0, align 4
@wil6210_thread_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@WIL_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil6210_init_irq(%struct.wil6210_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %8 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %15)
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @wil6210_irq_tx_edma, align 4
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %24 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @wil6210_irq_rx_edma, align 4
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %28 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @wil6210_irq_tx, align 4
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %33 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @wil6210_irq_rx, align 4
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %37 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %41 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @wil6210_request_3msi(%struct.wil6210_priv* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %64

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @wil6210_hardirq, align 4
  %51 = load i32, i32* @wil6210_thread_irq, align 4
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @IRQF_SHARED, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 0, %56 ], [ %58, %57 ]
  %61 = load i32, i32* @WIL_NAME, align 4
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %63 = call i32 @request_threaded_irq(i32 %49, i32 %50, i32 %51, i32 %60, i32 %61, %struct.wil6210_priv* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %44
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i8*, i32) #1

declare dso_local i32 @wil6210_request_3msi(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
