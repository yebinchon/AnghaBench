; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ath9k_hw_setup_statusring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ath9k_hw_setup_statusring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_setup_statusring(%struct.ath_hw* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %7, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = getelementptr i8, i8* %12, i64 %15
  %17 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = call i32 @ath9k_hw_reset_txstatus_ring(%struct.ath_hw* %25)
  ret void
}

declare dso_local i32 @ath9k_hw_reset_txstatus_ring(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
