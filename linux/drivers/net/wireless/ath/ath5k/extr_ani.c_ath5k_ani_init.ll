; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@AR5K_AR5212 = common dso_local global i64 0, align 8
@ATH5K_ANI_MODE_OFF = common dso_local global i32 0, align 4
@ATH5K_ANI_MODE_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ANI mode %d out of range\00", align 1
@AR5K_SREV_AR2414 = common dso_local global i64 0, align 8
@ATH5K_DEBUG_ANI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ANI off\0A\00", align 1
@ATH5K_ANI_MODE_MANUAL_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"ANI manual low -> high sensitivity\0A\00", align 1
@ATH5K_ANI_MODE_MANUAL_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"ANI manual high -> low sensitivity\0A\00", align 1
@ATH5K_ANI_MAX_NOISE_IMM_LVL = common dso_local global i32 0, align 4
@ATH5K_ANI_MAX_FIRSTEP_LVL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"ANI auto\0A\00", align 1
@AR5K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_ani_init(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AR5K_AR5212, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %155

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ATH5K_ANI_MODE_OFF, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ATH5K_ANI_MODE_AUTO, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %11
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %155

23:                                               ; preds = %15
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 2
  %26 = call i32 @memset(%struct.TYPE_4__* %25, i32 0, i32 8)
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AR5K_SREV_AR2414, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 7, i32* %35, align 8
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 2, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ATH5K_ANI_MODE_OFF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %46 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %47 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %111

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ATH5K_ANI_MODE_MANUAL_LOW, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %54 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %55 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %53, i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %57 = call i32 @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw* %56, i32 0)
  %58 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %59 = call i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw* %58, i32 0)
  %60 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %61 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %60, i32 0)
  %62 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %63 = call i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw* %62, i32 1)
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %65 = call i32 @ath5k_ani_set_cck_weak_signal_detection(%struct.ath5k_hw* %64, i32 1)
  br label %110

66:                                               ; preds = %48
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @ATH5K_ANI_MODE_MANUAL_HIGH, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %72 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %73 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %71, i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %75 = load i32, i32* @ATH5K_ANI_MAX_NOISE_IMM_LVL, align 4
  %76 = call i32 @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw* %74, i32 %75)
  %77 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %78 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %79 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw* %77, i32 %81)
  %83 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %84 = load i32, i32* @ATH5K_ANI_MAX_FIRSTEP_LVL, align 4
  %85 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %83, i32 %84)
  %86 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %87 = call i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw* %86, i32 0)
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %89 = call i32 @ath5k_ani_set_cck_weak_signal_detection(%struct.ath5k_hw* %88, i32 0)
  br label %109

90:                                               ; preds = %66
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @ATH5K_ANI_MODE_AUTO, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %96 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %97 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %95, i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %99 = call i32 @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw* %98, i32 0)
  %100 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %101 = call i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw* %100, i32 0)
  %102 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %103 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %102, i32 0)
  %104 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %105 = call i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw* %104, i32 1)
  %106 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %107 = call i32 @ath5k_ani_set_cck_weak_signal_detection(%struct.ath5k_hw* %106, i32 0)
  br label %108

108:                                              ; preds = %94, %90
  br label %109

109:                                              ; preds = %108, %70
  br label %110

110:                                              ; preds = %109, %52
  br label %111

111:                                              ; preds = %110, %44
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @ATH5K_ANI_MODE_AUTO, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %117 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %123 = call i32 @ath5k_enable_phy_err_counters(%struct.ath5k_hw* %122)
  br label %131

124:                                              ; preds = %115
  %125 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %126 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %127 = call i32 @ath5k_hw_get_rx_filter(%struct.ath5k_hw* %126)
  %128 = load i32, i32* @AR5K_RX_FILTER_PHYERR, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw* %125, i32 %129)
  br label %131

131:                                              ; preds = %124, %121
  br label %150

132:                                              ; preds = %111
  %133 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %134 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %140 = call i32 @ath5k_disable_phy_err_counters(%struct.ath5k_hw* %139)
  br label %149

141:                                              ; preds = %132
  %142 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %143 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %144 = call i32 @ath5k_hw_get_rx_filter(%struct.ath5k_hw* %143)
  %145 = load i32, i32* @AR5K_RX_FILTER_PHYERR, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  %148 = call i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw* %142, i32 %147)
  br label %149

149:                                              ; preds = %141, %138
  br label %150

150:                                              ; preds = %149, %131
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %153 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %150, %19, %10
  ret void
}

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*) #1

declare dso_local i32 @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_ani_set_cck_weak_signal_detection(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_enable_phy_err_counters(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_get_rx_filter(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_disable_phy_err_counters(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
