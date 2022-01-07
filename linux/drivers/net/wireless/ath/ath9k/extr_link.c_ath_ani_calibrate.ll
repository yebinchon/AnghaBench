; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_ani_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_link.c_ath_ani_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ath_common = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }
%struct.ath_softc = type { i32, i32, i32, i32, %struct.ath_hw* }
%struct.ath_hw = type { i64, i64, i64, i32, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ani = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@jiffies = common dso_local global i64 0, align 8
@NFCAL_INTF = common dso_local global i32 0, align 4
@ATH_LONG_CALINTERVAL_INT = common dso_local global i32 0, align 4
@ATH_LONG_CALINTERVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@ATH_AP_SHORT_CALINTERVAL = common dso_local global i32 0, align 4
@ATH_STA_SHORT_CALINTERVAL = common dso_local global i32 0, align 4
@ATH9K_PM_AWAKE = common dso_local global i64 0, align 8
@ATH_ANI_MAX_SKIP_COUNT = common dso_local global i64 0, align 8
@PS_WAIT_FOR_ANI = common dso_local global i32 0, align 4
@ATH_RESTART_CALINTERVAL = common dso_local global i32 0, align 4
@RESET_TYPE_CALIBRATION = common dso_local global i32 0, align 4
@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Calibration @%lu finished: %s %s %s, caldone: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ani\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@PAPRD_DONE = common dso_local global i32 0, align 4
@common = common dso_local global %struct.ath_common* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_ani_calibrate(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %15 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %16 = ptrtoint %struct.ath_common* %15 to i32
  %17 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ani, i32 0, i32 0), align 4
  %19 = call %struct.ath_common* @from_timer(i32 %16, %struct.timer_list* %17, i32 %18)
  store %struct.ath_common* %19, %struct.ath_common** %3, align 8
  %20 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %21 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ath_softc*
  store %struct.ath_softc* %23, %struct.ath_softc** %4, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 4
  %26 = load %struct.ath_hw*, %struct.ath_hw** %25, align 8
  store %struct.ath_hw* %26, %struct.ath_hw** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %27 = load i64, i64* @jiffies, align 8
  %28 = call i32 @jiffies_to_msecs(i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load i32, i32* @NFCAL_INTF, align 4
  %35 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = call i64 @test_bit(i32 %34, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @ATH_LONG_CALINTERVAL_INT, align 4
  store i32 %42, i32* %12, align 4
  br label %45

43:                                               ; preds = %33, %1
  %44 = load i32, i32* @ATH_LONG_CALINTERVAL, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ATH_AP_SHORT_CALINTERVAL, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @ATH_STA_SHORT_CALINTERVAL, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %11, align 4
  %57 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 4
  %59 = load %struct.ath_hw*, %struct.ath_hw** %58, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATH9K_PM_AWAKE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %55
  %65 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* @ATH_ANI_MAX_SKIP_COUNT, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %73 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %72, i32 0, i32 2
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load i32, i32* @PS_WAIT_FOR_ANI, align 4
  %77 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %71, %64
  br label %262

86:                                               ; preds = %55
  %87 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %88 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %90 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %89, i32 0, i32 2
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load i32, i32* @PS_WAIT_FOR_ANI, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 2
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %104 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %103)
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %107 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub i32 %105, %109
  %111 = load i32, i32* %12, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %86
  store i32 1, i32* %6, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %116 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  br label %118

118:                                              ; preds = %113, %86
  %119 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %120 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %143, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %127 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sub i32 %125, %129
  %131 = load i32, i32* %11, align 4
  %132 = icmp uge i32 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %124
  store i32 1, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %136 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %140 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %133, %124
  br label %170

143:                                              ; preds = %118
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %146 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sub i32 %144, %148
  %150 = load i32, i32* @ATH_RESTART_CALINTERVAL, align 4
  %151 = icmp uge i32 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %143
  %153 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %154 = call i32 @ath9k_hw_reset_calvalid(%struct.ath_hw* %153)
  %155 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %156 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 4
  %158 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %159 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %152
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %166 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 4
  br label %168

168:                                              ; preds = %163, %152
  br label %169

169:                                              ; preds = %168, %143
  br label %170

170:                                              ; preds = %169, %142
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %173 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = sub i32 %171, %175
  %177 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %178 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp uge i32 %176, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %170
  store i32 1, i32* %8, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %185 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 4
  store i32 %183, i32* %186, align 8
  br label %187

187:                                              ; preds = %182, %170
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %206

190:                                              ; preds = %187
  %191 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %192 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %191, i32 0, i32 1
  %193 = load i64, i64* %13, align 8
  %194 = call i32 @spin_lock_irqsave(i32* %192, i64 %193)
  %195 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %196 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %197 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ath9k_hw_ani_monitor(%struct.ath_hw* %195, i32 %198)
  %200 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %201 = call i32 @ath_update_survey_stats(%struct.ath_softc* %200)
  %202 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %203 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %202, i32 0, i32 1
  %204 = load i64, i64* %13, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  br label %206

206:                                              ; preds = %190, %187
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %236

212:                                              ; preds = %209, %206
  %213 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %214 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %215 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %218 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @ath9k_hw_calibrate(%struct.ath_hw* %213, i32 %216, i32 %219, i32 %220)
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %14, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %212
  %225 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %226 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  store i32 0, i32* %227, align 4
  %228 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %229 = load i32, i32* @RESET_TYPE_CALIBRATION, align 4
  %230 = call i32 @ath9k_queue_reset(%struct.ath_softc* %228, i32 %229)
  br label %325

231:                                              ; preds = %212
  %232 = load i32, i32* %14, align 4
  %233 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %234 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  store i32 %232, i32* %235, align 4
  br label %236

236:                                              ; preds = %231, %209
  %237 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %238 = load i32, i32* @ANI, align 4
  %239 = load i64, i64* @jiffies, align 8
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %248 = load i32, i32* %8, align 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %252 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %253 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %259 = call i32 @ath_dbg(%struct.ath_common* %237, i32 %238, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %239, i8* %243, i8* %247, i8* %251, i8* %258)
  %260 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %261 = call i32 @ath9k_ps_restore(%struct.ath_softc* %260)
  br label %262

262:                                              ; preds = %236, %85
  %263 = load i32, i32* @ATH_LONG_CALINTERVAL, align 4
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %266 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @min(i32 %264, i32 %268)
  store i32 %269, i32* %10, align 4
  %270 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %271 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %262
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %11, align 4
  %278 = call i32 @min(i32 %276, i32 %277)
  store i32 %278, i32* %10, align 4
  br label %279

279:                                              ; preds = %275, %262
  %280 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %281 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 5
  %283 = load i64, i64* @jiffies, align 8
  %284 = load i32, i32* %10, align 4
  %285 = call i64 @msecs_to_jiffies(i32 %284)
  %286 = add nsw i64 %283, %285
  %287 = call i32 @mod_timer(i32* %282, i64 %286)
  %288 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %289 = call i64 @ar9003_is_paprd_enabled(%struct.ath_hw* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %325

291:                                              ; preds = %279
  %292 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %293 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %292, i32 0, i32 4
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  %295 = icmp ne %struct.TYPE_7__* %294, null
  br i1 %295, label %296, label %325

296:                                              ; preds = %291
  %297 = load i32, i32* @PAPRD_DONE, align 4
  %298 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %299 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %298, i32 0, i32 4
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = call i64 @test_bit(i32 %297, i32* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %311, label %304

304:                                              ; preds = %296
  %305 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %306 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %309 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %308, i32 0, i32 0
  %310 = call i32 @ieee80211_queue_work(i32 %307, i32* %309)
  br label %324

311:                                              ; preds = %296
  %312 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %313 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %311
  %317 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %318 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %317)
  %319 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %320 = call i32 @ath_paprd_activate(%struct.ath_softc* %319)
  %321 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %322 = call i32 @ath9k_ps_restore(%struct.ath_softc* %321)
  br label %323

323:                                              ; preds = %316, %311
  br label %324

324:                                              ; preds = %323, %304
  br label %325

325:                                              ; preds = %224, %324, %291, %279
  ret void
}

declare dso_local %struct.ath_common* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_reset_calvalid(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_monitor(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_update_survey_stats(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_calibrate(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ath9k_queue_reset(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @ar9003_is_paprd_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @ath_paprd_activate(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
