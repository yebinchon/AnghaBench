; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-beacon.c_ath9k_cmn_beacon_config_adhoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-beacon.c_ath9k_cmn_beacon_config_adhoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i32, i32, i32, i64, i64 }
%struct.ath_common = type { i32 }

@ATH9K_INT_SWBA = common dso_local global i32 0, align 4
@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"IBSS (%s) nexttbtt: %u intval: %u conf_intval: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_cmn_beacon_config_adhoc(%struct.ath_hw* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %6)
  store %struct.ath_common* %7, %struct.ath_common** %5, align 8
  %8 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %9 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @TU_TO_USEC(i32 %10)
  %12 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %13 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %15 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %20 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %23 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = call i32 @ath9k_hw_gettsf64(%struct.ath_hw* %26)
  %28 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %29 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath9k_get_next_tbtt(%struct.ath_hw* %25, i32 %27, i32 %30)
  %32 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %33 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %24, %18
  %35 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %36 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %52

45:                                               ; preds = %34
  %46 = load i32, i32* @ATH9K_INT_SWBA, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %39
  %53 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %54 = load i32, i32* @BEACON, align 4
  %55 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %56 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %61 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %62 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %65 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %68 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ath_dbg(%struct.ath_common* %53, i32 %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %63, i32 %66, i32 %69)
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
