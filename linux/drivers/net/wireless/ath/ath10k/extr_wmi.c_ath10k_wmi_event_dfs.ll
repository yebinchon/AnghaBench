; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_dfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_dfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_phyerr_ev_arg = type { i32, i32*, i32, i32, i32 }
%struct.phyerr_tlv = type { i32, i32, i32 }
%struct.phyerr_radar_report = type { i32 }
%struct.phyerr_fft_report = type { i32 }

@ATH10K_DBG_REGULATORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"wmi event dfs err_code %d rssi %d tsfl 0x%X tsf64 0x%llX len %d\0A\00", align 1
@CONFIG_ATH10K_DFS_CERTIFIED = common dso_local global i32 0, align 4
@pulses_total = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"too short buf for tlv header (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"wmi event dfs tlv_len %d tlv_tag 0x%02X tlv_sig 0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"too short radar pulse summary (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"too short fft report (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_dfs(%struct.ath10k* %0, %struct.wmi_phyerr_ev_arg* %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_phyerr_ev_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.phyerr_tlv*, align 8
  %12 = alloca %struct.phyerr_radar_report*, align 8
  %13 = alloca %struct.phyerr_fft_report*, align 8
  %14 = alloca i32*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_phyerr_ev_arg* %1, %struct.wmi_phyerr_ev_arg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %16 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = load i32, i32* @ATH10K_DBG_REGULATORY, align 4
  %20 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %21 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %24 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %27 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (%struct.ath10k*, i32, i8*, i32, i32, i32, ...) @ath10k_dbg(%struct.ath10k* %18, i32 %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @CONFIG_ATH10K_DFS_CERTIFIED, align 4
  %33 = call i32 @IS_ENABLED(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %139

36:                                               ; preds = %3
  %37 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %38 = load i32, i32* @pulses_total, align 4
  %39 = call i32 @ATH10K_DFS_STAT_INC(%struct.ath10k* %37, i32 %38)
  br label %40

40:                                               ; preds = %131, %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %139

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 12
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ath10k_warn(%struct.ath10k* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %139

55:                                               ; preds = %44
  %56 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %57 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = bitcast i32* %61 to %struct.phyerr_tlv*
  store %struct.phyerr_tlv* %62, %struct.phyerr_tlv** %11, align 8
  %63 = load %struct.phyerr_tlv*, %struct.phyerr_tlv** %11, align 8
  %64 = getelementptr inbounds %struct.phyerr_tlv, %struct.phyerr_tlv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @__le16_to_cpu(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %68 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 12
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32* %73, i32** %14, align 8
  %74 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %75 = load i32, i32* @ATH10K_DBG_REGULATORY, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.phyerr_tlv*, %struct.phyerr_tlv** %11, align 8
  %78 = getelementptr inbounds %struct.phyerr_tlv, %struct.phyerr_tlv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.phyerr_tlv*, %struct.phyerr_tlv** %11, align 8
  %81 = getelementptr inbounds %struct.phyerr_tlv, %struct.phyerr_tlv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.ath10k*, i32, i8*, i32, i32, i32, ...) @ath10k_dbg(%struct.ath10k* %74, i32 %75, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i32 %82)
  %84 = load %struct.phyerr_tlv*, %struct.phyerr_tlv** %11, align 8
  %85 = getelementptr inbounds %struct.phyerr_tlv, %struct.phyerr_tlv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %131 [
    i32 129, label %87
    i32 128, label %107
  ]

87:                                               ; preds = %55
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, 12
  %91 = add i64 %90, 4
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ugt i64 %91, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @ath10k_warn(%struct.ath10k* %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %139

99:                                               ; preds = %87
  %100 = load i32*, i32** %14, align 8
  %101 = bitcast i32* %100 to %struct.phyerr_radar_report*
  store %struct.phyerr_radar_report* %101, %struct.phyerr_radar_report** %12, align 8
  %102 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %103 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %104 = load %struct.phyerr_radar_report*, %struct.phyerr_radar_report** %12, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @ath10k_dfs_radar_report(%struct.ath10k* %102, %struct.wmi_phyerr_ev_arg* %103, %struct.phyerr_radar_report* %104, i32 %105)
  br label %131

107:                                              ; preds = %55
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, 12
  %111 = add i64 %110, 4
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ugt i64 %111, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @ath10k_warn(%struct.ath10k* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %139

119:                                              ; preds = %107
  %120 = load i32*, i32** %14, align 8
  %121 = bitcast i32* %120 to %struct.phyerr_fft_report*
  store %struct.phyerr_fft_report* %121, %struct.phyerr_fft_report** %13, align 8
  %122 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %123 = load %struct.wmi_phyerr_ev_arg*, %struct.wmi_phyerr_ev_arg** %5, align 8
  %124 = load %struct.phyerr_fft_report*, %struct.phyerr_fft_report** %13, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @ath10k_dfs_fft_report(%struct.ath10k* %122, %struct.wmi_phyerr_ev_arg* %123, %struct.phyerr_fft_report* %124, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %139

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %55, %130, %99
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 12, %133
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %10, align 4
  br label %40

139:                                              ; preds = %35, %51, %95, %115, %129, %40
  ret void
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @ATH10K_DFS_STAT_INC(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_dfs_radar_report(%struct.ath10k*, %struct.wmi_phyerr_ev_arg*, %struct.phyerr_radar_report*, i32) #1

declare dso_local i32 @ath10k_dfs_fft_report(%struct.ath10k*, %struct.wmi_phyerr_ev_arg*, %struct.phyerr_fft_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
