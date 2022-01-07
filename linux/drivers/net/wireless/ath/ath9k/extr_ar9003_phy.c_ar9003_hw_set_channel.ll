; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_channel*, i64 }
%struct.ath9k_channel = type { i32 }
%struct.chan_centers = type { i32 }

@AR_PHY_SYNTH_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_SYNTH4 = common dso_local global i32 0, align 4
@AR_PHY_SYNTH4_LONG_SHIFT_SELECT = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_SYNTH7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_set_channel(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.chan_centers, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %15, %struct.ath9k_channel* %16, %struct.chan_centers* %13)
  %18 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %13, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 4800
  br i1 %21, label %22, label %101

22:                                               ; preds = %2
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = call i64 @AR_SREV_9330(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = call i64 @AR_SREV_9485(%struct.ath_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %32 = call i64 @AR_SREV_9531(%struct.ath_hw* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = call i64 @AR_SREV_9550(%struct.ath_hw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = call i64 @AR_SREV_9561(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = call i64 @AR_SREV_9565(%struct.ath_hw* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %42, %38, %34, %30, %26, %22
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 75, i32* %10, align 4
  br label %53

52:                                               ; preds = %46
  store i32 120, i32* %10, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %54, 4
  %56 = load i32, i32* %10, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 4
  %60 = load i32, i32* %10, align 4
  %61 = srem i32 %59, %60
  %62 = mul nsw i32 %61, 131072
  %63 = load i32, i32* %10, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 17
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %11, align 4
  br label %100

69:                                               ; preds = %42
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = call i64 @AR_SREV_9340(%struct.ath_hw* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 2
  %81 = sdiv i32 %80, 75
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %82, 2
  %84 = srem i32 %83, 75
  %85 = mul nsw i32 %84, 131072
  %86 = sdiv i32 %85, 75
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = shl i32 %87, 17
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %11, align 4
  br label %95

91:                                               ; preds = %73
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @CHANSEL_2G(i32 %92)
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %91, %78
  br label %99

96:                                               ; preds = %69
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @CHANSEL_2G(i32 %97)
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %95
  br label %100

100:                                              ; preds = %99, %53
  store i32 1, i32* %5, align 4
  br label %139

101:                                              ; preds = %2
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = call i64 @AR_SREV_9340(%struct.ath_hw* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %101
  %106 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %107 = call i64 @AR_SREV_9550(%struct.ath_hw* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %111 = call i64 @AR_SREV_9531(%struct.ath_hw* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %115 = call i64 @AR_SREV_9561(%struct.ath_hw* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %113, %109, %105, %101
  %118 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %119 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load i32, i32* %8, align 4
  %124 = sdiv i32 %123, 75
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %8, align 4
  %126 = srem i32 %125, 75
  %127 = mul nsw i32 %126, 131072
  %128 = sdiv i32 %127, 75
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %11, align 4
  %130 = shl i32 %129, 17
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %11, align 4
  br label %138

133:                                              ; preds = %117, %113
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @CHANSEL_5G(i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = ashr i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %133, %122
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %100
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  %140 = load i32, i32* %5, align 4
  %141 = shl i32 %140, 29
  store i32 %141, i32* %12, align 4
  %142 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %143 = load i32, i32* @AR_PHY_SYNTH_CONTROL, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @REG_WRITE(%struct.ath_hw* %142, i32 %143, i32 %144)
  %146 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %147 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH4, align 4
  %148 = load i32, i32* @AR_PHY_SYNTH4_LONG_SHIFT_SELECT, align 4
  %149 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %146, i32 %147, i32 %148, i32 1)
  %150 = load i32, i32* %11, align 4
  %151 = shl i32 %150, 2
  %152 = load i32, i32* %6, align 4
  %153 = shl i32 %152, 30
  %154 = or i32 %151, %153
  %155 = load i32, i32* %7, align 4
  %156 = shl i32 %155, 28
  %157 = or i32 %154, %156
  %158 = load i32, i32* %14, align 4
  %159 = shl i32 %158, 31
  %160 = or i32 %157, %159
  store i32 %160, i32* %12, align 4
  %161 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %162 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH7, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @REG_WRITE(%struct.ath_hw* %161, i32 %162, i32 %163)
  store i32 1, i32* %14, align 4
  %165 = load i32, i32* %11, align 4
  %166 = shl i32 %165, 2
  %167 = load i32, i32* %6, align 4
  %168 = shl i32 %167, 30
  %169 = or i32 %166, %168
  %170 = load i32, i32* %7, align 4
  %171 = shl i32 %170, 28
  %172 = or i32 %169, %171
  %173 = load i32, i32* %14, align 4
  %174 = shl i32 %173, 31
  %175 = or i32 %172, %174
  store i32 %175, i32* %12, align 4
  %176 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %177 = load i32, i32* @AR_PHY_65NM_CH0_SYNTH7, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @REG_WRITE(%struct.ath_hw* %176, i32 %177, i32 %178)
  %180 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %181 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %182 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %181, i32 0, i32 0
  store %struct.ath9k_channel* %180, %struct.ath9k_channel** %182, align 8
  ret i32 0
}

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @CHANSEL_2G(i32) #1

declare dso_local i32 @CHANSEL_5G(i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
