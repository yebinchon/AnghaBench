; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ATH_STAT_INVALID = common dso_local global i32 0, align 4
@ATH_AHB = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@ATH5K_DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"status 0x%x/0x%x\0A\00", align 1
@AR5K_INT_FATAL = common dso_local global i32 0, align 4
@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fatal int, resetting\0A\00", align 1
@AR5K_INT_RXORN = common dso_local global i32 0, align 4
@AR5K_SREV_AR5212 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"rx overrun, resetting\0A\00", align 1
@AR5K_INT_SWBA = common dso_local global i32 0, align 4
@AR5K_INT_RXEOL = common dso_local global i32 0, align 4
@AR5K_INT_TXURN = common dso_local global i32 0, align 4
@AR5K_INT_RXOK = common dso_local global i32 0, align 4
@AR5K_INT_RXERR = common dso_local global i32 0, align 4
@AR5K_INT_TXOK = common dso_local global i32 0, align 4
@AR5K_INT_TXDESC = common dso_local global i32 0, align 4
@AR5K_INT_TXERR = common dso_local global i32 0, align 4
@AR5K_INT_TXEOL = common dso_local global i32 0, align 4
@AR5K_INT_MIB = common dso_local global i32 0, align 4
@AR5K_INT_GPIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"too many interrupts, giving up for now\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ath5k_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ath5k_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ath5k_hw*
  store %struct.ath5k_hw* %10, %struct.ath5k_hw** %6, align 8
  store i32 1000, i32* %8, align 4
  %11 = load i32, i32* @ATH_STAT_INVALID, align 4
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %19 = call i64 @ath5k_get_bus_type(%struct.ath5k_hw* %18)
  %20 = load i64, i64* @ATH_AHB, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %24 = call i64 @ath5k_hw_is_intr_pending(%struct.ath5k_hw* %23)
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i1 [ true, %2 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %216

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %187, %36
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %39 = call i32 @ath5k_hw_get_isr(%struct.ath5k_hw* %38, i32* %7)
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %41 = load i32, i32* @ATH5K_DEBUG_INTR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %44 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %40, i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @AR5K_INT_FATAL, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %54 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %55 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %53, i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %57 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %60 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %59, i32 0, i32 6
  %61 = call i32 @ieee80211_queue_work(i32 %58, i32* %60)
  br label %172

62:                                               ; preds = %37
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @AR5K_INT_RXORN, align 4
  %65 = and i32 %63, %64
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %62
  %69 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %70 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %75 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AR5K_SREV_AR5212, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %68
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %81 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %82 = call i32 (%struct.ath5k_hw*, i32, i8*, ...) @ATH5K_DBG(%struct.ath5k_hw* %80, i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %84 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %87 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %86, i32 0, i32 6
  %88 = call i32 @ieee80211_queue_work(i32 %85, i32* %87)
  br label %92

89:                                               ; preds = %68
  %90 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %91 = call i32 @ath5k_schedule_rx(%struct.ath5k_hw* %90)
  br label %92

92:                                               ; preds = %89, %79
  br label %171

93:                                               ; preds = %62
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @AR5K_INT_SWBA, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %100 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %99, i32 0, i32 5
  %101 = call i32 @tasklet_hi_schedule(i32* %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @AR5K_INT_RXEOL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %109 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @AR5K_INT_TXURN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %120 = call i32 @ath5k_hw_update_tx_triglevel(%struct.ath5k_hw* %119, i32 1)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @AR5K_INT_RXOK, align 4
  %124 = load i32, i32* @AR5K_INT_RXERR, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %130 = call i32 @ath5k_schedule_rx(%struct.ath5k_hw* %129)
  br label %131

131:                                              ; preds = %128, %121
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @AR5K_INT_TXOK, align 4
  %134 = load i32, i32* @AR5K_INT_TXDESC, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @AR5K_INT_TXERR, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @AR5K_INT_TXEOL, align 4
  %139 = or i32 %137, %138
  %140 = and i32 %132, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %144 = call i32 @ath5k_schedule_tx(%struct.ath5k_hw* %143)
  br label %145

145:                                              ; preds = %142, %131
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @AR5K_INT_MIB, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %152 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %157 = call i32 @ath5k_hw_update_mib_counters(%struct.ath5k_hw* %156)
  %158 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %159 = call i32 @ath5k_ani_mib_intr(%struct.ath5k_hw* %158)
  br label %160

160:                                              ; preds = %150, %145
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @AR5K_INT_GPIO, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %167 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = call i32 @tasklet_schedule(i32* %168)
  br label %170

170:                                              ; preds = %165, %160
  br label %171

171:                                              ; preds = %170, %92
  br label %172

172:                                              ; preds = %171, %52
  %173 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %174 = call i64 @ath5k_get_bus_type(%struct.ath5k_hw* %173)
  %175 = load i64, i64* @ATH_AHB, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %189

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %181 = call i64 @ath5k_hw_is_intr_pending(%struct.ath5k_hw* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32, i32* %8, align 4
  %185 = add i32 %184, -1
  store i32 %185, i32* %8, align 4
  %186 = icmp ugt i32 %185, 0
  br label %187

187:                                              ; preds = %183, %179
  %188 = phi i1 [ false, %179 ], [ %186, %183 ]
  br i1 %188, label %37, label %189

189:                                              ; preds = %187, %177
  %190 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %191 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %196 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194, %189
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %201 = call i32 @ath5k_set_current_imask(%struct.ath5k_hw* %200)
  br label %202

202:                                              ; preds = %199, %194
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %211 = call i32 @ATH5K_WARN(%struct.ath5k_hw* %210, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %202
  %213 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  %214 = call i32 @ath5k_intr_calibration_poll(%struct.ath5k_hw* %213)
  %215 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %212, %34
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @ath5k_get_bus_type(%struct.ath5k_hw*) #1

declare dso_local i64 @ath5k_hw_is_intr_pending(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_get_isr(%struct.ath5k_hw*, i32*) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, ...) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

declare dso_local i32 @ath5k_schedule_rx(%struct.ath5k_hw*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @ath5k_hw_update_tx_triglevel(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_schedule_tx(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_update_mib_counters(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_ani_mib_intr(%struct.ath5k_hw*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ath5k_set_current_imask(%struct.ath5k_hw*) #1

declare dso_local i32 @ATH5K_WARN(%struct.ath5k_hw*, i8*) #1

declare dso_local i32 @ath5k_intr_calibration_poll(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
