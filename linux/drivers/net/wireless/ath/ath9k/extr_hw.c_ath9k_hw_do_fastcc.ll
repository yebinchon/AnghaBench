; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_do_fastcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_do_fastcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.ath9k_hw_capabilities }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath9k_channel = type { i64, i32 }
%struct.ath_common = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ATH_PCI = common dso_local global i64 0, align 8
@CHANNEL_HALF = common dso_local global i32 0, align 4
@CHANNEL_QUARTER = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_FCC_BAND_SWITCH = common dso_local global i32 0, align 4
@CHANNEL_HT = common dso_local global i32 0, align 4
@TXIQCAL_DONE = common dso_local global i32 0, align 4
@TXCLCAL_DONE = common dso_local global i32 0, align 4
@RTT_DONE = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FastChannelChange for %d -> %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_do_fastcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_do_fastcc(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_hw_capabilities*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %9)
  store %struct.ath_common* %10, %struct.ath_common** %6, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 3
  store %struct.ath9k_hw_capabilities* %12, %struct.ath9k_hw_capabilities** %7, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call i64 @AR_SREV_9280(%struct.ath_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %18 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ATH_PCI, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %166

25:                                               ; preds = %16, %2
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %166

31:                                               ; preds = %25
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %166

37:                                               ; preds = %31
  %38 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %39 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %166

48:                                               ; preds = %37
  %49 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %55 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %53, %56
  %58 = load i32, i32* @CHANNEL_HALF, align 4
  %59 = load i32, i32* @CHANNEL_QUARTER, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %166

64:                                               ; preds = %48
  %65 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %7, align 8
  %66 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ATH9K_HW_CAP_FCC_BAND_SWITCH, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %64
  %72 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %73 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = xor i32 %74, %79
  %81 = load i32, i32* @CHANNEL_HT, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %166

86:                                               ; preds = %71, %64
  %87 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %88 = call i32 @ath9k_hw_check_alive(%struct.ath_hw* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %166

91:                                               ; preds = %86
  %92 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %93 = call i64 @AR_SREV_9462(%struct.ath_hw* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %91
  %96 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %97 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = icmp ne %struct.TYPE_5__* %98, null
  br i1 %99, label %100, label %125

100:                                              ; preds = %95
  %101 = load i32, i32* @TXIQCAL_DONE, align 4
  %102 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %103 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @test_bit(i32 %101, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %100
  %109 = load i32, i32* @TXCLCAL_DONE, align 4
  %110 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = call i32 @test_bit(i32 %109, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load i32, i32* @RTT_DONE, align 4
  %118 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %119 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = call i32 @test_bit(i32 %117, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116, %108, %100
  br label %166

125:                                              ; preds = %116, %95, %91
  %126 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %127 = load i32, i32* @RESET, align 4
  %128 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %129 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %134 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @ath_dbg(%struct.ath_common* %126, i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %132, i64 %135)
  %137 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %138 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %139 = call i32 @ath9k_hw_channel_change(%struct.ath_hw* %137, %struct.ath9k_channel* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %125
  br label %166

143:                                              ; preds = %125
  %144 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %145 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %149 = call i32 @ar9003_mci_2g5g_switch(%struct.ath_hw* %148, i32 0)
  br label %150

150:                                              ; preds = %147, %143
  %151 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %152 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %153 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %151, %struct.TYPE_6__* %154)
  %156 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %157 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %156, i32 1)
  %158 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %159 = call i64 @AR_SREV_9271(%struct.ath_hw* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %150
  %162 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %163 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %164 = call i32 @ar9002_hw_load_ani_reg(%struct.ath_hw* %162, %struct.ath9k_channel* %163)
  br label %165

165:                                              ; preds = %161, %150
  store i32 0, i32* %3, align 4
  br label %169

166:                                              ; preds = %142, %124, %90, %85, %63, %47, %36, %30, %24
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %166, %165
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_check_alive(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64) #1

declare dso_local i32 @ath9k_hw_channel_change(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_mci_2g5g_switch(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @ar9002_hw_load_ani_reg(%struct.ath_hw*, %struct.ath9k_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
