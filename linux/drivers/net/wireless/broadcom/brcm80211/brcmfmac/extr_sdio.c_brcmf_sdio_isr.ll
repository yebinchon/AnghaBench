; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bus is null pointer, exiting\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed backplane access\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"isr w/o interrupt configured!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_sdio_isr(%struct.brcmf_sdio* %0) #0 {
  %2 = alloca %struct.brcmf_sdio*, align 8
  store %struct.brcmf_sdio* %0, %struct.brcmf_sdio** %2, align 8
  %3 = load i32, i32* @TRACE, align 4
  %4 = call i32 @brcmf_dbg(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %6 = icmp ne %struct.brcmf_sdio* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @brcmf_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %11 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = call i64 (...) @in_interrupt()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %19 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %18, i32 0, i32 4
  %20 = call i32 @atomic_set(i32* %19, i32 1)
  br label %28

21:                                               ; preds = %9
  %22 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %23 = call i64 @brcmf_sdio_intr_rstatus(%struct.brcmf_sdio* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @brcmf_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %17
  %29 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %30 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @brcmf_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %37 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %39 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %2, align 8
  %42 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %41, i32 0, i32 1
  %43 = call i32 @queue_work(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @brcmf_sdio_intr_rstatus(%struct.brcmf_sdio*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
