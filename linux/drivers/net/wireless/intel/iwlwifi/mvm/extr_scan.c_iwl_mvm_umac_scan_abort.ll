; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_umac_scan_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_umac_scan_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32 }
%struct.iwl_umac_scan_abort = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Sending scan abort, uid %u\0A\00", align 1
@SCAN_ABORT_UMAC = common dso_local global i32 0, align 4
@IWL_ALWAYS_LONG_GROUP = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_STOPPING_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @iwl_mvm_umac_scan_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_umac_scan_abort(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_umac_scan_abort, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.iwl_umac_scan_abort* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %10, i32 0, i32 1
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @iwl_mvm_scan_uid_by_status(%struct.iwl_mvm* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.iwl_umac_scan_abort, %struct.iwl_umac_scan_abort* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %31 = load i32, i32* @SCAN_ABORT_UMAC, align 4
  %32 = load i32, i32* @IWL_ALWAYS_LONG_GROUP, align 4
  %33 = call i32 @iwl_cmd_id(i32 %31, i32 %32, i32 0)
  %34 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %30, i32 %33, i32 0, i32 4, %struct.iwl_umac_scan_abort* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IWL_MVM_SCAN_STOPPING_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %23
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @iwl_mvm_scan_uid_by_status(%struct.iwl_mvm*, i32) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_umac_scan_abort*) #2

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
