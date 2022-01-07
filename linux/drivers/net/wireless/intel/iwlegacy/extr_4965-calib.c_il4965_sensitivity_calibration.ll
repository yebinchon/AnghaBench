; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_sensitivity_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-calib.c_il4965_sensitivity_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.il_sensitivity_data, i64 }
%struct.il_sensitivity_data = type { i64, i64, i64, i64 }
%struct.stats_rx_non_phy = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.stats_rx_phy = type { i32, i32 }
%struct.stats_general_data = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.il_notif_stats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.stats_rx_phy, %struct.stats_rx_phy, %struct.stats_rx_non_phy }

@.str = private unnamed_addr constant [21 x i8] c"<< - not associated\0A\00", align 1
@INTERFERENCE_DATA_AVAILABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"<< invalid data.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"rx_enable_time = %u usecs\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"<< RX Enable Time == 0!\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"cck: fa %u badp %u  ofdm: fa %u badp %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_sensitivity_calibration(%struct.il_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.il_sensitivity_data*, align 8
  %13 = alloca %struct.stats_rx_non_phy*, align 8
  %14 = alloca %struct.stats_rx_phy*, align 8
  %15 = alloca %struct.stats_rx_phy*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.stats_general_data, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.il_sensitivity_data* null, %struct.il_sensitivity_data** %12, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %231

23:                                               ; preds = %2
  %24 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 1
  store %struct.il_sensitivity_data* %25, %struct.il_sensitivity_data** %12, align 8
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = call i32 @il_is_any_associated(%struct.il_priv* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %231

31:                                               ; preds = %23
  %32 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %16, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to %struct.il_notif_stats*
  %38 = getelementptr inbounds %struct.il_notif_stats, %struct.il_notif_stats* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store %struct.stats_rx_non_phy* %39, %struct.stats_rx_non_phy** %13, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to %struct.il_notif_stats*
  %42 = getelementptr inbounds %struct.il_notif_stats, %struct.il_notif_stats* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store %struct.stats_rx_phy* %43, %struct.stats_rx_phy** %14, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = bitcast i8* %44 to %struct.il_notif_stats*
  %46 = getelementptr inbounds %struct.il_notif_stats, %struct.il_notif_stats* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.stats_rx_phy* %47, %struct.stats_rx_phy** %15, align 8
  %48 = load %struct.stats_rx_non_phy*, %struct.stats_rx_non_phy** %13, align 8
  %49 = getelementptr inbounds %struct.stats_rx_non_phy, %struct.stats_rx_non_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INTERFERENCE_DATA_AVAILABLE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %31
  %54 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %231

59:                                               ; preds = %31
  %60 = load %struct.stats_rx_non_phy*, %struct.stats_rx_non_phy** %13, align 8
  %61 = getelementptr inbounds %struct.stats_rx_non_phy, %struct.stats_rx_non_phy* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @le32_to_cpu(i32 %62)
  %64 = ptrtoint i8* %63 to i64
  store i64 %64, i64* %5, align 8
  %65 = load %struct.stats_rx_phy*, %struct.stats_rx_phy** %15, align 8
  %66 = getelementptr inbounds %struct.stats_rx_phy, %struct.stats_rx_phy* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = ptrtoint i8* %68 to i64
  store i64 %69, i64* %6, align 8
  %70 = load %struct.stats_rx_phy*, %struct.stats_rx_phy** %14, align 8
  %71 = getelementptr inbounds %struct.stats_rx_phy, %struct.stats_rx_phy* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le32_to_cpu(i32 %72)
  %74 = ptrtoint i8* %73 to i64
  store i64 %74, i64* %7, align 8
  %75 = load %struct.stats_rx_phy*, %struct.stats_rx_phy** %15, align 8
  %76 = getelementptr inbounds %struct.stats_rx_phy, %struct.stats_rx_phy* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le32_to_cpu(i32 %77)
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* %8, align 8
  %80 = load %struct.stats_rx_phy*, %struct.stats_rx_phy** %14, align 8
  %81 = getelementptr inbounds %struct.stats_rx_phy, %struct.stats_rx_phy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le32_to_cpu(i32 %82)
  %84 = ptrtoint i8* %83 to i64
  store i64 %84, i64* %9, align 8
  %85 = load %struct.stats_rx_non_phy*, %struct.stats_rx_non_phy** %13, align 8
  %86 = getelementptr inbounds %struct.stats_rx_non_phy, %struct.stats_rx_non_phy* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = getelementptr inbounds %struct.stats_general_data, %struct.stats_general_data* %17, i32 0, i32 5
  store i8* %88, i8** %89, align 8
  %90 = load %struct.stats_rx_non_phy*, %struct.stats_rx_non_phy** %13, align 8
  %91 = getelementptr inbounds %struct.stats_rx_non_phy, %struct.stats_rx_non_phy* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = getelementptr inbounds %struct.stats_general_data, %struct.stats_general_data* %17, i32 0, i32 4
  store i8* %93, i8** %94, align 8
  %95 = load %struct.stats_rx_non_phy*, %struct.stats_rx_non_phy** %13, align 8
  %96 = getelementptr inbounds %struct.stats_rx_non_phy, %struct.stats_rx_non_phy* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = getelementptr inbounds %struct.stats_general_data, %struct.stats_general_data* %17, i32 0, i32 3
  store i8* %98, i8** %99, align 8
  %100 = load %struct.stats_rx_non_phy*, %struct.stats_rx_non_phy** %13, align 8
  %101 = getelementptr inbounds %struct.stats_rx_non_phy, %struct.stats_rx_non_phy* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @le32_to_cpu(i32 %102)
  %104 = getelementptr inbounds %struct.stats_general_data, %struct.stats_general_data* %17, i32 0, i32 2
  store i8* %103, i8** %104, align 8
  %105 = load %struct.stats_rx_non_phy*, %struct.stats_rx_non_phy** %13, align 8
  %106 = getelementptr inbounds %struct.stats_rx_non_phy, %struct.stats_rx_non_phy* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le32_to_cpu(i32 %107)
  %109 = getelementptr inbounds %struct.stats_general_data, %struct.stats_general_data* %17, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = load %struct.stats_rx_non_phy*, %struct.stats_rx_non_phy** %13, align 8
  %111 = getelementptr inbounds %struct.stats_rx_non_phy, %struct.stats_rx_non_phy* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @le32_to_cpu(i32 %112)
  %114 = getelementptr inbounds %struct.stats_general_data, %struct.stats_general_data* %17, i32 0, i32 0
  store i8* %113, i8** %114, align 8
  %115 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %116 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %115, i32 0, i32 0
  %117 = load i64, i64* %16, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load i64, i64* %5, align 8
  %120 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %119)
  %121 = load i64, i64* %5, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %59
  %124 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %231

125:                                              ; preds = %59
  %126 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %127 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %134 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %146

135:                                              ; preds = %125
  %136 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %137 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %8, align 8
  %140 = sub nsw i64 %139, %138
  store i64 %140, i64* %8, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %143 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %135, %131
  %147 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %148 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i64, i64* %9, align 8
  %154 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %155 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %167

156:                                              ; preds = %146
  %157 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %158 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %9, align 8
  %161 = sub nsw i64 %160, %159
  store i64 %161, i64* %9, align 8
  %162 = load i64, i64* %9, align 8
  %163 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %164 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, %162
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %156, %152
  %168 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %169 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %7, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load i64, i64* %7, align 8
  %175 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %176 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %175, i32 0, i32 2
  store i64 %174, i64* %176, align 8
  br label %188

177:                                              ; preds = %167
  %178 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %179 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %7, align 8
  %182 = sub nsw i64 %181, %180
  store i64 %182, i64* %7, align 8
  %183 = load i64, i64* %7, align 8
  %184 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %185 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  br label %188

188:                                              ; preds = %177, %173
  %189 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %190 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %6, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i64, i64* %6, align 8
  %196 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %197 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  br label %209

198:                                              ; preds = %188
  %199 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %200 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %6, align 8
  %203 = sub nsw i64 %202, %201
  store i64 %203, i64* %6, align 8
  %204 = load i64, i64* %6, align 8
  %205 = load %struct.il_sensitivity_data*, %struct.il_sensitivity_data** %12, align 8
  %206 = getelementptr inbounds %struct.il_sensitivity_data, %struct.il_sensitivity_data* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %198, %194
  %210 = load i64, i64* %7, align 8
  %211 = load i64, i64* %9, align 8
  %212 = add nsw i64 %210, %211
  store i64 %212, i64* %10, align 8
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* %8, align 8
  %215 = add nsw i64 %213, %214
  store i64 %215, i64* %11, align 8
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* %8, align 8
  %218 = load i64, i64* %7, align 8
  %219 = load i64, i64* %9, align 8
  %220 = call i32 (i8*, ...) @D_CALIB(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %216, i64 %217, i64 %218, i64 %219)
  %221 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %222 = load i64, i64* %10, align 8
  %223 = load i64, i64* %5, align 8
  %224 = call i32 @il4965_sens_auto_corr_ofdm(%struct.il_priv* %221, i64 %222, i64 %223)
  %225 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %226 = load i64, i64* %11, align 8
  %227 = load i64, i64* %5, align 8
  %228 = call i32 @il4965_sens_energy_cck(%struct.il_priv* %225, i64 %226, i64 %227, %struct.stats_general_data* %17)
  %229 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %230 = call i32 @il4965_sensitivity_write(%struct.il_priv* %229)
  br label %231

231:                                              ; preds = %209, %123, %53, %29, %22
  ret void
}

declare dso_local i32 @il_is_any_associated(%struct.il_priv*) #1

declare dso_local i32 @D_CALIB(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @il4965_sens_auto_corr_ofdm(%struct.il_priv*, i64, i64) #1

declare dso_local i32 @il4965_sens_energy_cck(%struct.il_priv*, i64, i64, %struct.stats_general_data*) #1

declare dso_local i32 @il4965_sensitivity_write(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
