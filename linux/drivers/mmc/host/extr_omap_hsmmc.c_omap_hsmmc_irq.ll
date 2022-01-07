; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i64 }

@STAT = common dso_local global i32 0, align 4
@INT_EN_MASK = common dso_local global i32 0, align 4
@CIRQ_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_hsmmc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_hsmmc_host*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.omap_hsmmc_host*
  store %struct.omap_hsmmc_host* %8, %struct.omap_hsmmc_host** %5, align 8
  %9 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @STAT, align 4
  %13 = call i32 @OMAP_HSMMC_READ(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @INT_EN_MASK, align 4
  %17 = load i32, i32* @CIRQ_EN, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %14
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @omap_hsmmc_do_irq(%struct.omap_hsmmc_host* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CIRQ_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %37 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mmc_signal_sdio_irq(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %42 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @STAT, align 4
  %45 = call i32 @OMAP_HSMMC_READ(i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %14

46:                                               ; preds = %14
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @omap_hsmmc_do_irq(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
