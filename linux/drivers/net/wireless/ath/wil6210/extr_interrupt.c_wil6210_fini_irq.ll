; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_fini_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_fini_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"fini_irq:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil6210_fini_irq(%struct.wil6210_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %6 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %8 = call i32 @wil_mask_irq(%struct.wil6210_priv* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.wil6210_priv* %10)
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %13 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.wil6210_priv* %19)
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 2
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.wil6210_priv* %23)
  br label %25

25:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_mask_irq(%struct.wil6210_priv*) #1

declare dso_local i32 @free_irq(i32, %struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
