; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32 }

@HSMMC_SDIO_IRQ_ENABLED = common dso_local global i32 0, align 4
@CIRQ_EN = common dso_local global i32 0, align 4
@ISE = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@STAT = common dso_local global i32 0, align 4
@STAT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*)* @omap_hsmmc_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_disable_irq(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca %struct.omap_hsmmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HSMMC_SDIO_IRQ_ENABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @CIRQ_EN, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ISE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @OMAP_HSMMC_WRITE(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @OMAP_HSMMC_WRITE(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %33 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @STAT, align 4
  %36 = load i32, i32* @STAT_CLEAR, align 4
  %37 = call i32 @OMAP_HSMMC_WRITE(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %39 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
