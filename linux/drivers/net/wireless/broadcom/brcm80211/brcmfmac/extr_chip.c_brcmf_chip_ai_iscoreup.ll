; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_ai_iscoreup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_ai_iscoreup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core_priv = type { i64, %struct.brcmf_chip_priv* }
%struct.brcmf_chip_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64)* }

@BCMA_IOCTL = common dso_local global i64 0, align 8
@BCMA_IOCTL_FGC = common dso_local global i32 0, align 4
@BCMA_IOCTL_CLK = common dso_local global i32 0, align 4
@BCMA_RESET_CTL = common dso_local global i64 0, align 8
@BCMA_RESET_CTL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_core_priv*)* @brcmf_chip_ai_iscoreup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_chip_ai_iscoreup(%struct.brcmf_core_priv* %0) #0 {
  %2 = alloca %struct.brcmf_core_priv*, align 8
  %3 = alloca %struct.brcmf_chip_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcmf_core_priv* %0, %struct.brcmf_core_priv** %2, align 8
  %6 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %6, i32 0, i32 1
  %8 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %7, align 8
  store %struct.brcmf_chip_priv* %8, %struct.brcmf_chip_priv** %3, align 8
  %9 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i64)*, i32 (i32, i64)** %12, align 8
  %14 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %15 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %18 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BCMA_IOCTL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 %13(i32 %16, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BCMA_IOCTL_FGC, align 4
  %25 = load i32, i32* @BCMA_IOCTL_CLK, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @BCMA_IOCTL_CLK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %32 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i64)*, i32 (i32, i64)** %34, align 8
  %36 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %3, align 8
  %37 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %2, align 8
  %40 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BCMA_RESET_CTL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 %35(i32 %38, i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @BCMA_RESET_CTL_RESET, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %47, %1
  %53 = phi i1 [ false, %1 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
