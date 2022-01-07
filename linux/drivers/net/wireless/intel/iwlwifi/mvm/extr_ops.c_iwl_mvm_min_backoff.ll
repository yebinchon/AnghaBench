; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_min_backoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_min_backoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iwl_pwr_tx_backoff* }
%struct.iwl_pwr_tx_backoff = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*)* @iwl_mvm_min_backoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_min_backoff(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_pwr_tx_backoff*, align 8
  %5 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.iwl_pwr_tx_backoff*, %struct.iwl_pwr_tx_backoff** %9, align 8
  store %struct.iwl_pwr_tx_backoff* %10, %struct.iwl_pwr_tx_backoff** %4, align 8
  %11 = load %struct.iwl_pwr_tx_backoff*, %struct.iwl_pwr_tx_backoff** %4, align 8
  %12 = icmp ne %struct.iwl_pwr_tx_backoff* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @iwl_acpi_get_pwr_limit(i32 %17)
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %34, %14
  %20 = load %struct.iwl_pwr_tx_backoff*, %struct.iwl_pwr_tx_backoff** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_pwr_tx_backoff, %struct.iwl_pwr_tx_backoff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.iwl_pwr_tx_backoff*, %struct.iwl_pwr_tx_backoff** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_pwr_tx_backoff, %struct.iwl_pwr_tx_backoff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.iwl_pwr_tx_backoff*, %struct.iwl_pwr_tx_backoff** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_pwr_tx_backoff, %struct.iwl_pwr_tx_backoff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.iwl_pwr_tx_backoff*, %struct.iwl_pwr_tx_backoff** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_pwr_tx_backoff, %struct.iwl_pwr_tx_backoff* %35, i32 1
  store %struct.iwl_pwr_tx_backoff* %36, %struct.iwl_pwr_tx_backoff** %4, align 8
  br label %19

37:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %30, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @iwl_acpi_get_pwr_limit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
