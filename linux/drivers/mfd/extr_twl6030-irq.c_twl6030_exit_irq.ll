; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6030-irq.c_twl6030_exit_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6030-irq.c_twl6030_exit_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@twl6030_irq = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl6030_exit_irq() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @twl6030_irq, align 8
  %2 = icmp ne %struct.TYPE_2__* %1, null
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @twl6030_irq, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @twl6030_irq, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @unregister_pm_notifier(i32* %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @twl6030_irq, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @free_irq(i64 %14, i32* null)
  br label %16

16:                                               ; preds = %8, %3, %0
  ret i32 0
}

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @free_irq(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
