; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sunxi_mmc_host = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@REG_IMASK = common dso_local global i32 0, align 4
@SDXC_SDIO_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @sunxi_mmc_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_mmc_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sunxi_mmc_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.sunxi_mmc_host* %9, %struct.sunxi_mmc_host** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %14 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pm_runtime_get_noresume(i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %19 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %23 = load i32, i32* @REG_IMASK, align 4
  %24 = call i64 @mmc_readl(%struct.sunxi_mmc_host* %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load i64, i64* @SDXC_SDIO_INTERRUPT, align 8
  %29 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %30 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* @SDXC_SDIO_INTERRUPT, align 8
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %7, align 8
  br label %41

34:                                               ; preds = %17
  %35 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %36 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* @SDXC_SDIO_INTERRUPT, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %43 = load i32, i32* @REG_IMASK, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %42, i32 %43, i64 %44)
  %46 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %47 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %46, i32 0, i32 1
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %41
  %53 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %54 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_put_noidle(i32 %57)
  br label %59

59:                                               ; preds = %52, %41
  ret void
}

declare dso_local %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
