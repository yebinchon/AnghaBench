; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_join_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_join_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i64, i32, i32, i64, i64, i64, i32, i64, i64, i32, i32, i32, %struct.bss_info* }
%struct.bss_info = type { i64, i32, i64, i64, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@Mac_Mgmt_Mib_Type = common dso_local global i32 0, align 4
@MAC_MGMT_MIB_PS_MODE_POS = common dso_local global i32 0, align 4
@ACTIVE_MODE = common dso_local global i64 0, align 8
@MAC_MGMT_MIB_LISTEN_INTERVAL_POS = common dso_local global i32 0, align 4
@Local_Mib_Type = common dso_local global i32 0, align 4
@LOCAL_MIB_PREAMBLE_TYPE = common dso_local global i32 0, align 4
@STATION_STATE_MGMT_ERROR = common dso_local global i32 0, align 4
@STATION_STATE_JOINNING = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@BSS_TYPE_INFRASTRUCTURE = common dso_local global i32 0, align 4
@BSS_TYPE_AD_HOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, i32)* @atmel_join_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_join_bss(%struct.atmel_private* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bss_info*, align 8
  store %struct.atmel_private* %0, %struct.atmel_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %6, i32 0, i32 12
  %8 = load %struct.bss_info*, %struct.bss_info** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %8, i64 %10
  store %struct.bss_info* %11, %struct.bss_info** %5, align 8
  %12 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %16 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = call i32 @memcpy(i32 %14, i32 %17, i32 %18)
  %20 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %24 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %27 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = call i32 @memcpy(i32 %22, i32 %25, i32 %28)
  %32 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %33 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %38 = call i32 @build_wpa_mib(%struct.atmel_private* %37)
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %41 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IW_MODE_ADHOC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %47 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IW_MODE_ADHOC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %53 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %58 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %60 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %62 = load i32, i32* @Mac_Mgmt_Mib_Type, align 4
  %63 = load i32, i32* @MAC_MGMT_MIB_PS_MODE_POS, align 4
  %64 = load i64, i64* @ACTIVE_MODE, align 8
  %65 = call i32 @atmel_set_mib8(%struct.atmel_private* %61, i32 %62, i32 %63, i64 %64)
  %66 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %67 = load i32, i32* @Mac_Mgmt_Mib_Type, align 4
  %68 = load i32, i32* @MAC_MGMT_MIB_LISTEN_INTERVAL_POS, align 4
  %69 = call i32 @atmel_set_mib16(%struct.atmel_private* %66, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %56, %51, %45, %39
  %71 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %72 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %75 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %77 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 127
  %80 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %81 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %83 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %86 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %88 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %91 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %70
  %95 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %96 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %99 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %101 = load i32, i32* @Local_Mib_Type, align 4
  %102 = load i32, i32* @LOCAL_MIB_PREAMBLE_TYPE, align 4
  %103 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %104 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @atmel_set_mib8(%struct.atmel_private* %100, i32 %101, i32 %102, i64 %105)
  br label %107

107:                                              ; preds = %94, %70
  %108 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %109 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %107
  %113 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %114 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %119 = load i32, i32* @STATION_STATE_MGMT_ERROR, align 4
  %120 = call i32 @atmel_enter_state(%struct.atmel_private* %118, i32 %119)
  %121 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %122 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %121, i32 0, i32 4
  store i64 0, i64* %122, align 8
  br label %156

123:                                              ; preds = %112, %107
  %124 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %125 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load %struct.bss_info*, %struct.bss_info** %5, align 8
  %130 = getelementptr inbounds %struct.bss_info, %struct.bss_info* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %128
  %134 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %135 = load i32, i32* @STATION_STATE_MGMT_ERROR, align 4
  %136 = call i32 @atmel_enter_state(%struct.atmel_private* %134, i32 %135)
  %137 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %138 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %137, i32 0, i32 4
  store i64 0, i64* %138, align 8
  br label %156

139:                                              ; preds = %128, %123
  %140 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %141 = load i32, i32* @STATION_STATE_JOINNING, align 4
  %142 = call i32 @atmel_enter_state(%struct.atmel_private* %140, i32 %141)
  %143 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %144 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @IW_MODE_INFRA, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %150 = load i32, i32* @BSS_TYPE_INFRASTRUCTURE, align 4
  %151 = call i32 @join(%struct.atmel_private* %149, i32 %150)
  br label %156

152:                                              ; preds = %139
  %153 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %154 = load i32, i32* @BSS_TYPE_AD_HOC, align 4
  %155 = call i32 @join(%struct.atmel_private* %153, i32 %154)
  br label %156

156:                                              ; preds = %117, %133, %152, %148
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @build_wpa_mib(%struct.atmel_private*) #1

declare dso_local i32 @atmel_set_mib8(%struct.atmel_private*, i32, i32, i64) #1

declare dso_local i32 @atmel_set_mib16(%struct.atmel_private*, i32, i32, i32) #1

declare dso_local i32 @atmel_enter_state(%struct.atmel_private*, i32) #1

declare dso_local i32 @join(%struct.atmel_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
