; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { %struct.TYPE_8__*, i64, i32, %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@BRCMF_SDIOD_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio_dev*)* @brcmf_sdiod_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdiod_remove(%struct.brcmf_sdio_dev* %0) #0 {
  %2 = alloca %struct.brcmf_sdio_dev*, align 8
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %2, align 8
  %3 = load i32, i32* @BRCMF_SDIOD_DOWN, align 4
  %4 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %4, i32 0, i32 5
  store i32 %3, i32* %5, align 8
  %6 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %7 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %12 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @brcmf_sdio_remove(i32* %13)
  %15 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %16 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %15, i32 0, i32 4
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %19 = call i32 @brcmf_sdiod_freezer_detach(%struct.brcmf_sdio_dev* %18)
  %20 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %21 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %20, i32 0, i32 3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = call i32 @sdio_claim_host(%struct.TYPE_8__* %22)
  %24 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %25 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @sdio_disable_func(%struct.TYPE_8__* %26)
  %28 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %29 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %28, i32 0, i32 3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @sdio_release_host(%struct.TYPE_8__* %30)
  %32 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %33 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @sdio_claim_host(%struct.TYPE_8__* %34)
  %36 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = call i32 @sdio_disable_func(%struct.TYPE_8__* %38)
  %40 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %41 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i32 @sdio_release_host(%struct.TYPE_8__* %42)
  %44 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %45 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %44, i32 0, i32 2
  %46 = call i32 @sg_free_table(i32* %45)
  %47 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %48 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %2, align 8
  %50 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_allow(i32 %57)
  ret i32 0
}

declare dso_local i32 @brcmf_sdio_remove(i32*) #1

declare dso_local i32 @brcmf_sdiod_freezer_detach(%struct.brcmf_sdio_dev*) #1

declare dso_local i32 @sdio_claim_host(%struct.TYPE_8__*) #1

declare dso_local i32 @sdio_disable_func(%struct.TYPE_8__*) #1

declare dso_local i32 @sdio_release_host(%struct.TYPE_8__*) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
