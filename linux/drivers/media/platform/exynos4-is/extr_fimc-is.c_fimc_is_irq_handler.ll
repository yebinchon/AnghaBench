; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32 }

@MCUCTL_REG_INTSR1 = common dso_local global i32 0, align 4
@FIMC_IS_INT_GENERAL = common dso_local global i64 0, align 8
@FIMC_IS_INT_FRAME_DONE_ISP = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fimc_is_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fimc_is*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.fimc_is*
  store %struct.fimc_is* %9, %struct.fimc_is** %5, align 8
  %10 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %11 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %15 = load i32, i32* @MCUCTL_REG_INTSR1, align 4
  %16 = call i64 @mcuctl_read(%struct.fimc_is* %14, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @FIMC_IS_INT_GENERAL, align 8
  %19 = shl i64 1, %18
  %20 = and i64 %17, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %24 = call i32 @fimc_is_general_irq_handler(%struct.fimc_is* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @FIMC_IS_INT_FRAME_DONE_ISP, align 8
  %28 = shl i64 1, %27
  %29 = and i64 %26, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %33 = call i32 @fimc_isp_irq_handler(%struct.fimc_is* %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.fimc_is*, %struct.fimc_is** %5, align 8
  %36 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mcuctl_read(%struct.fimc_is*, i32) #1

declare dso_local i32 @fimc_is_general_irq_handler(%struct.fimc_is*) #1

declare dso_local i32 @fimc_isp_irq_handler(%struct.fimc_is*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
