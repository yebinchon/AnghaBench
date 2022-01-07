; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_set_ifs_intervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_set_ifs_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i64, %struct.ieee80211_supported_band*, %struct.ieee80211_channel* }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_channel = type { i64 }

@AR5K_SLOT_TIME_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_RATE_SUPPORTS_5MHZ = common dso_local global i32 0, align 4
@IEEE80211_RATE_SUPPORTS_10MHZ = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_SLOT_TIME = common dso_local global i32 0, align 4
@AR5K_IFS1_EIFS = common dso_local global i32 0, align 4
@AR5K_IFS1_PIFS = common dso_local global i32 0, align 4
@AR5K_IFS0_DIFS_S = common dso_local global i32 0, align 4
@AR5K_IFS0 = common dso_local global i32 0, align 4
@AR5K_INIT_CARR_SENSE_EN = common dso_local global i32 0, align 4
@AR5K_IFS1_CS_EN_S = common dso_local global i32 0, align 4
@AR5K_IFS1 = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_SLOT = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_EIFS = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_MISC = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_MISC_SIFS_DUR_USEC = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_SIFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_set_ifs_intervals(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  %9 = alloca %struct.ieee80211_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 3
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  store %struct.ieee80211_channel* %24, %struct.ieee80211_channel** %6, align 8
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ult i32 %28, 6
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @AR5K_SLOT_TIME_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %189

37:                                               ; preds = %30
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %39 = call i32 @ath5k_hw_get_default_sifs(%struct.ath5k_hw* %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %41, 2
  %43 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %40, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %54

52:                                               ; preds = %37
  %53 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %56 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %62 [
    i32 128, label %58
    i32 129, label %60
  ]

58:                                               ; preds = %54
  %59 = load i32, i32* @IEEE80211_RATE_SUPPORTS_5MHZ, align 4
  store i32 %59, i32* %16, align 4
  br label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @IEEE80211_RATE_SUPPORTS_10MHZ, align 4
  store i32 %61, i32* %16, align 4
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %16, align 4
  br label %63

63:                                               ; preds = %62, %60, %58
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 2
  %66 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %66, i64 %68
  store %struct.ieee80211_supported_band* %69, %struct.ieee80211_supported_band** %8, align 8
  store %struct.ieee80211_rate* null, %struct.ieee80211_rate** %9, align 8
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %97, %63
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %73 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %70
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %79 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %78, i32 0, i32 1
  %80 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %80, i64 %82
  %84 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %77, %85
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %97

90:                                               ; preds = %76
  %91 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %91, i32 0, i32 1
  %93 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %93, i64 %95
  store %struct.ieee80211_rate* %96, %struct.ieee80211_rate** %9, align 8
  br label %100

97:                                               ; preds = %89
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %70

100:                                              ; preds = %90, %70
  %101 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %9, align 8
  %102 = icmp ne %struct.ieee80211_rate* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i64 @WARN_ON(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %189

110:                                              ; preds = %100
  %111 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %9, align 8
  %114 = call i32 @ath5k_hw_get_frame_duration(%struct.ath5k_hw* %111, i32 %112, i32 10, %struct.ieee80211_rate* %113, i32 0)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %5, align 4
  %119 = mul i32 2, %118
  %120 = add i32 %117, %119
  store i32 %120, i32* %11, align 4
  %121 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %121, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %125 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AR5K_AR5210, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %171

129:                                              ; preds = %110
  %130 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @AR5K_SLOT_TIME, align 4
  %133 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %130, i32 %131, i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @AR5K_IFS1_EIFS, align 4
  %136 = call i32 @AR5K_REG_SM(i32 %134, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %13, align 4
  %139 = add i32 %137, %138
  store i32 %139, i32* %18, align 4
  %140 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %140, i32 %141)
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* @AR5K_IFS1_PIFS, align 4
  %145 = call i32 @AR5K_REG_SM(i32 %143, i32 %144)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %5, align 4
  %148 = mul i32 2, %147
  %149 = add i32 %146, %148
  store i32 %149, i32* %20, align 4
  %150 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %151 = load i32, i32* %20, align 4
  %152 = call i32 @ath5k_hw_htoclock(%struct.ath5k_hw* %150, i32 %151)
  store i32 %152, i32* %21, align 4
  %153 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* @AR5K_IFS0_DIFS_S, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* %14, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @AR5K_IFS0, align 4
  %160 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %153, i32 %158, i32 %159)
  %161 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %12, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @AR5K_INIT_CARR_SENSE_EN, align 4
  %166 = load i32, i32* @AR5K_IFS1_CS_EN_S, align 4
  %167 = shl i32 %165, %166
  %168 = or i32 %164, %167
  %169 = load i32, i32* @AR5K_IFS1, align 4
  %170 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %161, i32 %168, i32 %169)
  store i32 0, i32* %3, align 4
  br label %189

171:                                              ; preds = %110
  %172 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* @AR5K_DCU_GBL_IFS_SLOT, align 4
  %175 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %172, i32 %173, i32 %174)
  %176 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @AR5K_DCU_GBL_IFS_EIFS, align 4
  %179 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %176, i32 %177, i32 %178)
  %180 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %181 = load i32, i32* @AR5K_DCU_GBL_IFS_MISC, align 4
  %182 = load i32, i32* @AR5K_DCU_GBL_IFS_MISC_SIFS_DUR_USEC, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @AR5K_DCU_GBL_IFS_SIFS, align 4
  %188 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %185, i32 %186, i32 %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %171, %129, %107, %34
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @ath5k_hw_htoclock(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_get_default_sifs(%struct.ath5k_hw*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath5k_hw_get_frame_duration(%struct.ath5k_hw*, i32, i32, %struct.ieee80211_rate*, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
