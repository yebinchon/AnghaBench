; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_mitigate_mrc_cck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_spur_mitigate_mrc_cck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath9k_channel = type { i32 }

@ar9003_hw_spur_mitigate_mrc_cck.spur_freq = internal constant [4 x i32] [i32 2420, i32 2440, i32 2464, i32 2480], align 16
@AR_PHY_GEN_CTRL = common dso_local global i32 0, align 4
@AR_PHY_GC_DYN2040_PRI_CH = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_YCOK_MAX = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_SPUR_RSSI_THR = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_SPUR_FILTER_TYPE = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT = common dso_local global i32 0, align 4
@AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_spur_mitigate_mrc_cck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_spur_mitigate_mrc_cck(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %15 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %14)
  %16 = call i64* @ar9003_get_spur_chan_ptr(%struct.ath_hw* %13, i32 %15)
  store i64* %16, i64** %12, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i64 @AR_SREV_9485(%struct.ath_hw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = call i64 @AR_SREV_9340(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = call i64 @AR_SREV_9330(%struct.ath_hw* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = call i64 @AR_SREV_9550(%struct.ath_hw* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = call i64 @AR_SREV_9561(%struct.ath_hw* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %32, %28, %24, %20, %2
  %37 = load i64*, i64** %12, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %190

42:                                               ; preds = %36
  store i32 5, i32* %10, align 4
  %43 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %44 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %42
  store i32 19, i32* %9, align 4
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = load i32, i32* @AR_PHY_GEN_CTRL, align 4
  %49 = load i32, i32* @AR_PHY_GC_DYN2040_PRI_CH, align 4
  %50 = call i64 @REG_READ_FIELD(%struct.ath_hw* %47, i32 %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %54 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 10
  store i32 %56, i32* %11, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %59 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 10
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %57, %52
  br label %67

63:                                               ; preds = %42
  store i32 10, i32* %9, align 4
  %64 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %65 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %63, %62
  br label %77

68:                                               ; preds = %32
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = call i64 @AR_SREV_9462(%struct.ath_hw* %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 5, i32 10
  store i32 %73, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %74 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %75 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %68, %67
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %174, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %177

82:                                               ; preds = %78
  %83 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %84 = call i64 @AR_SREV_9462(%struct.ath_hw* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %93

92:                                               ; preds = %89, %86
  br label %174

93:                                               ; preds = %89, %82
  store i32 0, i32* %6, align 4
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = call i64 @AR_SREV_9485(%struct.ath_hw* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %93
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = call i64 @AR_SREV_9340(%struct.ath_hw* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %97
  %102 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %103 = call i64 @AR_SREV_9330(%struct.ath_hw* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %107 = call i64 @AR_SREV_9550(%struct.ath_hw* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %111 = call i64 @AR_SREV_9561(%struct.ath_hw* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %109, %105, %101, %97, %93
  %114 = load i64*, i64** %12, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %120 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %119)
  %121 = call i32 @ath9k_hw_fbin2freq(i64 %118, i32 %120)
  store i32 %121, i32* %5, align 4
  br label %127

122:                                              ; preds = %109
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* @ar9003_hw_spur_mitigate_mrc_cck.spur_freq, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %122, %113
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %5, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  store i32 1, i32* %6, align 4
  %134 = load i32, i32* %5, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %127
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %173

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  %142 = shl i32 %141, 19
  %143 = sdiv i32 %142, 11
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %146, %140
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 1048575
  store i32 %151, i32* %7, align 4
  %152 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %153 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %154 = load i32, i32* @AR_PHY_AGC_CONTROL_YCOK_MAX, align 4
  %155 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %152, i32 %153, i32 %154, i32 7)
  %156 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %157 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %158 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_SPUR_RSSI_THR, align 4
  %159 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %156, i32 %157, i32 %158, i32 127)
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %162 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_SPUR_FILTER_TYPE, align 4
  %163 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %160, i32 %161, i32 %162, i32 2)
  %164 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %165 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %166 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT, align 4
  %167 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %164, i32 %165, i32 %166, i32 1)
  %168 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %169 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %170 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %168, i32 %169, i32 %170, i32 %171)
  br label %190

173:                                              ; preds = %136
  br label %174

174:                                              ; preds = %173, %92
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %78

177:                                              ; preds = %78
  %178 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %179 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %180 = load i32, i32* @AR_PHY_AGC_CONTROL_YCOK_MAX, align 4
  %181 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %178, i32 %179, i32 %180, i32 5)
  %182 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %183 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %184 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_USE_CCK_SPUR_MIT, align 4
  %185 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %182, i32 %183, i32 %184, i32 0)
  %186 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %187 = load i32, i32* @AR_PHY_CCK_SPUR_MIT, align 4
  %188 = load i32, i32* @AR_PHY_CCK_SPUR_MIT_CCK_SPUR_FREQ, align 4
  %189 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %186, i32 %187, i32 %188, i32 0)
  br label %190

190:                                              ; preds = %177, %149, %41
  ret void
}

declare dso_local i64* @ar9003_get_spur_chan_ptr(%struct.ath_hw*, i32) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_fbin2freq(i64, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
