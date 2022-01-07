; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_txfail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_txfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { %struct.TYPE_2__, %struct.brcmf_sdio_dev* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.brcmf_sdio_dev = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"sdio error, abort command and terminate frame\0A\00", align 1
@SBSDIO_FUNC1_FRAMECTRL = common dso_local global i32 0, align 4
@SFC_WF_TERM = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_WFRAMEBCHI = common dso_local global i32 0, align 4
@SBSDIO_FUNC1_WFRAMEBCLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_sdio*)* @brcmf_sdio_txfail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_txfail(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  %3 = alloca %struct.brcmf_sdio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %2, align 8
  %7 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %8 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %7, i32 0, i32 1
  %9 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %8, align 8
  store %struct.brcmf_sdio_dev* %9, %struct.brcmf_sdio_dev** %3, align 8
  %10 = call i32 @brcmf_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %12 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %17 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @brcmf_sdiod_abort(%struct.brcmf_sdio_dev* %16, i32 %19)
  %21 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %22 = load i32, i32* @SBSDIO_FUNC1_FRAMECTRL, align 4
  %23 = load i32, i32* @SFC_WF_TERM, align 4
  %24 = call i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev* %21, i32 %22, i32 %23, i32* null)
  %25 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %26 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %52, %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %35 = load i32, i32* @SBSDIO_FUNC1_WFRAMEBCHI, align 4
  %36 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %34, i32 %35, i32* null)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %38 = load i32, i32* @SBSDIO_FUNC1_WFRAMEBCLO, align 4
  %39 = call i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev* %37, i32 %38, i32* null)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %41 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 2
  store i64 %44, i64* %42, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47, %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %30

55:                                               ; preds = %50, %30
  ret void
}

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_sdiod_abort(%struct.brcmf_sdio_dev*, i32) #1

declare dso_local i32 @brcmf_sdiod_writeb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_readb(%struct.brcmf_sdio_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
