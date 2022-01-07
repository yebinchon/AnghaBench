; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_watchdog_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_watchdog_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @brcmf_sdio_watchdog_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_watchdog_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.brcmf_sdio*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.brcmf_sdio*
  store %struct.brcmf_sdio* %6, %struct.brcmf_sdio** %3, align 8
  %7 = load i32, i32* @SIGTERM, align 4
  %8 = call i32 @allow_signal(i32 %7)
  %9 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @brcmf_sdiod_freezer_count(i32 %11)
  br label %13

13:                                               ; preds = %1, %47
  %14 = call i64 (...) @kthread_should_stop()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %48

17:                                               ; preds = %13
  %18 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %19 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @brcmf_sdiod_freezer_uncount(i32 %20)
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %22, i32 0, i32 0
  %24 = call i32 @wait_for_completion_interruptible(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %26 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @brcmf_sdiod_freezer_count(i32 %27)
  %29 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %30 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @brcmf_sdiod_try_freeze(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %17
  %36 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %37 = call i32 @brcmf_sdio_bus_watchdog(%struct.brcmf_sdio* %36)
  %38 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %39 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %3, align 8
  %44 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %43, i32 0, i32 0
  %45 = call i32 @reinit_completion(i32* %44)
  br label %47

46:                                               ; preds = %17
  br label %48

47:                                               ; preds = %35
  br label %13

48:                                               ; preds = %46, %16
  ret i32 0
}

declare dso_local i32 @allow_signal(i32) #1

declare dso_local i32 @brcmf_sdiod_freezer_count(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @brcmf_sdiod_freezer_uncount(i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @brcmf_sdiod_try_freeze(i32) #1

declare dso_local i32 @brcmf_sdio_bus_watchdog(%struct.brcmf_sdio*) #1

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
