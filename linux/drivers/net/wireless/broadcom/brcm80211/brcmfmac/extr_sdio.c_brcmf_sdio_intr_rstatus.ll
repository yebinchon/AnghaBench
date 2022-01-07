; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_intr_rstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_intr_rstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i64, i32, %struct.TYPE_2__, i32, i32, %struct.brcmf_core* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_core = type { i64 }

@intstatus = common dso_local global i32 0, align 4
@I_HMB_FC_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*)* @brcmf_sdio_intr_rstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_intr_rstatus(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_sdio*, align 8
  %4 = alloca %struct.brcmf_core*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %3, align 8
  %8 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %8, i32 0, i32 5
  %10 = load %struct.brcmf_core*, %struct.brcmf_core** %9, align 8
  store %struct.brcmf_core* %10, %struct.brcmf_core** %4, align 8
  %11 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @intstatus, align 4
  %15 = call i64 @SD_REG(i32 %14)
  %16 = add nsw i64 %13, %15
  store i64 %16, i64* %5, align 8
  %17 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @brcmf_sdiod_readl(i32 %19, i64 %20, i32* %7)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %1
  %32 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %33 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %6, align 8
  %37 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %37, i32 0, i32 4
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @I_HMB_FC_STATE, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @atomic_set(i32* %38, i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %31
  %50 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %51 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @brcmf_sdiod_writel(i32 %52, i64 %53, i64 %54, i32* %7)
  %56 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %57 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %63 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %62, i32 0, i32 1
  %64 = call i32 @atomic_or(i64 %61, i32* %63)
  br label %65

65:                                               ; preds = %49, %31
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %29
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @SD_REG(i32) #1

declare dso_local i64 @brcmf_sdiod_readl(i32, i64, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @brcmf_sdiod_writel(i32, i64, i64, i32*) #1

declare dso_local i32 @atomic_or(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
