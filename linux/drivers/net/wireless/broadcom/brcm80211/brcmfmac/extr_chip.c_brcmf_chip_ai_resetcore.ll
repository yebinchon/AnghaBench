; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_ai_resetcore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_ai_resetcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { i64, %struct.brcmf_chip_priv* }
%struct.brcmf_chip_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64)*, i32 (i32, i64, i32)* }

@BCMA_RESET_CTL = common dso_local global i64 0, align 8
@BCMA_RESET_CTL_RESET = common dso_local global i32 0, align 4
@BCMA_IOCTL = common dso_local global i64 0, align 8
@BCMA_IOCTL_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_core_priv*, i32, i32, i32)* @brcmf_chip_ai_resetcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_chip_ai_resetcore(%struct.brcmf_core_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcmf_core_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcmf_chip_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %11, i32 0, i32 1
  %13 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %12, align 8
  store %struct.brcmf_chip_priv* %13, %struct.brcmf_chip_priv** %9, align 8
  %14 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @brcmf_chip_ai_coredisable(%struct.brcmf_core_priv* %14, i32 %15, i32 %16)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %56, %4
  %19 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %20 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i64)*, i32 (i32, i64)** %22, align 8
  %24 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %25 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %28 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BCMA_RESET_CTL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 %23(i32 %26, i64 %31)
  %33 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %18
  %37 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %38 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %40, align 8
  %42 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %43 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %46 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BCMA_RESET_CTL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 %41(i32 %44, i64 %49, i32 0)
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 50
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %58

56:                                               ; preds = %36
  %57 = call i32 @usleep_range(i32 40, i32 60)
  br label %18

58:                                               ; preds = %55, %18
  %59 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %60 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %62, align 8
  %64 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %65 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %68 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @BCMA_IOCTL, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @BCMA_IOCTL_CLK, align 4
  %74 = or i32 %72, %73
  %75 = call i32 %63(i32 %66, i64 %71, i32 %74)
  %76 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %77 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (i32, i64)*, i32 (i32, i64)** %79, align 8
  %81 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %9, align 8
  %82 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %5, align 8
  %85 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @BCMA_IOCTL, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 %80(i32 %83, i64 %88)
  ret void
}

declare dso_local i32 @brcmf_chip_ai_coredisable(%struct.brcmf_core_priv*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
