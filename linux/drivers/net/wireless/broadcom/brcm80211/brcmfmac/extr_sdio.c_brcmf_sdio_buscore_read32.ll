; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_buscore_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_buscore_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SI_ENUM_BASE = common dso_local global i32 0, align 4
@chipid = common dso_local global i32 0, align 4
@SDIO_DEVICE_ID_BROADCOM_4339 = common dso_local global i64 0, align 8
@SDIO_DEVICE_ID_BROADCOM_4335_4339 = common dso_local global i64 0, align 8
@CID_REV_MASK = common dso_local global i32 0, align 4
@CID_REV_SHIFT = common dso_local global i32 0, align 4
@CID_ID_MASK = common dso_local global i32 0, align 4
@BRCM_CC_4339_CHIP_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @brcmf_sdio_buscore_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_buscore_read32(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_sdio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.brcmf_sdio_dev*
  store %struct.brcmf_sdio_dev* %9, %struct.brcmf_sdio_dev** %5, align 8
  %10 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev* %10, i32 %11, i32* null)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SI_ENUM_BASE, align 4
  %15 = load i32, i32* @chipid, align 4
  %16 = call i32 @CORE_CC_REG(i32 %14, i32 %15)
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %2
  %19 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SDIO_DEVICE_ID_BROADCOM_4339, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %5, align 8
  %28 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SDIO_DEVICE_ID_BROADCOM_4335_4339, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %26, %18
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CID_REV_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CID_REV_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* @CID_ID_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @BRCM_CC_4339_CHIP_ID, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %42, %34
  br label %51

51:                                               ; preds = %50, %26, %2
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @brcmf_sdiod_readl(%struct.brcmf_sdio_dev*, i32, i32*) #1

declare dso_local i32 @CORE_CC_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
