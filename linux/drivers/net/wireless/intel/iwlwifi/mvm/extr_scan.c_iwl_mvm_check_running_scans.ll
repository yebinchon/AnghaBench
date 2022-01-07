; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_check_running_scans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_check_running_scans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_REGULAR_MASK = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_SCHED_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32)* @iwl_mvm_check_running_scans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_check_running_scans(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG, align 4
  %12 = call i32 @fw_has_capa(i32* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 130
  br i1 %17, label %18, label %27

18:                                               ; preds = %15, %2
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 130
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %93

27:                                               ; preds = %18, %15
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %29 = call i64 @iwl_mvm_num_scans(%struct.iwl_mvm* %28)
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %93

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %88 [
    i32 129, label %37
    i32 128, label %50
    i32 130, label %63
  ]

37:                                               ; preds = %35
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IWL_MVM_SCAN_REGULAR_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %93

47:                                               ; preds = %37
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %49 = call i32 @iwl_mvm_scan_stop(%struct.iwl_mvm* %48, i32 128, i32 1)
  store i32 %49, i32* %3, align 4
  br label %93

50:                                               ; preds = %35
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IWL_MVM_SCAN_SCHED_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %93

60:                                               ; preds = %50
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %62 = call i32 @iwl_mvm_scan_stop(%struct.iwl_mvm* %61, i32 129, i32 1)
  store i32 %62, i32* %3, align 4
  br label %93

63:                                               ; preds = %35
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %93

67:                                               ; preds = %63
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IWL_MVM_SCAN_REGULAR_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %76 = call i32 @iwl_mvm_scan_stop(%struct.iwl_mvm* %75, i32 129, i32 1)
  store i32 %76, i32* %3, align 4
  br label %93

77:                                               ; preds = %67
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IWL_MVM_SCAN_SCHED_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %86 = call i32 @iwl_mvm_scan_stop(%struct.iwl_mvm* %85, i32 128, i32 1)
  store i32 %86, i32* %3, align 4
  br label %93

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %35, %87
  %89 = call i32 @WARN_ON(i32 1)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %84, %74, %66, %60, %57, %47, %44, %34, %24
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i64 @iwl_mvm_num_scans(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_scan_stop(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
