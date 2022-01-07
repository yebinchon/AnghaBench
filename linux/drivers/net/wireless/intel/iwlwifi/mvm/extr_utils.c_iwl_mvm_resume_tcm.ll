; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_resume_tcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_resume_tcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, %struct.iwl_mvm_tcm_mac*, i8*, i8* }
%struct.TYPE_7__ = type { i64, i64* }
%struct.iwl_mvm_tcm_mac = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@jiffies = common dso_local global i8* null, align 8
@NUM_MAC_INDEX_DRIVER = common dso_local global i32 0, align 4
@IWL_MVM_TRAFFIC_LOW = common dso_local global i64 0, align 8
@MVM_TCM_PERIOD = common dso_local global i32 0, align 4
@MVM_LL_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_resume_tcm(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm_tcm_mac*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load i8*, i8** @jiffies, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 6
  store i8* %10, i8** %13, align 8
  %14 = load i8*, i8** @jiffies, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  store i8* %14, i8** %17, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %58, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NUM_MAC_INDEX_DRIVER, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %18
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %26, i64 %28
  store %struct.iwl_mvm_tcm_mac* %29, %struct.iwl_mvm_tcm_mac** %5, align 8
  %30 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  %42 = load %struct.iwl_mvm_tcm_mac*, %struct.iwl_mvm_tcm_mac** %5, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_tcm_mac, %struct.iwl_mvm_tcm_mac* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @memset(i32* %44, i32 0, i32 4)
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %22
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %18

61:                                               ; preds = %18
  %62 = call i32 (...) @smp_mb()
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %64 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IWL_MVM_TRAFFIC_LOW, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* @MVM_TCM_PERIOD, align 4
  %78 = call i32 @schedule_delayed_work(i32* %76, i32 %77)
  br label %89

79:                                               ; preds = %61
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %84 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* @MVM_LL_PERIOD, align 4
  %87 = call i32 @schedule_delayed_work(i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %79
  br label %89

89:                                               ; preds = %88, %73
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock_bh(i32* %92)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
