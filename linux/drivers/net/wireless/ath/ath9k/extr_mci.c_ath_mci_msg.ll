; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.TYPE_2__, %struct.ath_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.ath_hw = type { i32 }
%struct.ath_mci_profile_info = type { i32, i32 }
%struct.ath_mci_profile_status = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@MCI_STATE_NEED_FLUSH_BT_INFO = common dso_local global i32 0, align 4
@MCI_STATE_ENABLE = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"(MCI) Need to flush BT profiles\0A\00", align 1
@MCI_STATE_SEND_STATUS_QUERY = common dso_local global i32 0, align 4
@MCI_STATE_SEND_WLAN_COEX_VERSION = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_MAJOR_VERSION = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_MINOR_VERSION = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_PROFILE_TYPE = common dso_local global i32 0, align 4
@MCI_GPM_COEX_PROFILE_UNKNOWN = common dso_local global i32 0, align 4
@MCI_GPM_COEX_PROFILE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Illegal profile type = %d, state = %d\0A\00", align 1
@MCI_GPM_COEX_B_STATUS_TYPE = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_STATUS_LINKID = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_STATUS_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"BT_Status_Update: is_link=%d, linkId=%d, state=%d, SEQ=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unknown GPM COEX message = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i32, i32*)* @ath_mci_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_mci_msg(%struct.ath_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_mci_profile_info, align 4
  %9 = alloca %struct.ath_mci_profile_status, align 4
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 3
  %17 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  store %struct.ath_hw* %17, %struct.ath_hw** %7, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 3
  %20 = load %struct.ath_hw*, %struct.ath_hw** %19, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %20)
  store %struct.ath_common* %21, %struct.ath_common** %10, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %23 = load i32, i32* @MCI_STATE_NEED_FLUSH_BT_INFO, align 4
  %24 = call i64 @ar9003_mci_state(%struct.ath_hw* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %28 = load i32, i32* @MCI_STATE_ENABLE, align 4
  %29 = call i64 @ar9003_mci_state(%struct.ath_hw* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %33 = load i32, i32* @MCI, align 4
  %34 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %32, i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @ath_mci_flush_profile(i32* %37)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %40 = load i32, i32* @MCI_STATE_SEND_STATUS_QUERY, align 4
  %41 = call i64 @ar9003_mci_state(%struct.ath_hw* %39, i32 %40)
  br label %42

42:                                               ; preds = %31, %26, %3
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %130 [
    i32 129, label %44
    i32 128, label %48
    i32 130, label %63
    i32 132, label %66
    i32 131, label %94
  ]

44:                                               ; preds = %42
  %45 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %46 = load i32, i32* @MCI_STATE_SEND_WLAN_COEX_VERSION, align 4
  %47 = call i64 @ar9003_mci_state(%struct.ath_hw* %45, i32 %46)
  br label %135

48:                                               ; preds = %42
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @MCI_GPM_COEX_B_MAJOR_VERSION, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @MCI_GPM_COEX_B_MINOR_VERSION, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ar9003_mci_set_bt_version(%struct.ath_hw* %59, i32 %60, i32 %61)
  br label %135

63:                                               ; preds = %42
  %64 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %65 = call i32 @ar9003_mci_send_wlan_channels(%struct.ath_hw* %64)
  br label %135

66:                                               ; preds = %42
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @MCI_GPM_COEX_B_PROFILE_TYPE, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @memcpy(%struct.ath_mci_profile_info* %8, i32* %70, i32 10)
  %72 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MCI_GPM_COEX_PROFILE_UNKNOWN, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %8, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MCI_GPM_COEX_PROFILE_MAX, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %76, %66
  %82 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %83 = load i32, i32* @MCI, align 4
  %84 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %8, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %82, i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %87)
  br label %135

89:                                               ; preds = %76
  %90 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %91 = call i32 @ath_mci_process_profile(%struct.ath_softc* %90, %struct.ath_mci_profile_info* %8)
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %135

94:                                               ; preds = %42
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* @MCI_GPM_COEX_B_STATUS_TYPE, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %9, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* @MCI_GPM_COEX_B_STATUS_LINKID, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %9, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* @MCI_GPM_COEX_B_STATUS_STATE, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %9, i32 0, i32 2
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 12
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %14, align 4
  %116 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %117 = load i32, i32* @MCI, align 4
  %118 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %9, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %9, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.ath_mci_profile_status, %struct.ath_mci_profile_status* %9, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %116, i32 %117, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %121, i32 %123, i32 %124)
  %126 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %127 = call i32 @ath_mci_process_status(%struct.ath_softc* %126, %struct.ath_mci_profile_status* %9)
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %13, align 4
  br label %135

130:                                              ; preds = %42
  %131 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %132 = load i32, i32* @MCI, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %131, i32 %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %130, %94, %89, %81, %63, %48, %44
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %140 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %143 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %142, i32 0, i32 0
  %144 = call i32 @ieee80211_queue_work(i32 %141, i32* %143)
  br label %145

145:                                              ; preds = %138, %135
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ar9003_mci_state(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ath_mci_flush_profile(i32*) #1

declare dso_local i32 @ar9003_mci_set_bt_version(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ar9003_mci_send_wlan_channels(%struct.ath_hw*) #1

declare dso_local i32 @memcpy(%struct.ath_mci_profile_info*, i32*, i32) #1

declare dso_local i32 @ath_mci_process_profile(%struct.ath_softc*, %struct.ath_mci_profile_info*) #1

declare dso_local i32 @ath_mci_process_status(%struct.ath_softc*, %struct.ath_mci_profile_status*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
