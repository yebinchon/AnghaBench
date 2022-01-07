; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_txq = type { i64, i64, i64, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_txq*)* @iwl_pcie_txq_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_progress(%struct.iwl_txq* %0) #0 {
  %2 = alloca %struct.iwl_txq*, align 8
  store %struct.iwl_txq* %0, %struct.iwl_txq** %2, align 8
  %3 = load %struct.iwl_txq*, %struct.iwl_txq** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %3, i32 0, i32 5
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.iwl_txq*, %struct.iwl_txq** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.iwl_txq*, %struct.iwl_txq** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %38

17:                                               ; preds = %11
  %18 = load %struct.iwl_txq*, %struct.iwl_txq** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.iwl_txq*, %struct.iwl_txq** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.iwl_txq*, %struct.iwl_txq** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %26, i32 0, i32 3
  %28 = call i32 @del_timer(i32* %27)
  br label %38

29:                                               ; preds = %17
  %30 = load %struct.iwl_txq*, %struct.iwl_txq** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %30, i32 0, i32 3
  %32 = load i64, i64* @jiffies, align 8
  %33 = load %struct.iwl_txq*, %struct.iwl_txq** %2, align 8
  %34 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i32 @mod_timer(i32* %31, i64 %36)
  br label %38

38:                                               ; preds = %10, %16, %29, %25
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
