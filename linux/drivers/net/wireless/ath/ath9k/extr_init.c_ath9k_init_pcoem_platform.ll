; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_pcoem_platform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_pcoem_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_5__, %struct.ath_hw* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ath_hw = type { %struct.TYPE_6__, %struct.ath9k_hw_capabilities }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_hw_capabilities = type { i32 }
%struct.ath_common = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@CONFIG_ATH9K_PCOEM = common dso_local global i32 0, align 4
@ATH_PCI = common dso_local global i64 0, align 8
@ATH9K_PCI_CUS198 = common dso_local global i32 0, align 4
@ATH9K_PCI_CUS230 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Set parameters for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CUS198\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CUS230\00", align 1
@ATH9K_PCI_CUS217 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"CUS217 card detected\0A\00", align 1
@ATH9K_PCI_CUS252 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"CUS252 card detected\0A\00", align 1
@ATH9K_PCI_AR9565_1ANT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"WB335 1-ANT card detected\0A\00", align 1
@ATH9K_PCI_AR9565_2ANT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"WB335 2-ANT card detected\0A\00", align 1
@ATH9K_PCI_KILLER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Killer Wireless card detected\0A\00", align 1
@ATH9K_PCI_BT_ANT_DIV = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_BT_ANT_DIV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Set BT/WLAN RX diversity capability\0A\00", align 1
@ATH9K_PCI_D3_L1_WAR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Enable WAR for ASPM D3/L1\0A\00", align 1
@ATH9K_PCI_NO_PLL_PWRSAVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"Disable PLL PowerSave\0A\00", align 1
@ATH9K_PCI_LED_ACT_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_init_pcoem_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_init_pcoem_platform(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_hw_capabilities*, align 8
  %5 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 2
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 1
  store %struct.ath9k_hw_capabilities* %10, %struct.ath9k_hw_capabilities** %4, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %5, align 8
  %13 = load i32, i32* @CONFIG_ATH9K_PCOEM, align 4
  %14 = call i32 @IS_ENABLED(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %193

17:                                               ; preds = %1
  %18 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %19 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ATH_PCI, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %193

26:                                               ; preds = %17
  %27 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATH9K_PCI_CUS198, align 4
  %31 = load i32, i32* @ATH9K_PCI_CUS230, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %26
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 9, i32* %38, align 4
  %39 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 1, i32* %44, align 4
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i32 768904, i32* %47, align 4
  %48 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 20, i32* %50, align 4
  %51 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 3, i32* %53, align 4
  %54 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %55 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %56 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ATH9K_PCI_CUS198, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %35, %26
  %65 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ATH9K_PCI_CUS217, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %73 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ATH9K_PCI_CUS252, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %83 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ATH9K_PCI_AR9565_1ANT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %93 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %84
  %95 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %96 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ATH9K_PCI_AR9565_2ANT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %103 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %94
  %105 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %106 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ATH9K_PCI_KILLER, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %113 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %104
  %115 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %116 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ATH9K_PCI_AR9565_1ANT, align 4
  %119 = load i32, i32* @ATH9K_PCI_AR9565_2ANT, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %125 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ATH9K_PCI_BT_ANT_DIV, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %134 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %130, %123
  br label %138

138:                                              ; preds = %137, %114
  %139 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %140 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ATH9K_PCI_BT_ANT_DIV, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load i32, i32* @ATH9K_HW_CAP_BT_ANT_DIV, align 4
  %147 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %148 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %152 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %151, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %153

153:                                              ; preds = %145, %138
  %154 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %155 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ATH9K_PCI_D3_L1_WAR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %162 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  store i32 4212539, i32* %163, align 4
  %164 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %165 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %166

166:                                              ; preds = %160, %153
  %167 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %168 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 5
  store i32 1, i32* %169, align 4
  %170 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %171 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ATH9K_PCI_NO_PLL_PWRSAVE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %166
  %177 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %178 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 5
  store i32 0, i32* %179, align 4
  %180 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %181 = call i32 (%struct.ath_common*, i8*, ...) @ath_info(%struct.ath_common* %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %182

182:                                              ; preds = %176, %166
  %183 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %184 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ATH9K_PCI_LED_ACT_HI, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %191 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 6
  store i32 1, i32* %192, align 4
  br label %193

193:                                              ; preds = %16, %25, %189, %182
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @ath_info(%struct.ath_common*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
