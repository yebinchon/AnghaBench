; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_wake_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_wake_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@PCIE_WAKE_TIMEOUT = common dso_local global i32 0, align 4
@PCIE_WAKE_LATE_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"device wakeup took %d ms which is unusually long, otherwise it works normally.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_wake_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_wake_wait(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 5, i32* %5, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @PCIE_WAKE_TIMEOUT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = call i64 @ath10k_pci_is_awake(%struct.ath10k* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PCIE_WAKE_LATE_US, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 1000
  %22 = call i32 @ath10k_warn(%struct.ath10k* %19, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %14
  store i32 0, i32* %2, align 4
  br label %39

24:                                               ; preds = %10
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @udelay(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 50
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 5
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %24
  br label %6

36:                                               ; preds = %6
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @ath10k_pci_is_awake(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
