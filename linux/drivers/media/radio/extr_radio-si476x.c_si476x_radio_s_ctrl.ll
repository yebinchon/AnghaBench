; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-si476x.c_si476x_radio_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32 }
%struct.si476x_radio = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32)* }

@SI476X_PROP_AUDIO_PWR_LINE_FILTER = common dso_local global i32 0, align 4
@SI476X_PROP_PWR_HARMONICS_MASK = common dso_local global i32 0, align 4
@SI476X_PROP_PWR_ENABLE_MASK = common dso_local global i32 0, align 4
@SI476X_PROP_PWR_GRID_MASK = common dso_local global i32 0, align 4
@SI476X_PROP_PWR_GRID_50HZ = common dso_local global i32 0, align 4
@SI476X_PROP_PWR_GRID_60HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SI476X_PROP_VALID_RSSI_THRESHOLD = common dso_local global i32 0, align 4
@SI476X_PROP_VALID_SNR_THRESHOLD = common dso_local global i32 0, align 4
@SI476X_PROP_VALID_MAX_TUNE_ERROR = common dso_local global i32 0, align 4
@SI476X_PROP_FM_RDS_INTERRUPT_FIFO_COUNT = common dso_local global i32 0, align 4
@SI476X_PROP_FM_RDS_INTERRUPT_SOURCE = common dso_local global i32 0, align 4
@SI476X_RDSRECV = common dso_local global i32 0, align 4
@SI476X_PROP_FM_RDS_CONFIG = common dso_local global i32 0, align 4
@SI476X_PROP_RDSEN_MASK = common dso_local global i32 0, align 4
@SI476X_PROP_RDSEN = common dso_local global i32 0, align 4
@SI476X_PROP_AUDIO_DEEMPHASIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @si476x_radio_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_radio_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.si476x_radio*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.si476x_radio* @v4l2_ctrl_handler_to_radio(i32 %8)
  store %struct.si476x_radio* %9, %struct.si476x_radio** %5, align 8
  %10 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %11 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = call i32 @si476x_core_lock(%struct.TYPE_10__* %12)
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %257 [
    i32 132, label %17
    i32 138, label %29
    i32 130, label %66
    i32 129, label %77
    i32 131, label %88
    i32 134, label %99
    i32 128, label %200
    i32 133, label %211
  ]

17:                                               ; preds = %1
  %18 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %19 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SI476X_PROP_AUDIO_PWR_LINE_FILTER, align 4
  %24 = load i32, i32* @SI476X_PROP_PWR_HARMONICS_MASK, align 4
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %260

29:                                               ; preds = %1
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %62 [
    i32 135, label %33
    i32 137, label %42
    i32 136, label %52
  ]

33:                                               ; preds = %29
  %34 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %35 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SI476X_PROP_AUDIO_PWR_LINE_FILTER, align 4
  %40 = load i32, i32* @SI476X_PROP_PWR_ENABLE_MASK, align 4
  %41 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %3, align 4
  br label %65

42:                                               ; preds = %29
  %43 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %44 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SI476X_PROP_AUDIO_PWR_LINE_FILTER, align 4
  %49 = load i32, i32* @SI476X_PROP_PWR_GRID_MASK, align 4
  %50 = load i32, i32* @SI476X_PROP_PWR_GRID_50HZ, align 4
  %51 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %65

52:                                               ; preds = %29
  %53 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %54 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SI476X_PROP_AUDIO_PWR_LINE_FILTER, align 4
  %59 = load i32, i32* @SI476X_PROP_PWR_GRID_MASK, align 4
  %60 = load i32, i32* @SI476X_PROP_PWR_GRID_60HZ, align 4
  %61 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %29
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %52, %42, %33
  br label %260

