; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_card_irq_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_irq.c_sdio_card_irq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@MMC_CAP2_SDIO_IRQ_NOTHREAD = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @sdio_card_irq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_card_irq_put(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0
  %7 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  store %struct.mmc_host* %7, %struct.mmc_host** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %1
  %23 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %22
  %29 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MMC_CAP2_SDIO_IRQ_NOTHREAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 5
  %38 = call i32 @atomic_set(i32* %37, i32 1)
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kthread_stop(i32 %41)
  br label %59

43:                                               ; preds = %28
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %54, align 8
  %56 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %57 = call i32 %55(%struct.mmc_host* %56, i32 0)
  br label %58

58:                                               ; preds = %50, %43
  br label %59

59:                                               ; preds = %58, %35
  br label %60

60:                                               ; preds = %59, %22
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kthread_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
