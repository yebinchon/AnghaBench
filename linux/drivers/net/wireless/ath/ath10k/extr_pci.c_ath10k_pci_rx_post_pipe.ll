; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_rx_post_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_rx_post_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_pci_pipe = type { i64, %struct.ath10k_ce_pipe*, %struct.ath10k* }
%struct.ath10k_ce_pipe = type { i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32 }
%struct.ath10k_ce = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to post pci rx buf: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ATH10K_PCI_RX_POST_RETRY_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_pci_pipe*)* @ath10k_pci_rx_post_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_rx_post_pipe(%struct.ath10k_pci_pipe* %0) #0 {
  %2 = alloca %struct.ath10k_pci_pipe*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca %struct.ath10k_ce*, align 8
  %6 = alloca %struct.ath10k_ce_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k_pci_pipe* %0, %struct.ath10k_pci_pipe** %2, align 8
  %9 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %9, i32 0, i32 2
  %11 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  store %struct.ath10k* %11, %struct.ath10k** %3, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %12)
  store %struct.ath10k_pci* %13, %struct.ath10k_pci** %4, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %14)
  store %struct.ath10k_ce* %15, %struct.ath10k_ce** %5, align 8
  %16 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %2, align 8
  %17 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %16, i32 0, i32 1
  %18 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %17, align 8
  store %struct.ath10k_ce_pipe* %18, %struct.ath10k_ce_pipe** %6, align 8
  %19 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %2, align 8
  %20 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %66

24:                                               ; preds = %1
  %25 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %26 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %66

30:                                               ; preds = %24
  %31 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %32 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %35 = call i32 @__ath10k_ce_rx_num_free_bufs(%struct.ath10k_ce_pipe* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %37 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  br label %39

39:                                               ; preds = %63, %30
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %39
  %43 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %2, align 8
  %44 = call i32 @__ath10k_pci_rx_post_buf(%struct.ath10k_pci_pipe* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %66

53:                                               ; preds = %47
  %54 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ath10k_warn(%struct.ath10k* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %58 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %57, i32 0, i32 0
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* @ATH10K_PCI_RX_POST_RETRY_MS, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @mod_timer(i32* %58, i64 %61)
  br label %66

63:                                               ; preds = %42
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %39

66:                                               ; preds = %23, %29, %53, %52, %39
  ret void
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__ath10k_ce_rx_num_free_bufs(%struct.ath10k_ce_pipe*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__ath10k_pci_rx_post_buf(%struct.ath10k_pci_pipe*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