66:                                               ; preds = %1
  %67 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %68 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SI476X_PROP_VALID_RSSI_THRESHOLD, align 4
  %73 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %74 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regmap_write(i32 %71, i32 %72, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %260

77:                                               ; preds = %1
  %78 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %79 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SI476X_PROP_VALID_SNR_THRESHOLD, align 4
  %84 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @regmap_write(i32 %82, i32 %83, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %260

88:                                               ; preds = %1
  %89 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %90 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SI476X_PROP_VALID_MAX_TUNE_ERROR, align 4
  %95 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %96 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @regmap_write(i32 %93, i32 %94, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %260

99:                                               ; preds = %1
  %100 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %101 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = call i32 @si476x_core_is_in_am_receiver_mode(%struct.TYPE_10__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %107 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @regcache_cache_only(i32 %110, i32 1)
  br label %112

112:                                              ; preds = %105, %99
  %113 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %114 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %173

117:                                              ; preds = %112
  %118 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %119 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SI476X_PROP_FM_RDS_INTERRUPT_FIFO_COUNT, align 4
  %124 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %125 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @regmap_write(i32 %122, i32 %123, i32 %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %117
  br label %260

133:                                              ; preds = %117
  %134 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %135 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %133
  %143 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %144 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SI476X_PROP_FM_RDS_INTERRUPT_SOURCE, align 4
  %149 = load i32, i32* @SI476X_RDSRECV, align 4
  %150 = call i32 @regmap_write(i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* %3, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %142
  br label %260

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154, %133
  %156 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %157 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = call i32 @si476x_core_cmd_fm_rds_status(%struct.TYPE_10__* %158, i32 0, i32 1, i32 1, i32* null)
  store i32 %159, i32* %3, align 4
  %160 = load i32, i32* %3, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %260

163:                                              ; preds = %155
  %164 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %165 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SI476X_PROP_FM_RDS_CONFIG, align 4
  %170 = load i32, i32* @SI476X_PROP_RDSEN_MASK, align 4
  %171 = load i32, i32* @SI476X_PROP_RDSEN, align 4
  %172 = call i32 @regmap_update_bits(i32 %168, i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %3, align 4
  br label %186

173:                                              ; preds = %112
  %174 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %175 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @SI476X_PROP_FM_RDS_CONFIG, align 4
  %180 = load i32, i32* @SI476X_PROP_RDSEN_MASK, align 4
  %181 = load i32, i32* @SI476X_PROP_RDSEN, align 4
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 @regmap_update_bits(i32 %178, i32 %179, i32 %180, i32 %184)
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %173, %163
  %187 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %188 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = call i32 @si476x_core_is_in_am_receiver_mode(%struct.TYPE_10__* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %186
  %193 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %194 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %193, i32 0, i32 0
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @regcache_cache_only(i32 %197, i32 0)
  br label %199

199:                                              ; preds = %192, %186
  br label %260

200:                                              ; preds = %1
  %201 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %202 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %201, i32 0, i32 0
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @SI476X_PROP_AUDIO_DEEMPHASIS, align 4
  %207 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %208 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @regmap_write(i32 %205, i32 %206, i32 %209)
  store i32 %210, i32* %3, align 4
  br label %260

211:                                              ; preds = %1
  %212 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %213 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @si476x_phase_diversity_idx_to_mode(i32 %214)
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %4, align 4
  %217 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %218 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %217, i32 0, i32 0
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %216, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %211
  store i32 0, i32* %3, align 4
  br label %260

224:                                              ; preds = %211
  %225 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %226 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %225, i32 0, i32 0
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = call i32 @si476x_core_is_in_am_receiver_mode(%struct.TYPE_10__* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load i32, i32* %4, align 4
  %232 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %233 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %232, i32 0, i32 0
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 1
  store i32 %231, i32* %235, align 4
  store i32 0, i32* %3, align 4
  br label %256

236:                                              ; preds = %224
  %237 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %238 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %237, i32 0, i32 1
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %240, align 8
  %242 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %243 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %242, i32 0, i32 0
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = load i32, i32* %4, align 4
  %246 = call i32 %241(%struct.TYPE_10__* %244, i32 %245)
  store i32 %246, i32* %3, align 4
  %247 = load i32, i32* %3, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %236
  %250 = load i32, i32* %4, align 4
  %251 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %252 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %251, i32 0, i32 0
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  store i32 %250, i32* %254, align 4
  br label %255

255:                                              ; preds = %249, %236
  br label %256

256:                                              ; preds = %255, %230
  br label %260

257:                                              ; preds = %1
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %257, %256, %223, %200, %199, %162, %153, %132, %88, %77, %66, %65, %17
  %261 = load %struct.si476x_radio*, %struct.si476x_radio** %5, align 8
  %262 = getelementptr inbounds %struct.si476x_radio, %struct.si476x_radio* %261, i32 0, i32 0
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %262, align 8
  %264 = call i32 @si476x_core_unlock(%struct.TYPE_10__* %263)
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local %struct.si476x_radio* @v4l2_ctrl_handler_to_radio(i32) #1

declare dso_local i32 @si476x_core_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @si476x_core_is_in_am_receiver_mode(%struct.TYPE_10__*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @si476x_core_cmd_fm_rds_status(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i32 @si476x_phase_diversity_idx_to_mode(i32) #1

declare dso_local i32 @si476x_core_unlock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
