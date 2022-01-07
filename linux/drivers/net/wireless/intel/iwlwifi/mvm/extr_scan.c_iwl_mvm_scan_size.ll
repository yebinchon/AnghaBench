; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_scan_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IWL_SCAN_REQ_UMAC_SIZE_V1 = common dso_local global i32 0, align 4
@IWL_SCAN_REQ_UMAC_SIZE_V8 = common dso_local global i32 0, align 4
@IWL_SCAN_REQ_UMAC_SIZE_V7 = common dso_local global i32 0, align 4
@IWL_SCAN_REQ_UMAC_SIZE_V6 = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_scan_size(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = load i32, i32* @IWL_SCAN_REQ_UMAC_SIZE_V1, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %8 = call i64 @iwl_mvm_is_adaptive_dwell_v2_supported(%struct.iwl_mvm* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @IWL_SCAN_REQ_UMAC_SIZE_V8, align 4
  store i32 %11, i32* %4, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = call i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @IWL_SCAN_REQ_UMAC_SIZE_V7, align 4
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %12
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = call i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @IWL_SCAN_REQ_UMAC_SIZE_V6, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %18
  br label %25

25:                                               ; preds = %24, %16
  br label %26

26:                                               ; preds = %25, %10
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* @IWL_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %32 = call i64 @fw_has_capa(%struct.TYPE_4__* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %26
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %36 = call i64 @iwl_mvm_is_scan_ext_chan_supported(%struct.iwl_mvm* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 4, i32* %5, align 4
  br label %40

39:                                               ; preds = %34
  store i32 4, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = add i64 %42, %50
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %26
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = add i64 4, %64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %56, %40
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @iwl_mvm_is_adaptive_dwell_v2_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_is_adaptive_dwell_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_cdb_scan_api(%struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_capa(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @iwl_mvm_is_scan_ext_chan_supported(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
