; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_iwl_mvm_rs_add_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_iwl_mvm_rs_add_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.iwl_lq_sta_rs_fw }
%struct.iwl_lq_sta_rs_fw = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i64, i32, %struct.iwl_mvm* }

@.str = private unnamed_addr constant [34 x i8] c"create station rate scale window\0A\00", align 1
@S8_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rs_add_sta(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_mvm_sta*, align 8
  %5 = alloca %struct.iwl_lq_sta_rs_fw*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %4, align 8
  %6 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.iwl_lq_sta_rs_fw* %8, %struct.iwl_lq_sta_rs_fw** %5, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %12 = load %struct.iwl_lq_sta_rs_fw*, %struct.iwl_lq_sta_rs_fw** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_lq_sta_rs_fw, %struct.iwl_lq_sta_rs_fw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %14, align 8
  %15 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.iwl_lq_sta_rs_fw*, %struct.iwl_lq_sta_rs_fw** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_lq_sta_rs_fw, %struct.iwl_lq_sta_rs_fw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 8
  %21 = load %struct.iwl_lq_sta_rs_fw*, %struct.iwl_lq_sta_rs_fw** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_lq_sta_rs_fw, %struct.iwl_lq_sta_rs_fw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.iwl_lq_sta_rs_fw*, %struct.iwl_lq_sta_rs_fw** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_lq_sta_rs_fw, %struct.iwl_lq_sta_rs_fw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32 %27, i32 0, i32 4)
  %29 = load i32, i32* @S8_MIN, align 4
  %30 = load %struct.iwl_lq_sta_rs_fw*, %struct.iwl_lq_sta_rs_fw** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_lq_sta_rs_fw, %struct.iwl_lq_sta_rs_fw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.iwl_lq_sta_rs_fw*, %struct.iwl_lq_sta_rs_fw** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_lq_sta_rs_fw, %struct.iwl_lq_sta_rs_fw* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  ret void
}

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
