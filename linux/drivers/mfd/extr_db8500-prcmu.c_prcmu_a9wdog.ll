; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_a9wdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_a9wdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@mb4_transfer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_A9WDOG_0 = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_A9WDOG_1 = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_A9WDOG_2 = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_A9WDOG_3 = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB4 = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @prcmu_a9wdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prcmu_a9wdog(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  br label %12

12:                                               ; preds = %18, %5
  %13 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %14 = call i32 @readl(i32 %13)
  %15 = call i32 @MBOX_BIT(i32 4)
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @cpu_relax()
  br label %12

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = load i64, i64* @tcdm_base, align 8
  %23 = load i64, i64* @PRCM_REQ_MB4_A9WDOG_0, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeb(i32 %21, i64 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* @tcdm_base, align 8
  %28 = load i64, i64* @PRCM_REQ_MB4_A9WDOG_1, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb(i32 %26, i64 %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* @tcdm_base, align 8
  %33 = load i64, i64* @PRCM_REQ_MB4_A9WDOG_2, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writeb(i32 %31, i64 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* @tcdm_base, align 8
  %38 = load i64, i64* @PRCM_REQ_MB4_A9WDOG_3, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 %36, i64 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* @tcdm_base, align 8
  %43 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB4, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writeb(i32 %41, i64 %44)
  %46 = call i32 @MBOX_BIT(i32 4)
  %47 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %48 = call i32 @writel(i32 %46, i32 %47)
  %49 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 1))
  %50 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
