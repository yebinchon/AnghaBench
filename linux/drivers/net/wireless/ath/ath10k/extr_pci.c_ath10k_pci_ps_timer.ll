; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_ps_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_ps_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_pci = type { i64, i32, i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.timer_list = type { i32 }

@ps_timer = common dso_local global i32 0, align 4
@ATH10K_DBG_PCI_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pci ps timer refcount %lu awake %d\0A\00", align 1
@ar_pci = common dso_local global %struct.ath10k_pci* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ath10k_pci_ps_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_ps_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ath10k_pci*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %7 = ptrtoint %struct.ath10k_pci* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @ps_timer, align 4
  %10 = call %struct.ath10k_pci* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ath10k_pci* %10, %struct.ath10k_pci** %3, align 8
  %11 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %11, i32 0, i32 3
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %4, align 8
  %14 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = load i32, i32* @ATH10K_DBG_PCI_PS, align 4
  %20 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %24 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ath10k_dbg(%struct.ath10k* %18, i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %25)
  %27 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %34 = call i32 @__ath10k_pci_sleep(%struct.ath10k* %33)
  br label %35

35:                                               ; preds = %32, %31
  %36 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %36, i32 0, i32 1
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.ath10k_pci* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i32) #1

declare dso_local i32 @__ath10k_pci_sleep(%struct.ath10k*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
