; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_change_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { i32, i32 }

@BRCMF_SDIOD_NOMEDIUM = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d -> %d\0A\00", align 1
@BRCMF_BUS_DOWN = common dso_local global i32 0, align 4
@BRCMF_BUS_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_sdio_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %6 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BRCMF_SDIOD_NOMEDIUM, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %13 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %2
  br label %48

17:                                               ; preds = %10
  %18 = load i32, i32* @TRACE, align 4
  %19 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %20 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @brcmf_dbg(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %25 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %43 [
    i32 129, label %27
    i32 128, label %33
  ]

27:                                               ; preds = %17
  %28 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %29 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BRCMF_BUS_DOWN, align 4
  %32 = call i32 @brcmf_bus_change_state(i32 %30, i32 %31)
  br label %44

33:                                               ; preds = %17
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 129
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %38 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BRCMF_BUS_UP, align 4
  %41 = call i32 @brcmf_bus_change_state(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  br label %44

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %42, %27
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %3, align 8
  %47 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %16
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @brcmf_bus_change_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
