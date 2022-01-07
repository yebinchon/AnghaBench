; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ath9k_hw_reset_txstatus_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ath9k_hw_reset_txstatus_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i64, i64 }

@XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TS Start 0x%x End 0x%x Virt %p, Size %d\0A\00", align 1
@AR_Q_STATUS_RING_START = common dso_local global i32 0, align 4
@AR_Q_STATUS_RING_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_reset_txstatus_ring(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %3, i32 0, i32 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(i8* %8, i32 0, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = call i32 @ath9k_hw_common(%struct.ath_hw* %16)
  %18 = load i32, i32* @XMIT, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %23 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath_dbg(i32 %17, i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i64 %27, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = load i32, i32* @AR_Q_STATUS_RING_START, align 4
  %34 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @REG_WRITE(%struct.ath_hw* %32, i32 %33, i32 %36)
  %38 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %39 = load i32, i32* @AR_Q_STATUS_RING_END, align 4
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @REG_WRITE(%struct.ath_hw* %38, i32 %39, i32 %42)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
