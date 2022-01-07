; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.omap_hsmmc_host = type { i32, i32, i32, i32 }

@CON = common dso_local global i32 0, align 4
@ISE = common dso_local global i32 0, align 4
@HSMMC_SDIO_IRQ_ENABLED = common dso_local global i32 0, align 4
@CIRQ_EN = common dso_local global i32 0, align 4
@CTPL = common dso_local global i32 0, align 4
@CLKEXTFREE = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @omap_hsmmc_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_hsmmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.omap_hsmmc_host* %10, %struct.omap_hsmmc_host** %5, align 8
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CON, align 4
  %19 = call i32 @OMAP_HSMMC_READ(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %21 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ISE, align 4
  %24 = call i32 @OMAP_HSMMC_READ(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load i32, i32* @HSMMC_SDIO_IRQ_ENABLED, align 4
  %29 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %30 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @CIRQ_EN, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @CTPL, align 4
  %37 = load i32, i32* @CLKEXTFREE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %58

41:                                               ; preds = %2
  %42 = load i32, i32* @HSMMC_SDIO_IRQ_ENABLED, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %45 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @CIRQ_EN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @CTPL, align 4
  %53 = load i32, i32* @CLKEXTFREE, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %41, %27
  %59 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %60 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CON, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @OMAP_HSMMC_WRITE(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %66 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IE, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @OMAP_HSMMC_WRITE(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %72 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75, %58
  %79 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %80 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ISE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @OMAP_HSMMC_WRITE(i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %75
  %86 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %87 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IE, align 4
  %90 = call i32 @OMAP_HSMMC_READ(i32 %88, i32 %89)
  %91 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %5, align 8
  %92 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %91, i32 0, i32 0
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  ret void
}

declare dso_local %struct.omap_hsmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
