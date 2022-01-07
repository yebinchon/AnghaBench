; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_accu_radio_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_accu_radio_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_accu_radio_stats(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %3 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %6
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %17
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 8
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %28
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %39
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
