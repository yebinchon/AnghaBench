; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_update_nfcal_hist_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_update_nfcal_hist_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }
%struct.ath9k_hw_cal_data = type { i32, %struct.ath9k_nfcal_hist* }
%struct.ath9k_nfcal_hist = type { i64, i64, i64, i8** }
%struct.ath_common = type { i32 }
%struct.ath_nf_limits = type { i64 }

@NUM_NF_READINGS = common dso_local global i32 0, align 4
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@ATH9K_NF_CAL_HIST_MAX = common dso_local global i64 0, align 8
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NFmid[%d] (%d) > MAX (%d), %s\0A\00", align 1
@NFCAL_INTF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"not corrected (due to interference)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"correcting to MAX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_hw_cal_data*, i8**)* @ath9k_hw_update_nfcal_hist_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_update_nfcal_hist_buffer(%struct.ath_hw* %0, %struct.ath9k_hw_cal_data* %1, i8** %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_hw_cal_data*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath_nf_limits*, align 8
  %9 = alloca %struct.ath9k_nfcal_hist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_hw_cal_data* %1, %struct.ath9k_hw_cal_data** %5, align 8
  store i8** %2, i8*** %6, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 3
  %19 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %24 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %23, i32 0, i32 1
  %25 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %24, align 8
  store %struct.ath9k_nfcal_hist* %25, %struct.ath9k_nfcal_hist** %9, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ath_nf_limits* @ath9k_hw_get_nf_limits(%struct.ath_hw* %26, i32 %29)
  store %struct.ath_nf_limits* %30, %struct.ath_nf_limits** %8, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %183, %3
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @NUM_NF_READINGS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %186

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IS_CHAN_HT40(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %35
  br label %183

52:                                               ; preds = %45, %41
  %53 = load i8**, i8*** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %58, i64 %60
  %62 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %61, i32 0, i32 3
  %63 = load i8**, i8*** %62, align 8
  %64 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %64, i64 %66
  %68 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8*, i8** %63, i64 %69
  store i8* %57, i8** %70, align 8
  %71 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %71, i64 %73
  %75 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load i64, i64* @ATH9K_NF_CAL_HIST_MAX, align 8
  %79 = icmp uge i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %52
  %81 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %81, i64 %83
  %85 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %52
  %87 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %87, i64 %89
  %91 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %86
  %95 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %95, i64 %97
  %99 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, i64* %99, align 8
  %102 = load i8**, i8*** %6, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %108, i64 %110
  %112 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %111, i32 0, i32 2
  store i64 %107, i64* %112, align 8
  br label %126

113:                                              ; preds = %86
  %114 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %114, i64 %116
  %118 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %117, i32 0, i32 3
  %119 = load i8**, i8*** %118, align 8
  %120 = call i64 @ath9k_hw_get_nf_hist_mid(i8** %119)
  %121 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %121, i64 %123
  %125 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %124, i32 0, i32 2
  store i64 %120, i64* %125, align 8
  br label %126

126:                                              ; preds = %113, %94
  %127 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %127, i64 %129
  %131 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  br label %183

135:                                              ; preds = %126
  %136 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %136, i64 %138
  %140 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %8, align 8
  %143 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp sgt i64 %141, %144
  br i1 %145, label %146, label %182

146:                                              ; preds = %135
  store i32 1, i32* %10, align 4
  %147 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %148 = load i32, i32* @CALIBRATE, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %150, i64 %152
  %154 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %8, align 8
  %157 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @NFCAL_INTF, align 4
  %160 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %161 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %160, i32 0, i32 0
  %162 = call i64 @test_bit(i32 %159, i32* %161)
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  %166 = call i32 @ath_dbg(%struct.ath_common* %147, i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %149, i64 %155, i64 %158, i8* %165)
  %167 = load i32, i32* @NFCAL_INTF, align 4
  %168 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %169 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %168, i32 0, i32 0
  %170 = call i64 @test_bit(i32 %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %146
  %173 = load %struct.ath_nf_limits*, %struct.ath_nf_limits** %8, align 8
  %174 = getelementptr inbounds %struct.ath_nf_limits, %struct.ath_nf_limits* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %9, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %176, i64 %178
  %180 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %179, i32 0, i32 2
  store i64 %175, i64* %180, align 8
  br label %181

181:                                              ; preds = %172, %146
  br label %182

182:                                              ; preds = %181, %135
  br label %183

183:                                              ; preds = %182, %134, %51
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %31

186:                                              ; preds = %31
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* @NFCAL_INTF, align 4
  %191 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %5, align 8
  %192 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %191, i32 0, i32 0
  %193 = call i32 @clear_bit(i32 %190, i32* %192)
  br label %194

194:                                              ; preds = %189, %186
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.ath_nf_limits* @ath9k_hw_get_nf_limits(%struct.ath_hw*, i32) #1

declare dso_local i32 @IS_CHAN_HT40(i32) #1

declare dso_local i64 @ath9k_hw_get_nf_hist_mid(i8**) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i64, i64, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
