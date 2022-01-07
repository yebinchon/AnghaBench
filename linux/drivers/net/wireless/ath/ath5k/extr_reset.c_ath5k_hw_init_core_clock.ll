; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_init_core_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_init_core_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i64, i64, i64, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath_common = type { i32 }

@AR5K_USEC_1 = common dso_local global i32 0, align 4
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_DCU_GBL_IFS_MISC = common dso_local global i32 0, align 4
@AR5K_DCU_GBL_IFS_MISC_USEC_DUR = common dso_local global i32 0, align 4
@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_RF2413 = common dso_local global i64 0, align 8
@AR5K_RF5413 = common dso_local global i64 0, align 8
@AR5K_RF2316 = common dso_local global i64 0, align 8
@AR5K_RF2317 = common dso_local global i64 0, align 8
@AR5K_USEC_32 = common dso_local global i32 0, align 4
@AR5K_USEC_5211 = common dso_local global i32 0, align 4
@AR5K_USEC_TX_LATENCY_5211 = common dso_local global i32 0, align 4
@AR5K_USEC_RX_LATENCY_5211 = common dso_local global i32 0, align 4
@AR5K_INIT_TXF2TXD_START_DEFAULT = common dso_local global i32 0, align 4
@AR5K_INIT_TX_LATENCY_5210 = common dso_local global i32 0, align 4
@AR5K_INIT_RX_LATENCY_5210 = common dso_local global i32 0, align 4
@AR5K_SREV_AR5211 = common dso_local global i64 0, align 8
@AR5K_USEC_TX_LATENCY_5210 = common dso_local global i32 0, align 4
@AR5K_USEC_RX_LATENCY_5210 = common dso_local global i32 0, align 4
@AR5K_INIT_RX_LAT_MAX = common dso_local global i32 0, align 4
@AR5K_INIT_TXF2TXD_START_DELAY_10MHZ = common dso_local global i32 0, align 4
@AR5K_INIT_TXF2TXD_START_DELAY_5MHZ = common dso_local global i32 0, align 4
@AR5K_INIT_TX_LAT_MIN = common dso_local global i32 0, align 4
@AR5K_USEC = common dso_local global i32 0, align 4
@AR5K_PHY_RF_CTL2 = common dso_local global i32 0, align 4
@AR5K_PHY_RF_CTL2_TXF2TXD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*)* @ath5k_hw_init_core_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_hw_init_core_clock(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 4
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  store %struct.ieee80211_channel* %14, %struct.ieee80211_channel** %3, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %16 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %4, align 8
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %23 [
    i32 130, label %20
    i32 129, label %21
    i32 128, label %22
  ]

20:                                               ; preds = %1
  store i32 40, i32* %9, align 4
  br label %24

21:                                               ; preds = %1
  store i32 22, i32* %9, align 4
  br label %24

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %1, %22
  store i32 44, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %21, %20
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %37 [
    i32 132, label %28
    i32 133, label %31
    i32 131, label %34
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %9, align 4
  br label %38

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %35, 4
  store i32 %36, i32* %9, align 4
  br label %38

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %34, %31, %28
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %41 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @AR5K_USEC_1, align 4
  %46 = call i32 @AR5K_REG_SM(i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AR5K_AR5210, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %54 = load i32, i32* @AR5K_DCU_GBL_IFS_MISC, align 4
  %55 = load i32, i32* @AR5K_DCU_GBL_IFS_MISC_USEC_DUR, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %38
  %59 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AR5K_RF5112, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %88, label %64

64:                                               ; preds = %58
  %65 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %66 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AR5K_RF2413, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %88, label %70

70:                                               ; preds = %64
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AR5K_RF5413, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %78 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AR5K_RF2316, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %84 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AR5K_RF2317, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %76, %70, %64, %58
  store i32 39, i32* %10, align 4
  br label %90

89:                                               ; preds = %82
  store i32 31, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @AR5K_USEC_32, align 4
  %93 = call i32 @AR5K_REG_SM(i32 %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %95 = load i32, i32* @AR5K_USEC_5211, align 4
  %96 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @AR5K_USEC_TX_LATENCY_5211, align 4
  %99 = call i32 @AR5K_REG_MS(i32 %97, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @AR5K_USEC_RX_LATENCY_5211, align 4
  %102 = call i32 @AR5K_REG_MS(i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @AR5K_INIT_TXF2TXD_START_DEFAULT, align 4
  store i32 %103, i32* %11, align 4
  %104 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %105 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AR5K_AR5210, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %90
  %110 = load i32, i32* @AR5K_INIT_TX_LATENCY_5210, align 4
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @AR5K_INIT_RX_LATENCY_5210, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %90
  %113 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %114 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @AR5K_USEC_TX_LATENCY_5210, align 4
  %121 = call i32 @AR5K_REG_SM(i32 %119, i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @AR5K_USEC_RX_LATENCY_5210, align 4
  %124 = call i32 @AR5K_REG_SM(i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  br label %156

125:                                              ; preds = %112
  %126 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %127 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %154 [
    i32 133, label %129
    i32 131, label %138
    i32 132, label %147
  ]

129:                                              ; preds = %125
  %130 = load i32, i32* %6, align 4
  %131 = mul nsw i32 %130, 2
  %132 = load i32, i32* @AR5K_USEC_TX_LATENCY_5211, align 4
  %133 = call i32 @AR5K_REG_SM(i32 %131, i32 %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* @AR5K_INIT_RX_LAT_MAX, align 4
  %135 = load i32, i32* @AR5K_USEC_RX_LATENCY_5211, align 4
  %136 = call i32 @AR5K_REG_SM(i32 %134, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* @AR5K_INIT_TXF2TXD_START_DELAY_10MHZ, align 4
  store i32 %137, i32* %11, align 4
  br label %155

138:                                              ; preds = %125
  %139 = load i32, i32* %6, align 4
  %140 = mul nsw i32 %139, 4
  %141 = load i32, i32* @AR5K_USEC_TX_LATENCY_5211, align 4
  %142 = call i32 @AR5K_REG_SM(i32 %140, i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* @AR5K_INIT_RX_LAT_MAX, align 4
  %144 = load i32, i32* @AR5K_USEC_RX_LATENCY_5211, align 4
  %145 = call i32 @AR5K_REG_SM(i32 %143, i32 %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* @AR5K_INIT_TXF2TXD_START_DELAY_5MHZ, align 4
  store i32 %146, i32* %11, align 4
  br label %155

147:                                              ; preds = %125
  %148 = load i32, i32* @AR5K_INIT_TX_LAT_MIN, align 4
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  %150 = sdiv i32 %149, 2
  %151 = load i32, i32* @AR5K_USEC_RX_LATENCY_5211, align 4
  %152 = call i32 @AR5K_REG_SM(i32 %150, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* @AR5K_INIT_TXF2TXD_START_DEFAULT, align 4
  store i32 %153, i32* %11, align 4
  br label %155

154:                                              ; preds = %125
  br label %155

155:                                              ; preds = %154, %147, %138, %129
  br label %156

156:                                              ; preds = %155, %118
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %5, align 4
  %164 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @AR5K_USEC, align 4
  %167 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %164, i32 %165, i32 %166)
  %168 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %169 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AR5K_RF5112, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %156
  %174 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %175 = load i32, i32* @AR5K_PHY_RF_CTL2, align 4
  %176 = load i32, i32* @AR5K_PHY_RF_CTL2_TXF2TXD_START, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw* %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %173, %156
  ret void
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_BITS(%struct.ath5k_hw*, i32, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_REG_MS(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
