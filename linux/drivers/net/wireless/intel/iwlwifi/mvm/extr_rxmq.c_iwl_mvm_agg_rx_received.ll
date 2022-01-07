; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_agg_rx_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_agg_rx_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.iwl_mvm_baid_data = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [91 x i8] c"Got valid BAID but no baid allocated, bypass the re-ordering buffer. Baid %d reorder 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i32, i64)* @iwl_mvm_agg_rx_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_agg_rx_received(%struct.iwl_mvm* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iwl_mvm_baid_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %7, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.iwl_mvm_baid_data* @rcu_dereference(i32 %17)
  store %struct.iwl_mvm_baid_data* %18, %struct.iwl_mvm_baid_data** %9, align 8
  %19 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %9, align 8
  %20 = icmp ne %struct.iwl_mvm_baid_data* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @IWL_DEBUG_RX(%struct.iwl_mvm* %22, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  br label %50

26:                                               ; preds = %3
  %27 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %9, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %50

32:                                               ; preds = %26
  %33 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %9, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %9, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @TU_TO_JIFFIES(i64 %39)
  %41 = add i64 %38, %40
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @time_before(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %9, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %32
  br label %50

50:                                               ; preds = %49, %31, %21
  %51 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.iwl_mvm_baid_data* @rcu_dereference(i32) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_mvm*, i8*, i64, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @TU_TO_JIFFIES(i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
