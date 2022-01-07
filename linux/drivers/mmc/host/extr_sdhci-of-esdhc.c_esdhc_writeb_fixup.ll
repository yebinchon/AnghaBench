; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_writeb_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_writeb_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_BROKEN_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CTRL_DMA_MASK = common dso_local global i32 0, align 4
@ESDHC_HOST_CONTROL_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32, i32, i32)* @esdhc_writeb_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_writeb_fixup(%struct.sdhci_host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 3
  %16 = mul nsw i32 %15, 8
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %5, align 4
  br label %75

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SDHCI_QUIRK2_BROKEN_HOST_CONTROL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %5, align 4
  br label %75

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SDHCI_CTRL_DMA_MASK, align 4
  %38 = and i32 %36, %37
  %39 = shl i32 %38, 5
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @SDHCI_CTRL_DMA_MASK, align 4
  %42 = shl i32 %41, 5
  %43 = xor i32 %42, -1
  %44 = and i32 %40, %43
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SDHCI_CTRL_DMA_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @SDHCI_CTRL_DMA_MASK, align 4
  %53 = and i32 %51, %52
  %54 = or i32 %50, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, -256
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @ESDHC_HOST_CONTROL_RES, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %75

64:                                               ; preds = %22
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = shl i32 255, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %65, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %13, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %64, %35, %33, %20
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
