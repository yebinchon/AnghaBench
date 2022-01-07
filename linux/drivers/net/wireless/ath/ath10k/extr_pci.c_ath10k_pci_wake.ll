; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i64, i64, i32, i32 }

@ATH10K_DBG_PCI_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"pci ps wake refcount %lu awake %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_wake(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %7)
  store %struct.ath10k_pci* %8, %struct.ath10k_pci** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %16, i32 0, i32 3
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load i32, i32* @ATH10K_DBG_PCI_PS, align 4
  %22 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %23 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %26 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ath10k_dbg(%struct.ath10k* %20, i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %27)
  %29 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %30 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %15
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = call i32 @__ath10k_pci_wake(%struct.ath10k* %34)
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = call i32 @ath10k_pci_wake_wait(%struct.ath10k* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %42 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %41, i32 0, i32 2
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %49 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %53 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  br label %58

58:                                               ; preds = %47, %44
  %59 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %60 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %59, i32 0, i32 3
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i32) #1

declare dso_local i32 @__ath10k_pci_wake(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_wake_wait(%struct.ath10k*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
