; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_hardirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_hardirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, i8*)*, i64 (i32, i8*)* }

@IRQ_HANDLED = common dso_local global i64 0, align 8
@RGF_DMA_PSEUDO_CAUSE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Pseudo IRQ 0x%08x\0A\00", align 1
@BIT_DMA_PSEUDO_CAUSE_RX = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i64 0, align 8
@BIT_DMA_PSEUDO_CAUSE_TX = common dso_local global i32 0, align 4
@BIT_DMA_PSEUDO_CAUSE_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @wil6210_hardirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wil6210_hardirq(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.wil6210_priv*
  store %struct.wil6210_priv* %11, %struct.wil6210_priv** %7, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %13 = load i32, i32* @RGF_DMA_PSEUDO_CAUSE, align 4
  %14 = call i32 @wil_r(%struct.wil6210_priv* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 255
  %20 = icmp eq i32 %19, 255
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ true, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @IRQ_NONE, align 8
  store i64 %27, i64* %3, align 8
  br label %99

28:                                               ; preds = %21
  %29 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @wil6210_debug_irq_mask(%struct.wil6210_priv* %29, i32 %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @IRQ_NONE, align 8
  store i64 %35, i64* %3, align 8
  br label %99

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @trace_wil6210_irq_pseudo(i32 %37)
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @wil_dbg_irq(%struct.wil6210_priv* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %43 = call i32 @wil6210_mask_irq_pseudo(%struct.wil6210_priv* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @BIT_DMA_PSEUDO_CAUSE_RX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %36
  %49 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %50 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64 (i32, i8*)*, i64 (i32, i8*)** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 %52(i32 %53, i8* %54)
  %56 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %58, %48, %36
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BIT_DMA_PSEUDO_CAUSE_TX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %67 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64 (i32, i8*)*, i64 (i32, i8*)** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 %69(i32 %70, i8* %71)
  %73 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %75, %65, %60
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @BIT_DMA_PSEUDO_CAUSE_MISC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = call i64 @wil6210_irq_misc(i32 %83, i8* %84)
  %86 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %88, %82, %77
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %96 = call i32 @wil6210_unmask_irq_pseudo(%struct.wil6210_priv* %95)
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i64, i64* %6, align 8
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %97, %34, %26
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i32 @wil_r(%struct.wil6210_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil6210_debug_irq_mask(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @trace_wil6210_irq_pseudo(i32) #1

declare dso_local i32 @wil_dbg_irq(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil6210_mask_irq_pseudo(%struct.wil6210_priv*) #1

declare dso_local i64 @wil6210_irq_misc(i32, i8*) #1

declare dso_local i32 @wil6210_unmask_irq_pseudo(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
