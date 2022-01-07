; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_tx_fifo_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_tx_fifo_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i64* }

@BRCMS_WAKE_OVERRIDE_TXFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i64)* @brcms_b_tx_fifo_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_tx_fifo_resume(%struct.brcms_hardware* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %6 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %5, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dma_txresume(i64 %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %44

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %32 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %36 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %41 = load i32, i32* @BRCMS_WAKE_OVERRIDE_TXFIFO, align 4
  %42 = call i32 @brcms_c_ucode_wake_override_clear(%struct.brcms_hardware* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %26
  br label %44

44:                                               ; preds = %25, %43
  ret void
}

declare dso_local i32 @dma_txresume(i64) #1

declare dso_local i32 @brcms_c_ucode_wake_override_clear(%struct.brcms_hardware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
