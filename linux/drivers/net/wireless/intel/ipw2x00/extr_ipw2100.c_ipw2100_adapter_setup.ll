; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_adapter_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_adapter_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@IPW_POWER_MODE_CAM = common dso_local global i32 0, align 4
@CFG_STATIC_BSSID = common dso_local global i32 0, align 4
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_adapter_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_adapter_setup(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 1, i32* %5, align 4
  %7 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %9 = call i32 @ipw2100_disable_adapter(%struct.ipw2100_priv* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %187

14:                                               ; preds = %1
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %16 = call i32 @ipw2100_read_mac_address(%struct.ipw2100_priv* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %187

22:                                               ; preds = %14
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ipw2100_set_mac_address(%struct.ipw2100_priv* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %187

30:                                               ; preds = %22
  %31 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %32 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ipw2100_set_port_type(%struct.ipw2100_priv* %31, i64 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %187

43:                                               ; preds = %30
  %44 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IW_MODE_ADHOC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %53 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ipw2100_set_channel(%struct.ipw2100_priv* %52, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %187

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ipw2100_system_config(%struct.ipw2100_priv* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %187

71:                                               ; preds = %63
  %72 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %73 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %74 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ipw2100_set_tx_rates(%struct.ipw2100_priv* %72, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %187

82:                                               ; preds = %71
  %83 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %84 = load i32, i32* @IPW_POWER_MODE_CAM, align 4
  %85 = call i32 @ipw2100_set_power_mode(%struct.ipw2100_priv* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %187

90:                                               ; preds = %82
  %91 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %92 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %93 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ipw2100_set_rts_threshold(%struct.ipw2100_priv* %91, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %187

100:                                              ; preds = %90
  %101 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %102 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CFG_STATIC_BSSID, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %109 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %6, align 8
  br label %112

111:                                              ; preds = %100
  store i32* null, i32** %6, align 8
  br label %112

112:                                              ; preds = %111, %107
  %113 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv* %113, i32* %114, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %187

121:                                              ; preds = %112
  %122 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %123 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %121
  %129 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %130 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %131 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %134 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @ipw2100_set_essid(%struct.ipw2100_priv* %129, i32* %132, i32 %135, i32 %136)
  store i32 %137, i32* %4, align 4
  br label %142

138:                                              ; preds = %121
  %139 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @ipw2100_set_essid(%struct.ipw2100_priv* %139, i32* null, i32 0, i32 %140)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %138, %128
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* %4, align 4
  store i32 %146, i32* %2, align 4
  br label %187

147:                                              ; preds = %142
  %148 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @ipw2100_configure_security(%struct.ipw2100_priv* %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %187

155:                                              ; preds = %147
  %156 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %157 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %156, i32 0, i32 3
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @IW_MODE_ADHOC, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %185

163:                                              ; preds = %155
  %164 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %165 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %166 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @ipw2100_set_ibss_beacon_interval(%struct.ipw2100_priv* %164, i32 %167, i32 %168)
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %187

174:                                              ; preds = %163
  %175 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %176 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %177 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ipw2100_set_tx_power(%struct.ipw2100_priv* %175, i32 %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* %4, align 4
  store i32 %183, i32* %2, align 4
  br label %187

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %155
  %186 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %182, %172, %153, %145, %119, %98, %88, %80, %69, %60, %41, %28, %19, %12
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @ipw2100_disable_adapter(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_read_mac_address(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_set_mac_address(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @ipw2100_set_port_type(%struct.ipw2100_priv*, i64, i32) #1

declare dso_local i32 @ipw2100_set_channel(%struct.ipw2100_priv*, i32, i32) #1

declare dso_local i32 @ipw2100_system_config(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @ipw2100_set_tx_rates(%struct.ipw2100_priv*, i32, i32) #1

declare dso_local i32 @ipw2100_set_power_mode(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @ipw2100_set_rts_threshold(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv*, i32*, i32) #1

declare dso_local i32 @ipw2100_set_essid(%struct.ipw2100_priv*, i32*, i32, i32) #1

declare dso_local i32 @ipw2100_configure_security(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @ipw2100_set_ibss_beacon_interval(%struct.ipw2100_priv*, i32, i32) #1

declare dso_local i32 @ipw2100_set_tx_power(%struct.ipw2100_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
