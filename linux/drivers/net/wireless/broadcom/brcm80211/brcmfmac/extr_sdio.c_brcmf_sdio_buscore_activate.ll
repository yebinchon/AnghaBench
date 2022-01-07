; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_buscore_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_buscore_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_chip = type { i32 }
%struct.brcmf_sdio_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_core* }
%struct.brcmf_core = type { i64 }

@intstatus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.brcmf_chip*, i64)* @brcmf_sdio_buscore_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_sdio_buscore_activate(i8* %0, %struct.brcmf_chip* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcmf_sdio_dev*, align 8
  %8 = alloca %struct.brcmf_core*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.brcmf_chip* %1, %struct.brcmf_chip** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.brcmf_sdio_dev*
  store %struct.brcmf_sdio_dev* %11, %struct.brcmf_sdio_dev** %7, align 8
  %12 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.brcmf_core*, %struct.brcmf_core** %15, align 8
  store %struct.brcmf_core* %16, %struct.brcmf_core** %8, align 8
  %17 = load %struct.brcmf_core*, %struct.brcmf_core** %8, align 8
  %18 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @intstatus, align 4
  %21 = call i64 @SD_REG(i32 %20)
  %22 = add nsw i64 %19, %21
  store i64 %22, i64* %9, align 8
  %23 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev* %23, i64 %24, i32 -1, i32* null)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %30 = bitcast i64* %6 to i8*
  %31 = call i32 @brcmf_sdiod_ramrw(%struct.brcmf_sdio_dev* %29, i32 1, i32 0, i8* %30, i32 8)
  br label %32

32:                                               ; preds = %28, %3
  ret void
}

declare dso_local i64 @SD_REG(i32) #1

declare dso_local i32 @brcmf_sdiod_writel(%struct.brcmf_sdio_dev*, i64, i32, i32*) #1

declare dso_local i32 @brcmf_sdiod_ramrw(%struct.brcmf_sdio_dev*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
