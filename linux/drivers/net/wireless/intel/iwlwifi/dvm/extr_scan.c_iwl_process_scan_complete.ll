; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_process_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_process_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@STATUS_SCAN_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Completed scan.\0A\00", align 1
@STATUS_SCAN_ABORTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Aborted scan completed.\0A\00", align 1
@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Scan already completed.\0A\00", align 1
@IWL_SCAN_NORMAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to initiate pending scan: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl_process_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_process_scan_complete(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %5 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %5, i32 0, i32 5
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load i32, i32* @STATUS_SCAN_COMPLETE, align 4
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 3
  %11 = call i32 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %89

14:                                               ; preds = %1
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 4
  %19 = call i32 @cancel_delayed_work(i32* %18)
  %20 = load i32, i32* @STATUS_SCAN_ABORTING, align 4
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 3
  %23 = call i32 @test_and_clear_bit(i32 %20, i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %28 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* @STATUS_SCANNING, align 4
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 3
  %33 = call i32 @test_and_clear_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %37 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %81

38:                                               ; preds = %29
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IWL_SCAN_NORMAL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %44
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp eq %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %77

53:                                               ; preds = %47
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* @IWL_SCAN_NORMAL, align 8
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @iwl_scan_initiate(%struct.iwl_priv* %54, i32 %57, i64 %58, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %53
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  store i32 1, i32* %3, align 4
  br label %77

75:                                               ; preds = %53
  br label %89

76:                                               ; preds = %44, %38
  br label %77

77:                                               ; preds = %76, %71, %52
  %78 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @iwl_complete_scan(%struct.iwl_priv* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %35
  %82 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %83 = call i32 @iwl_is_ready_rf(%struct.iwl_priv* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %89

86:                                               ; preds = %81
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %88 = call i32 @iwlagn_post_scan(%struct.iwl_priv* %87)
  br label %89

89:                                               ; preds = %86, %85, %75, %13
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @iwl_scan_initiate(%struct.iwl_priv*, i32, i64, i32) #1

declare dso_local i32 @iwl_complete_scan(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_is_ready_rf(%struct.iwl_priv*) #1

declare dso_local i32 @iwlagn_post_scan(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
