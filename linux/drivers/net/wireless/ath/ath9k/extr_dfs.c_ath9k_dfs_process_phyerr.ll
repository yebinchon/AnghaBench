; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dfs.c_ath9k_dfs_process_phyerr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dfs.c_ath9k_dfs_process_phyerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i64, %struct.ath_hw* }
%struct.ath_hw = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ath_rx_status = type { i64, i32, i32*, i32* }
%struct.ath_radar_data = type { i32, i32, i8, i8, i8 }
%struct.pulse_event = type { i32, i64, i32, i64, i32 }
%struct.ath_common = type { i32 }

@pulses_total = common dso_local global i32 0, align 4
@ATH9K_PHYERR_RADAR = common dso_local global i64 0, align 8
@ATH9K_PHYERR_FALSE_RADAR_EXT = common dso_local global i64 0, align 8
@DFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error: rs_phyer=0x%x not a radar error\0A\00", align 1
@pulses_no_dfs = common dso_local global i32 0, align 4
@datalen_discards = common dso_local global i32 0, align 4
@MIN_CHIRP_PULSE_WIDTH = common dso_local global i64 0, align 8
@MAX_CHIRP_PULSE_WIDTH = common dso_local global i64 0, align 8
@PRI_CH_RADAR_FOUND = common dso_local global i32 0, align 4
@EXT_CH_RADAR_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"ath9k_dfs_process_phyerr: type=%d, freq=%d, ts=%llu, width=%d, rssi=%d, delta_ts=%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_dfs_process_phyerr(%struct.ath_softc* %0, i8* %1, %struct.ath_rx_status* %2, i64 %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ath_rx_status*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ath_radar_data, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pulse_event, align 8
  %13 = alloca %struct.ath_hw*, align 8
  %14 = alloca %struct.ath_common*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 1
  %20 = load %struct.ath_hw*, %struct.ath_hw** %19, align 8
  store %struct.ath_hw* %20, %struct.ath_hw** %13, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %22 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %21)
  store %struct.ath_common* %22, %struct.ath_common** %14, align 8
  %23 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %24 = load i32, i32* @pulses_total, align 4
  %25 = call i32 @DFS_STAT_INC(%struct.ath_softc* %23, i32 %24)
  %26 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %27 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ATH9K_PHYERR_RADAR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %4
  %32 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %33 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ATH9K_PHYERR_FALSE_RADAR_EXT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.ath_common*, %struct.ath_common** %14, align 8
  %39 = load i32, i32* @DFS, align 4
  %40 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %41 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %38, i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %46 = load i32, i32* @pulses_no_dfs, align 4
  %47 = call i32 @DFS_STAT_INC(%struct.ath_softc* %45, i32 %46)
  br label %213

48:                                               ; preds = %31, %4
  %49 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %50 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %56 = load i32, i32* @datalen_discards, align 4
  %57 = call i32 @DFS_STAT_INC(%struct.ath_softc* %55, i32 %56)
  br label %213

58:                                               ; preds = %48
  %59 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %60 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %66 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 0
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %58
  %78 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 1
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr i8, i8* %85, i64 %87
  store i8* %88, i8** %11, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 2
  store i8 %91, i8* %92, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 -2
  %95 = load i8, i8* %94, align 1
  %96 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 3
  store i8 %95, i8* %96, align 1
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 -3
  %99 = load i8, i8* %98, align 1
  %100 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 4
  store i8 %99, i8* %100, align 2
  %101 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %102 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 3
  store i64 %107, i64* %108, align 8
  %109 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %110 = call i32 @ath9k_postprocess_radar_event(%struct.ath_softc* %109, %struct.ath_radar_data* %9, %struct.pulse_event* %12)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %84
  br label %213

113:                                              ; preds = %84
  %114 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MIN_CHIRP_PULSE_WIDTH, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MAX_CHIRP_PULSE_WIDTH, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 2
  %125 = load i8, i8* %124, align 4
  %126 = sext i8 %125 to i32
  %127 = load i32, i32* @PRI_CH_RADAR_FOUND, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 2
  %134 = load i8, i8* %133, align 4
  %135 = sext i8 %134 to i32
  %136 = load i32, i32* @EXT_CH_RADAR_FOUND, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 3
  store i32 %143, i32* %17, align 4
  %144 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @ath9k_check_chirping(%struct.ath_softc* %144, i8* %145, i32 %146, i32 %147, i32 %148)
  %150 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 2
  store i32 %149, i32* %150, align 8
  br label %153

151:                                              ; preds = %118, %113
  %152 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 2
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %151, %123
  %154 = load %struct.ath_common*, %struct.ath_common** %14, align 8
  %155 = load i32, i32* @DFS, align 4
  %156 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 2
  %157 = load i8, i8* %156, align 4
  %158 = sext i8 %157 to i32
  %159 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %170 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %168, %171
  %173 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %154, i32 %155, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %160, i64 %162, i64 %164, i32 %166, i64 %172)
  %174 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %177 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 2
  %179 = load i8, i8* %178, align 4
  %180 = sext i8 %179 to i32
  %181 = load i32, i32* @PRI_CH_RADAR_FOUND, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %153
  %185 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %186 = call i32 @ath9k_dfs_process_radar_pulse(%struct.ath_softc* %185, %struct.pulse_event* %12)
  br label %187

187:                                              ; preds = %184, %153
  %188 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %189 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %188, i32 0, i32 0
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = call i64 @IS_CHAN_HT40(%struct.TYPE_3__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.ath_radar_data, %struct.ath_radar_data* %9, i32 0, i32 2
  %195 = load i8, i8* %194, align 4
  %196 = sext i8 %195 to i32
  %197 = load i32, i32* @EXT_CH_RADAR_FOUND, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %193
  %201 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  %202 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %201, i32 0, i32 0
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = call i64 @IS_CHAN_HT40PLUS(%struct.TYPE_3__* %203)
  %205 = icmp ne i64 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 20, i32 -20
  %208 = getelementptr inbounds %struct.pulse_event, %struct.pulse_event* %12, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, %207
  store i32 %210, i32* %208, align 8
  %211 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %212 = call i32 @ath9k_dfs_process_radar_pulse(%struct.ath_softc* %211, %struct.pulse_event* %12)
  br label %213

213:                                              ; preds = %37, %54, %112, %200, %193, %187
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @DFS_STAT_INC(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @ath9k_postprocess_radar_event(%struct.ath_softc*, %struct.ath_radar_data*, %struct.pulse_event*) #1

declare dso_local i32 @ath9k_check_chirping(%struct.ath_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @ath9k_dfs_process_radar_pulse(%struct.ath_softc*, %struct.pulse_event*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_CHAN_HT40PLUS(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
