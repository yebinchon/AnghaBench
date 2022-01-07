; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_mvm_coex_dump_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_mvm_coex_dump_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_bt_coex_profile_notif = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"MBOX dw0:\0A\00", align 1
@LE_SLAVE_LAT = common dso_local global i32 0, align 4
@LE_PROF1 = common dso_local global i32 0, align 4
@LE_PROF2 = common dso_local global i32 0, align 4
@LE_PROF_OTHER = common dso_local global i32 0, align 4
@CHL_SEQ_N = common dso_local global i32 0, align 4
@INBAND_S = common dso_local global i32 0, align 4
@LE_MIN_RSSI = common dso_local global i32 0, align 4
@LE_SCAN = common dso_local global i32 0, align 4
@LE_ADV = common dso_local global i32 0, align 4
@LE_MAX_TX_POWER = common dso_local global i32 0, align 4
@OPEN_CON_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"MBOX dw1:\0A\00", align 1
@BR_MAX_TX_POWER = common dso_local global i32 0, align 4
@IP_SR = common dso_local global i32 0, align 4
@LE_MSTR = common dso_local global i32 0, align 4
@AGGR_TRFC_LD = common dso_local global i32 0, align 4
@MSG_TYPE = common dso_local global i32 0, align 4
@SSN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"MBOX dw2:\0A\00", align 1
@SNIFF_ACT = common dso_local global i32 0, align 4
@PAG = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@CONN = common dso_local global i32 0, align 4
@SNIFF_INTERVAL = common dso_local global i32 0, align 4
@DISC = common dso_local global i32 0, align 4
@SCO_TX_ACT = common dso_local global i32 0, align 4
@SCO_RX_ACT = common dso_local global i32 0, align 4
@ESCO_RE_TX = common dso_local global i32 0, align 4
@SCO_DURATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"MBOX dw3:\0A\00", align 1
@SCO_STATE = common dso_local global i32 0, align 4
@SNIFF_STATE = common dso_local global i32 0, align 4
@A2DP_STATE = common dso_local global i32 0, align 4
@A2DP_SRC = common dso_local global i32 0, align 4
@ACL_STATE = common dso_local global i32 0, align 4
@MSTR_STATE = common dso_local global i32 0, align 4
@OBX_STATE = common dso_local global i32 0, align 4
@OPEN_CON_2 = common dso_local global i32 0, align 4
@TRAFFIC_LOAD = common dso_local global i32 0, align 4
@CHL_SEQN_LSB = common dso_local global i32 0, align 4
@INBAND_P = common dso_local global i32 0, align 4
@MSG_TYPE_2 = common dso_local global i32 0, align 4
@SSN_2 = common dso_local global i32 0, align 4
@UPDATE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_bt_coex_profile_notif*, i8*, i32, i32)* @iwl_mvm_coex_dump_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_coex_dump_mbox(%struct.iwl_bt_coex_profile_notif* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_bt_coex_profile_notif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_bt_coex_profile_notif* %0, %struct.iwl_bt_coex_profile_notif** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %13, %14
  %16 = call i64 @scnprintf(i8* %12, i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @LE_SLAVE_LAT, align 4
  %22 = call i32 @BT_MBOX_PRINT(i32 0, i32 %21, i32 0)
  %23 = load i32, i32* @LE_PROF1, align 4
  %24 = call i32 @BT_MBOX_PRINT(i32 0, i32 %23, i32 0)
  %25 = load i32, i32* @LE_PROF2, align 4
  %26 = call i32 @BT_MBOX_PRINT(i32 0, i32 %25, i32 0)
  %27 = load i32, i32* @LE_PROF_OTHER, align 4
  %28 = call i32 @BT_MBOX_PRINT(i32 0, i32 %27, i32 0)
  %29 = load i32, i32* @CHL_SEQ_N, align 4
  %30 = call i32 @BT_MBOX_PRINT(i32 0, i32 %29, i32 0)
  %31 = load i32, i32* @INBAND_S, align 4
  %32 = call i32 @BT_MBOX_PRINT(i32 0, i32 %31, i32 0)
  %33 = load i32, i32* @LE_MIN_RSSI, align 4
  %34 = call i32 @BT_MBOX_PRINT(i32 0, i32 %33, i32 0)
  %35 = load i32, i32* @LE_SCAN, align 4
  %36 = call i32 @BT_MBOX_PRINT(i32 0, i32 %35, i32 0)
  %37 = load i32, i32* @LE_ADV, align 4
  %38 = call i32 @BT_MBOX_PRINT(i32 0, i32 %37, i32 0)
  %39 = load i32, i32* @LE_MAX_TX_POWER, align 4
  %40 = call i32 @BT_MBOX_PRINT(i32 0, i32 %39, i32 0)
  %41 = load i32, i32* @OPEN_CON_1, align 4
  %42 = call i32 @BT_MBOX_PRINT(i32 0, i32 %41, i32 1)
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i64 @scnprintf(i8* %46, i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @BR_MAX_TX_POWER, align 4
  %56 = call i32 @BT_MBOX_PRINT(i32 1, i32 %55, i32 0)
  %57 = load i32, i32* @IP_SR, align 4
  %58 = call i32 @BT_MBOX_PRINT(i32 1, i32 %57, i32 0)
  %59 = load i32, i32* @LE_MSTR, align 4
  %60 = call i32 @BT_MBOX_PRINT(i32 1, i32 %59, i32 0)
  %61 = load i32, i32* @AGGR_TRFC_LD, align 4
  %62 = call i32 @BT_MBOX_PRINT(i32 1, i32 %61, i32 0)
  %63 = load i32, i32* @MSG_TYPE, align 4
  %64 = call i32 @BT_MBOX_PRINT(i32 1, i32 %63, i32 0)
  %65 = load i32, i32* @SSN, align 4
  %66 = call i32 @BT_MBOX_PRINT(i32 1, i32 %65, i32 1)
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i64 @scnprintf(i8* %70, i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @SNIFF_ACT, align 4
  %80 = call i32 @BT_MBOX_PRINT(i32 2, i32 %79, i32 0)
  %81 = load i32, i32* @PAG, align 4
  %82 = call i32 @BT_MBOX_PRINT(i32 2, i32 %81, i32 0)
  %83 = load i32, i32* @INQUIRY, align 4
  %84 = call i32 @BT_MBOX_PRINT(i32 2, i32 %83, i32 0)
  %85 = load i32, i32* @CONN, align 4
  %86 = call i32 @BT_MBOX_PRINT(i32 2, i32 %85, i32 0)
  %87 = load i32, i32* @SNIFF_INTERVAL, align 4
  %88 = call i32 @BT_MBOX_PRINT(i32 2, i32 %87, i32 0)
  %89 = load i32, i32* @DISC, align 4
  %90 = call i32 @BT_MBOX_PRINT(i32 2, i32 %89, i32 0)
  %91 = load i32, i32* @SCO_TX_ACT, align 4
  %92 = call i32 @BT_MBOX_PRINT(i32 2, i32 %91, i32 0)
  %93 = load i32, i32* @SCO_RX_ACT, align 4
  %94 = call i32 @BT_MBOX_PRINT(i32 2, i32 %93, i32 0)
  %95 = load i32, i32* @ESCO_RE_TX, align 4
  %96 = call i32 @BT_MBOX_PRINT(i32 2, i32 %95, i32 0)
  %97 = load i32, i32* @SCO_DURATION, align 4
  %98 = call i32 @BT_MBOX_PRINT(i32 2, i32 %97, i32 1)
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i64 @scnprintf(i8* %102, i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* @SCO_STATE, align 4
  %112 = call i32 @BT_MBOX_PRINT(i32 3, i32 %111, i32 0)
  %113 = load i32, i32* @SNIFF_STATE, align 4
  %114 = call i32 @BT_MBOX_PRINT(i32 3, i32 %113, i32 0)
  %115 = load i32, i32* @A2DP_STATE, align 4
  %116 = call i32 @BT_MBOX_PRINT(i32 3, i32 %115, i32 0)
  %117 = load i32, i32* @A2DP_SRC, align 4
  %118 = call i32 @BT_MBOX_PRINT(i32 3, i32 %117, i32 0)
  %119 = load i32, i32* @ACL_STATE, align 4
  %120 = call i32 @BT_MBOX_PRINT(i32 3, i32 %119, i32 0)
  %121 = load i32, i32* @MSTR_STATE, align 4
  %122 = call i32 @BT_MBOX_PRINT(i32 3, i32 %121, i32 0)
  %123 = load i32, i32* @OBX_STATE, align 4
  %124 = call i32 @BT_MBOX_PRINT(i32 3, i32 %123, i32 0)
  %125 = load i32, i32* @OPEN_CON_2, align 4
  %126 = call i32 @BT_MBOX_PRINT(i32 3, i32 %125, i32 0)
  %127 = load i32, i32* @TRAFFIC_LOAD, align 4
  %128 = call i32 @BT_MBOX_PRINT(i32 3, i32 %127, i32 0)
  %129 = load i32, i32* @CHL_SEQN_LSB, align 4
  %130 = call i32 @BT_MBOX_PRINT(i32 3, i32 %129, i32 0)
  %131 = load i32, i32* @INBAND_P, align 4
  %132 = call i32 @BT_MBOX_PRINT(i32 3, i32 %131, i32 0)
  %133 = load i32, i32* @MSG_TYPE_2, align 4
  %134 = call i32 @BT_MBOX_PRINT(i32 3, i32 %133, i32 0)
  %135 = load i32, i32* @SSN_2, align 4
  %136 = call i32 @BT_MBOX_PRINT(i32 3, i32 %135, i32 0)
  %137 = load i32, i32* @UPDATE_REQUEST, align 4
  %138 = call i32 @BT_MBOX_PRINT(i32 3, i32 %137, i32 1)
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i64 @scnprintf(i8*, i32, i8*) #1

declare dso_local i32 @BT_MBOX_PRINT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
