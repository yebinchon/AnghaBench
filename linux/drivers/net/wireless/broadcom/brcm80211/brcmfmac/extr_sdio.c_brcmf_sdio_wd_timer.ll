; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_wd_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_wd_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@BRCMF_SDIOD_DATA = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@BRCMF_WD_POLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_sdio_wd_timer(%struct.brcmf_sdio* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_sdio*, align 8
  %4 = alloca i32, align 4
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %13, i32 0, i32 1
  %15 = call i32 @del_timer_sync(%struct.TYPE_6__* %14)
  %16 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %17 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %55

18:                                               ; preds = %7, %2
  %19 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %20 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BRCMF_SDIOD_DATA, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %55

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  %31 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %32 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* @BRCMF_WD_POLL, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %40 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %43 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %42, i32 0, i32 1
  %44 = call i32 @add_timer(%struct.TYPE_6__* %43)
  %45 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %46 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %54

47:                                               ; preds = %30
  %48 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %49 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %48, i32 0, i32 1
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* @BRCMF_WD_POLL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @mod_timer(%struct.TYPE_6__* %49, i64 %52)
  br label %54

54:                                               ; preds = %47, %35
  br label %55

55:                                               ; preds = %12, %26, %54, %27
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
