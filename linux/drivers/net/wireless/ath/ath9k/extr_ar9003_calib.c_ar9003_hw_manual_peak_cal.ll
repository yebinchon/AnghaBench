; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_manual_peak_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_manual_peak_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_GAINSTAGES_LNAON_CALDC = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_GAINSTAGES_LNA2G_GAIN_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_GAINSTAGES_LNA5G_GAIN_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXTX2_RXON_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXTX2_RXON = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_ON_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC2G_DBDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC5G_DBDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_RXRF_AGC_AGC_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32)* @ar9003_hw_manual_peak_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_manual_peak_cal(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = call i64 @AR_SREV_9550(%struct.ath_hw* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %19 = call i64 @AR_SREV_9531(%struct.ath_hw* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %3
  store i32 8, i32* %12, align 4
  br label %28

22:                                               ; preds = %17
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = call i64 @AR_SREV_9561(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 11, i32* %12, align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %30)
  %32 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE, align 4
  %33 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %29, i32 %31, i32 %32, i32 1)
  %34 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %35)
  %37 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_LNAON_CALDC, align 4
  %38 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %34, i32 %36, i32 %37, i32 0)
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = call i64 @AR_SREV_9003_PCOEM(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %28
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = call i64 @AR_SREV_9330_11(%struct.ath_hw* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42, %28
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %51)
  %53 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_LNA2G_GAIN_OVR, align 4
  %54 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %50, i32 %52, i32 %53, i32 0)
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %57)
  %59 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_LNA5G_GAIN_OVR, align 4
  %60 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %56, i32 %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %55, %49
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @AR_PHY_65NM_RXTX2(i32 %64)
  %66 = load i32, i32* @AR_PHY_65NM_RXTX2_RXON_OVR, align 4
  %67 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %63, i32 %65, i32 %66, i32 1)
  %68 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @AR_PHY_65NM_RXTX2(i32 %69)
  %71 = load i32, i32* @AR_PHY_65NM_RXTX2_RXON, align 4
  %72 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %68, i32 %70, i32 %71, i32 0)
  %73 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %74)
  %76 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_OVERRIDE, align 4
  %77 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %73, i32 %75, i32 %76, i32 1)
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %79)
  %81 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_ON_OVR, align 4
  %82 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %78, i32 %80, i32 %81, i32 1)
  %83 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %84)
  %86 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR, align 4
  %87 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %83, i32 %85, i32 %86, i32 1)
  %88 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %89 = call i64 @AR_SREV_9330_11(%struct.ath_hw* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %62
  %92 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %93)
  %95 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %96 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %92, i32 %94, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %91, %62
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %102)
  %104 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_DBDAC_OVR, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %101, i32 %103, i32 %104, i32 %105)
  br label %114

107:                                              ; preds = %97
  %108 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %109)
  %111 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_DBDAC_OVR, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %108, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %100
  store i32 6, i32* %11, align 4
  br label %115

115:                                              ; preds = %170, %114
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %173

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @BIT(i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %125, %129
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %118
  %134 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %135)
  %137 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %134, i32 %136, i32 %137, i32 %138)
  br label %147

140:                                              ; preds = %118
  %141 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %142)
  %144 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %141, i32 %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %140, %133
  %148 = call i32 @udelay(i32 100)
  %149 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %150)
  %152 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_OUT, align 4
  %153 = call i32 @REG_READ_FIELD(%struct.ath_hw* %149, i32 %151, i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 0, i32 1
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %159
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %11, align 4
  %166 = sub nsw i32 %165, 1
  %167 = shl i32 %164, %166
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %147
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %11, align 4
  br label %115

173:                                              ; preds = %115
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %178)
  %180 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC2G_CALDAC_OVR, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %177, i32 %179, i32 %180, i32 %181)
  br label %190

183:                                              ; preds = %173
  %184 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %185)
  %187 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC5G_CALDAC_OVR, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %184, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %183, %176
  %191 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32 %192)
  %194 = load i32, i32* @AR_PHY_65NM_RXRF_GAINSTAGES_RX_OVERRIDE, align 4
  %195 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %191, i32 %193, i32 %194, i32 0)
  %196 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @AR_PHY_65NM_RXTX2(i32 %197)
  %199 = load i32, i32* @AR_PHY_65NM_RXTX2_RXON_OVR, align 4
  %200 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %196, i32 %198, i32 %199, i32 0)
  %201 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @AR_PHY_65NM_RXRF_AGC(i32 %202)
  %204 = load i32, i32* @AR_PHY_65NM_RXRF_AGC_AGC_CAL_OVR, align 4
  %205 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %201, i32 %203, i32 %204, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #2

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #2

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #2

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #2

declare dso_local i32 @AR_PHY_65NM_RXRF_GAINSTAGES(i32) #2

declare dso_local i64 @AR_SREV_9003_PCOEM(%struct.ath_hw*) #2

declare dso_local i64 @AR_SREV_9330_11(%struct.ath_hw*) #2

declare dso_local i32 @AR_PHY_65NM_RXTX2(i32) #2

declare dso_local i32 @AR_PHY_65NM_RXRF_AGC(i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
