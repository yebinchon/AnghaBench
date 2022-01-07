; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i64, i64, i32, i32, i32 }

@ATH10K_DBG_PCI_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pci ps sleep refcount %lu awake %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ATH10K_PCI_SLEEP_GRACE_PERIOD_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_pci_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_sleep(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_pci*, align 8
  %4 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %6 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %5)
  store %struct.ath10k_pci* %6, %struct.ath10k_pci** %3, align 8
  %7 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %14 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %13, i32 0, i32 2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %18 = load i32, i32* @ATH10K_DBG_PCI_PS, align 4
  %19 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %23 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ath10k_dbg(%struct.ath10k* %17, i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %21, i32 %24)
  %26 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %27 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %12
  br label %46

34:                                               ; preds = %12
  %35 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %36 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %40 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %39, i32 0, i32 3
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i32, i32* @ATH10K_PCI_SLEEP_GRACE_PERIOD_MSEC, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @mod_timer(i32* %40, i64 %44)
  br label %46

46:                                               ; preds = %34, %33
  %47 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %48 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %47, i32 0, i32 2
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %46, %11
  ret void
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
