; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_kso_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_kso_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, %struct.brcmf_core* }
%struct.brcmf_core = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@SBSDIO_FUNC1_SLEEPCSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error reading SBSDIO_FUNC1_SLEEPCSR\0A\00", align 1
@SBSDIO_FUNC1_SLEEPCSR_KSO_MASK = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_SLEEPCSR_KSO_EN = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"error writing SBSDIO_FUNC1_SLEEPCSR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio*)* @brcmf_sdio_kso_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_kso_init(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_sdio*, align 8
  %4 = alloca %struct.brcmf_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %3, align 8
  %7 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %8 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %7, i32 0, i32 1
  %9 = load %struct.brcmf_core*, %struct.brcmf_core** %8, align 8
  store %struct.brcmf_core* %9, %struct.brcmf_core** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @TRACE, align 4
  %11 = call i32 @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.brcmf_core*, %struct.brcmf_core** %4, align 8
  %13 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 12
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %19 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR, align 4
  %22 = call i32 @brcmf_sdiod_readb(i32 %20, i32 %21, i32* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = call i32 @brcmf_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %52

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR_KSO_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR_KSO_EN, align 4
  %35 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %40 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @brcmf_sdiod_writeb(i32 %41, i32 %42, i32 %43, i32* %6)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = call i32 @brcmf_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %28
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %47, %25, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_sdiod_readb(i32, i32, i32*) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_sdiod_writeb(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
