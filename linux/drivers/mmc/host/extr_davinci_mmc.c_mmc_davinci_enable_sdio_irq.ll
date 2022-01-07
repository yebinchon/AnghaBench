; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_davinci_host = type { i32, i64, i32 }

@DAVINCI_SDIOST0 = common dso_local global i64 0, align 8
@SDIOST0_DAT1_HI = common dso_local global i32 0, align 4
@SDIOIST_IOINT = common dso_local global i32 0, align 4
@DAVINCI_SDIOIST = common dso_local global i64 0, align 8
@DAVINCI_SDIOIEN = common dso_local global i64 0, align 8
@SDIOIEN_IOINTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @mmc_davinci_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_davinci_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_davinci_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.mmc_davinci_host* %7, %struct.mmc_davinci_host** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DAVINCI_SDIOST0, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  %17 = load i32, i32* @SDIOST0_DAT1_HI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* @SDIOIST_IOINT, align 4
  %22 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DAVINCI_SDIOIST, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mmc_signal_sdio_irq(i32 %30)
  br label %49

32:                                               ; preds = %10
  %33 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DAVINCI_SDIOIEN, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  %41 = load i32, i32* @SDIOIEN_IOINTEN, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DAVINCI_SDIOIEN, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  br label %49

49:                                               ; preds = %32, %20
  br label %68

50:                                               ; preds = %2
  %51 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DAVINCI_SDIOIEN, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = load i32, i32* @SDIOIEN_IOINTEN, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DAVINCI_SDIOIEN, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  br label %68

68:                                               ; preds = %50, %49
  ret void
}

declare dso_local %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
