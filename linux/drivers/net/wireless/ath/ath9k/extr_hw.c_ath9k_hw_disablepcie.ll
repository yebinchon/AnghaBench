; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_disablepcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_disablepcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PCIE_SERDES = common dso_local global i32 0, align 4
@AR_PCIE_SERDES2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_disablepcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_disablepcie(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i32 @AR_SREV_5416(%struct.ath_hw* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %38

7:                                                ; preds = %1
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = load i32, i32* @AR_PCIE_SERDES, align 4
  %10 = call i32 @REG_WRITE(%struct.ath_hw* %8, i32 %9, i32 -1840710656)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = load i32, i32* @AR_PCIE_SERDES, align 4
  %13 = call i32 @REG_WRITE(%struct.ath_hw* %11, i32 %12, i32 613566756)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = load i32, i32* @AR_PCIE_SERDES, align 4
  %16 = call i32 @REG_WRITE(%struct.ath_hw* %14, i32 %15, i32 671088681)
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = load i32, i32* @AR_PCIE_SERDES, align 4
  %19 = call i32 @REG_WRITE(%struct.ath_hw* %17, i32 %18, i32 1461061668)
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = load i32, i32* @AR_PCIE_SERDES, align 4
  %22 = call i32 @REG_WRITE(%struct.ath_hw* %20, i32 %21, i32 630719865)
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_PCIE_SERDES, align 4
  %25 = call i32 @REG_WRITE(%struct.ath_hw* %23, i32 %24, i32 0)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %27 = load i32, i32* @AR_PCIE_SERDES, align 4
  %28 = call i32 @REG_WRITE(%struct.ath_hw* %26, i32 %27, i32 447397440)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %30 = load i32, i32* @AR_PCIE_SERDES, align 4
  %31 = call i32 @REG_WRITE(%struct.ath_hw* %29, i32 %30, i32 -1106225836)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = load i32, i32* @AR_PCIE_SERDES, align 4
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %32, i32 %33, i32 921607)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = load i32, i32* @AR_PCIE_SERDES2, align 4
  %37 = call i32 @REG_WRITE(%struct.ath_hw* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @AR_SREV_5416(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
