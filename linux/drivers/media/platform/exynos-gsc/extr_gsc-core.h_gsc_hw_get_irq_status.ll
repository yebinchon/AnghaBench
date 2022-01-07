; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.h_gsc_hw_get_irq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.h_gsc_hw_get_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_dev = type { i64 }

@GSC_IRQ = common dso_local global i64 0, align 8
@GSC_IRQ_STATUS_OR_IRQ = common dso_local global i32 0, align 4
@GSC_IRQ_OVERRUN = common dso_local global i32 0, align 4
@GSC_IRQ_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_dev*)* @gsc_hw_get_irq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_hw_get_irq_status(%struct.gsc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gsc_dev* %0, %struct.gsc_dev** %3, align 8
  %5 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GSC_IRQ, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GSC_IRQ_STATUS_OR_IRQ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @GSC_IRQ_OVERRUN, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @GSC_IRQ_DONE, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
