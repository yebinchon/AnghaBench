; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_intr_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_intr_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32 }

@SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Entering oob=%d sd=%d\0A\00", align 1
@SDIO_CCCR_BRCM_SEPINT = common dso_local global i32 0, align 4
@SDIO_CCCR_IENx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_sdiod_intr_unregister(%struct.brcmf_sdio_dev* %0) #0 {
  %2 = alloca %struct.brcmf_sdio_dev*, align 8
  %3 = alloca %struct.brcmfmac_sdio_pd*, align 8
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %2, align 8
  %4 = load i32, i32* @SDIO, align 4
  %5 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %9 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @brcmf_dbg(i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %1
  %17 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %18 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %17, i32 0, i32 6
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.brcmfmac_sdio_pd* %21, %struct.brcmfmac_sdio_pd** %3, align 8
  %22 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @sdio_claim_host(%struct.TYPE_8__* %24)
  %26 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %27 = load i32, i32* @SDIO_CCCR_BRCM_SEPINT, align 4
  %28 = call i32 @brcmf_sdiod_func0_wb(%struct.brcmf_sdio_dev* %26, i32 %27, i32 0, i32* null)
  %29 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %30 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %31 = call i32 @brcmf_sdiod_func0_wb(%struct.brcmf_sdio_dev* %29, i32 %30, i32 0, i32* null)
  %32 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %33 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %32, i32 0, i32 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @sdio_release_host(%struct.TYPE_8__* %34)
  %36 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %39 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %16
  %43 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %3, align 8
  %44 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @disable_irq_wake(i32 %45)
  %47 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %48 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %16
  %50 = load %struct.brcmfmac_sdio_pd*, %struct.brcmfmac_sdio_pd** %3, align 8
  %51 = getelementptr inbounds %struct.brcmfmac_sdio_pd, %struct.brcmfmac_sdio_pd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %54 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %53, i32 0, i32 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @free_irq(i32 %52, i32* %56)
  %58 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %59 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %58, i32 0, i32 3
  store i32 0, i32* %59, align 4
  %60 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %61 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %49, %1
  %63 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %64 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %69 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i32 @sdio_claim_host(%struct.TYPE_8__* %70)
  %72 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %73 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %72, i32 0, i32 5
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @sdio_release_irq(%struct.TYPE_8__* %74)
  %76 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %77 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %76, i32 0, i32 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = call i32 @sdio_release_irq(%struct.TYPE_8__* %78)
  %80 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %81 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %80, i32 0, i32 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 @sdio_release_host(%struct.TYPE_8__* %82)
  %84 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %85 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_8__*) #1

declare dso_local i32 @brcmf_sdiod_func0_wb(%struct.brcmf_sdio_dev*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_8__*) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @sdio_release_irq(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
