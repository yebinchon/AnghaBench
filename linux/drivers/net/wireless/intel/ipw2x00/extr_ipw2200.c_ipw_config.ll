; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i8*, i32, %struct.TYPE_7__*, i64, i32, i64, i32, %struct.TYPE_8__, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@bt_coexist = common dso_local global i64 0, align 8
@EEPROM_SKU_CAPABILITY = common dso_local global i64 0, align 8
@EEPROM_SKU_CAP_BT_CHANNEL_SIG = common dso_local global i8 0, align 1
@CFG_BT_COEXISTENCE_SIGNAL_CHNL = common dso_local global i32 0, align 4
@EEPROM_SKU_CAP_BT_OOB = common dso_local global i8 0, align 1
@CFG_BT_COEXISTENCE_OOB = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@STATUS_INIT = common dso_local global i32 0, align 4
@CAP_PRIVACY_ON = common dso_local global i32 0, align 4
@SEC_LEVEL_1 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_config(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i8, align 1
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %6 = call i64 @ipw_set_tx_power(%struct.ipw_priv* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %161

9:                                                ; preds = %1
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ipw_send_adapter_address(%struct.ipw_priv* %10, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %161

19:                                               ; preds = %9
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %20, i32 0, i32 7
  %22 = call i32 @init_sys_config(%struct.TYPE_8__* %21)
  %23 = load i64, i64* @bt_coexist, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %19
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* @EEPROM_SKU_CAPABILITY, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %4, align 1
  %32 = load i8, i8* %4, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @EEPROM_SKU_CAP_BT_CHANNEL_SIG, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load i32, i32* @CFG_BT_COEXISTENCE_SIGNAL_CHNL, align 4
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %25
  %46 = load i8, i8* %4, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @EEPROM_SKU_CAP_BT_OOB, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* @CFG_BT_COEXISTENCE_OOB, align 4
  %54 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %19
  %61 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IW_MODE_ADHOC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  store i32 1, i32* %71, align 4
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %74 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %78 = call i64 @ipw_send_system_config(%struct.ipw_priv* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %161

81:                                               ; preds = %76
  %82 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %83 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %84 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %83, i32 0, i32 6
  %85 = call i32 @init_supported_rates(%struct.ipw_priv* %82, i32* %84)
  %86 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %87 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %88 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %87, i32 0, i32 6
  %89 = call i64 @ipw_send_supported_rates(%struct.ipw_priv* %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %161

92:                                               ; preds = %81
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %94 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %99 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %100 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @ipw_send_rts_threshold(%struct.ipw_priv* %98, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %161

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %92
  %107 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %108 = call i64 @ipw_set_random_seed(%struct.ipw_priv* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %161

111:                                              ; preds = %106
  %112 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %113 = call i64 @ipw_send_host_complete(%struct.ipw_priv* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %161

116:                                              ; preds = %111
  %117 = load i32, i32* @STATUS_INIT, align 4
  %118 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %119 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %123 = call i32 @ipw_led_init(%struct.ipw_priv* %122)
  %124 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %125 = call i32 @ipw_led_radio_on(%struct.ipw_priv* %124)
  %126 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %127 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %129 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CAP_PRIVACY_ON, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %160

134:                                              ; preds = %116
  %135 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %136 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SEC_LEVEL_1, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %134
  %144 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %145 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %144, i32 0, i32 2
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %143
  %151 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %152 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %151, i32 0, i32 2
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %150
  %158 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %159 = call i32 @ipw_set_hwcrypto_keys(%struct.ipw_priv* %158)
  br label %160

160:                                              ; preds = %157, %150, %143, %134, %116
  store i32 0, i32* %2, align 4
  br label %164

161:                                              ; preds = %115, %110, %104, %91, %80, %18, %8
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %161, %160
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @ipw_set_tx_power(%struct.ipw_priv*) #1

declare dso_local i64 @ipw_send_adapter_address(%struct.ipw_priv*, i32) #1

declare dso_local i32 @init_sys_config(%struct.TYPE_8__*) #1

declare dso_local i64 @ipw_send_system_config(%struct.ipw_priv*) #1

declare dso_local i32 @init_supported_rates(%struct.ipw_priv*, i32*) #1

declare dso_local i64 @ipw_send_supported_rates(%struct.ipw_priv*, i32*) #1

declare dso_local i64 @ipw_send_rts_threshold(%struct.ipw_priv*, i64) #1

declare dso_local i64 @ipw_set_random_seed(%struct.ipw_priv*) #1

declare dso_local i64 @ipw_send_host_complete(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_led_init(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_led_radio_on(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_set_hwcrypto_keys(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
