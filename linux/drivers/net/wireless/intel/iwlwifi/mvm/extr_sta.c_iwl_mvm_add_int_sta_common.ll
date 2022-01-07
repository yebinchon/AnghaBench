; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_int_sta_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_int_sta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_int_sta = type { i32, i32, i32 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i32, i8*, i32, i8*, i32 }

@IWL_UCODE_TLV_API_STA_TYPE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@IWL_ADD_STA_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Internal station added.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Add internal station failed, status=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_int_sta*, i32*, i32, i32)* @iwl_mvm_add_int_sta_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_add_int_sta_common(%struct.iwl_mvm* %0, %struct.iwl_mvm_int_sta* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_mvm_int_sta*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_mvm_add_sta_cmd, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.iwl_mvm_int_sta* %1, %struct.iwl_mvm_int_sta** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 128, i32* %14, align 4
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = call i32 @memset(%struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 40)
  %19 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 5
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @FW_CMD_ID_AND_COLOR(i32 %23, i32 %24)
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 4
  store i8* %26, i8** %27, align 8
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @IWL_UCODE_TLV_API_STA_TYPE, align 4
  %33 = call i64 @fw_has_api(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %5
  %36 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %8, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  br label %40

40:                                               ; preds = %35, %5
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %42 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %8, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %44, %40
  %51 = call i32 @cpu_to_le16(i32 65535)
  %52 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memcpy(i32 %57, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %63 = load i32, i32* @ADD_STA, align 4
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %65 = call i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm* %64)
  %66 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %62, i32 %63, i32 %65, %struct.iwl_mvm_add_sta_cmd* %12, i32* %14)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %86

71:                                               ; preds = %61
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @IWL_ADD_STA_STATUS_MASK, align 4
  %74 = and i32 %72, %73
  switch i32 %74, label %78 [
    i32 128, label %75
  ]

75:                                               ; preds = %71
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %77 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %86

78:                                               ; preds = %71
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %13, align 4
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @IWL_ERR(%struct.iwl_mvm* %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %75, %69
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memset(%struct.iwl_mvm_add_sta_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_mvm_add_sta_cmd*, i32*) #1

declare dso_local i32 @iwl_mvm_add_sta_cmd_size(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
