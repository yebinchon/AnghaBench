; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_channel_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_channel_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.ath9k_hw_capabilities }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i64 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath9k_channel = type { i64 }
%struct.ath_common = type { i32 }

@ATH9K_HW_CAP_FCC_BAND_SWITCH = common dso_local global i32 0, align 4
@CHANNEL_5GHZ = common dso_local global i64 0, align 8
@CHANNEL_HT = common dso_local global i64 0, align 8
@AR_NUM_QCU = common dso_local global i64 0, align 8
@QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Transmit frames pending on queue %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not kill baseband RX\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to do fast channel change\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to set channel\0A\00", align 1
@AH_FASTCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_channel_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_channel_change(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_hw_capabilities*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %6, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 3
  store %struct.ath9k_hw_capabilities* %17, %struct.ath9k_hw_capabilities** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %18 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %7, align 8
  %19 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATH9K_HW_CAP_FCC_BAND_SWITCH, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %2
  %25 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %26 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = xor i64 %27, %32
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @CHANNEL_5GHZ, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @CHANNEL_HT, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %24, %2
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %65, %49
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @AR_NUM_QCU, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i64 @ath9k_hw_numtxpending(%struct.ath_hw* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %61 = load i32, i32* @QUEUE, align 4
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @ath_dbg(%struct.ath_common* %60, i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %62)
  store i32 0, i32* %3, align 4
  br label %166

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %70 = call i32 @ath9k_hw_rfbus_req(%struct.ath_hw* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %74 = call i32 @ath_err(%struct.ath_common* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %166

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78, %75
  %82 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %83 = call i32 @ath9k_hw_mark_phy_inactive(%struct.ath_hw* %82)
  %84 = call i32 @udelay(i32 5)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %89 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %90 = call i32 @ath9k_hw_init_pll(%struct.ath_hw* %88, %struct.ath9k_channel* %89)
  br label %91

91:                                               ; preds = %87, %81
  %92 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %93 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %94 = call i64 @ath9k_hw_fast_chan_change(%struct.ath_hw* %92, %struct.ath9k_channel* %93, i64* %10)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %98 = call i32 @ath_err(%struct.ath_common* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %166

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %102 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %103 = call i32 @ath9k_hw_set_channel_regs(%struct.ath_hw* %101, %struct.ath9k_channel* %102)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %105 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %106 = call i32 @ath9k_hw_rf_set_freq(%struct.ath_hw* %104, %struct.ath9k_channel* %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %111 = call i32 @ath_err(%struct.ath_common* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %166

112:                                              ; preds = %100
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = call i32 @ath9k_hw_set_clockrate(%struct.ath_hw* %113)
  %115 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %116 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %117 = call i32 @ath9k_hw_apply_txpower(%struct.ath_hw* %115, %struct.ath9k_channel* %116, i32 0)
  %118 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %119 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %120 = call i32 @ath9k_hw_set_delta_slope(%struct.ath_hw* %118, %struct.ath9k_channel* %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %122 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %123 = call i32 @ath9k_hw_spur_mitigate_freq(%struct.ath_hw* %121, %struct.ath9k_channel* %122)
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %112
  %127 = load i64, i64* %10, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126, %112
  %130 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %131 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = bitcast {}** %133 to i32 (%struct.ath_hw*, %struct.ath9k_channel*)**
  %135 = load i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i32 (%struct.ath_hw*, %struct.ath9k_channel*)** %134, align 8
  %136 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %137 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %138 = call i32 %135(%struct.ath_hw* %136, %struct.ath9k_channel* %137)
  br label %139

139:                                              ; preds = %129, %126
  %140 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %141 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %142 = call i32 @ath9k_hw_init_bb(%struct.ath_hw* %140, %struct.ath9k_channel* %141)
  %143 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %144 = call i32 @ath9k_hw_rfbus_done(%struct.ath_hw* %143)
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %139
  %148 = load i64, i64* %10, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %147, %139
  %151 = load i32, i32* @AH_FASTCC, align 4
  %152 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %153 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %157 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %158 = call i32 @ath9k_hw_init_cal(%struct.ath_hw* %156, %struct.ath9k_channel* %157)
  %159 = load i32, i32* @AH_FASTCC, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %162 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %150, %147
  store i32 1, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %109, %96, %72, %59
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_numtxpending(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @ath9k_hw_rfbus_req(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_hw_mark_phy_inactive(%struct.ath_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath9k_hw_init_pll(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @ath9k_hw_fast_chan_change(%struct.ath_hw*, %struct.ath9k_channel*, i64*) #1

declare dso_local i32 @ath9k_hw_set_channel_regs(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_rf_set_freq(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_clockrate(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_apply_txpower(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @ath9k_hw_set_delta_slope(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_spur_mitigate_freq(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_init_bb(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_rfbus_done(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_init_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
