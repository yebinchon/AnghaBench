; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-beacon.c_ath9k_cmn_beacon_config_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-beacon.c_ath9k_cmn_beacon_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i32, i32, i32, i64 }
%struct.ath_common = type { i32 }

@ATH9K_INT_SWBA = common dso_local global i32 0, align 4
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"AP (%s) nexttbtt: %u intval: %u conf_intval: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_cmn_beacon_config_ap(%struct.ath_hw* %0, %struct.ath_beacon_config* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_beacon_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %7, align 8
  %10 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %11 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @TU_TO_USEC(i32 %12)
  %14 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %15 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %18 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = udiv i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = call i32 @ath9k_hw_gettsf64(%struct.ath_hw* %22)
  %24 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %25 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath9k_get_next_tbtt(%struct.ath_hw* %21, i32 %23, i32 %26)
  %28 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %29 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %31 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %47

40:                                               ; preds = %3
  %41 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %49 = load i32, i32* @BEACON, align 4
  %50 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %51 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %56 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %57 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %60 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %5, align 8
  %63 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ath_dbg(%struct.ath_common* %48, i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %58, i32 %61, i32 %64)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i32 @ath9k_get_next_tbtt(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_gettsf64(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
