; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-beacon.c_ath9k_cmn_beacon_config_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-beacon.c_ath9k_cmn_beacon_config_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i32, i32, i32, i32, i8* }
%struct.ath9k_beacon_state = type { i32, i32, i32, i32, i32, i8*, i8* }
%struct.ath_common = type { i32 }

@ATH_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"STA is not yet associated..skipping beacon config\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ATH9K_TSFOOR_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bmiss: %u sleep: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_cmn_beacon_config_sta(%struct.ath_hw* %0, %struct.ath_beacon_config* %1, %struct.ath9k_beacon_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_beacon_config*, align 8
  %7 = alloca %struct.ath9k_beacon_state*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %6, align 8
  store %struct.ath9k_beacon_state* %2, %struct.ath9k_beacon_state** %7, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %8, align 8
  %13 = load i32, i32* @ATH_OP_PRIM_STA_VIF, align 4
  %14 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %15 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %20 = load i32, i32* @BEACON, align 4
  %21 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %19, i32 %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %148

24:                                               ; preds = %3
  %25 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %26 = call i32 @memset(%struct.ath9k_beacon_state* %25, i32 0, i32 40)
  %27 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %28 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %31 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %33 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %36 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %40 = call i32 @ath9k_hw_gettsf64(%struct.ath_hw* %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %44 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @ath9k_get_next_tbtt(%struct.ath_hw* %41, i32 %42, i32 %45)
  %47 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %48 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %50 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @TU_TO_USEC(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %55 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %57 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %60 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %64 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %66 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %69 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %71 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %74 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %76 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %24
  %80 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i8* @ath9k_get_next_tbtt(%struct.ath_hw* %80, i32 %81, i32 %82)
  %84 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %85 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %79, %24
  %87 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %88 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %91 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @DIV_ROUND_UP(i32 %89, i32 %92)
  %94 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %95 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %97 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 15
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %102 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %101, i32 0, i32 2
  store i32 15, i32* %102, align 8
  br label %112

103:                                              ; preds = %86
  %104 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %105 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %110 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %109, i32 0, i32 2
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %103
  br label %112

112:                                              ; preds = %111, %100
  %113 = call i32 @IEEE80211_MS_TO_TU(i32 100)
  %114 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %115 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @roundup(i32 %113, i32 %116)
  %118 = call i8* @TU_TO_USEC(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %121 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %123 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %126 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %112
  %130 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %131 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %134 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %129, %112
  %136 = load i32, i32* @ATH9K_TSFOOR_THRESHOLD, align 4
  %137 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %138 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %140 = load i32, i32* @BEACON, align 4
  %141 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %142 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ath9k_beacon_state*, %struct.ath9k_beacon_state** %7, align 8
  %145 = getelementptr inbounds %struct.ath9k_beacon_state, %struct.ath9k_beacon_state* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %139, i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %146)
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %135, %18
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.ath9k_beacon_state*, i32, i32) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.ath_hw*) #1

declare dso_local i8* @ath9k_get_next_tbtt(%struct.ath_hw*, i32, i32) #1

declare dso_local i8* @TU_TO_USEC(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @IEEE80211_MS_TO_TU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
