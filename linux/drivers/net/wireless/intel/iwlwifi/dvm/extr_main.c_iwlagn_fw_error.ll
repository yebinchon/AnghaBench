; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwlagn_fw_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwlagn_fw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.iwl_priv = type { i32, i64, i64, i32, i32, i32, i32 }

@IWL_DL_FW = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IWL_MIN_RELOAD_DURATION = common dso_local global i32 0, align 4
@IWL_MAX_CONTINUE_RELOAD_CNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"BUG_ON, Stop restarting\0A\00", align 1
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Restarting adapter due to uCode error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Detected FW error, but not restarting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i32)* @iwlagn_fw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_fw_error(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @IWL_DL_FW, align 4
  %8 = call i64 @iwl_have_debug_level(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %12 = load i32, i32* @IWL_RXON_CTX_BSS, align 4
  %13 = call i32 @iwl_print_rx_config_cmd(%struct.iwl_priv* %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* @STATUS_FW_ERROR, align 4
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 5
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 6
  %23 = call i32 @iwl_abort_notification_waits(i32* %22)
  %24 = load i32, i32* @STATUS_READY, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 5
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %62, label %30

30:                                               ; preds = %14
  %31 = load i64, i64* @jiffies, align 8
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i32 @jiffies_to_msecs(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IWL_MIN_RELOAD_DURATION, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %30
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IWL_MAX_CONTINUE_RELOAD_CNT, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %56 = call i32 @IWL_ERR(%struct.iwl_priv* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %84

57:                                               ; preds = %44
  br label %61

58:                                               ; preds = %30
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %61, %14
  %63 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 5
  %66 = call i32 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %73 = call i32 @IWL_DEBUG_FW(%struct.iwl_priv* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %78 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %77, i32 0, i32 3
  %79 = call i32 @queue_work(i32 %76, i32* %78)
  br label %83

80:                                               ; preds = %68
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %82 = call i32 @IWL_DEBUG_FW(%struct.iwl_priv* %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %71
  br label %84

84:                                               ; preds = %54, %83, %62
  ret void
}

declare dso_local i64 @iwl_have_debug_level(i32) #1

declare dso_local i32 @iwl_print_rx_config_cmd(%struct.iwl_priv*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwl_abort_notification_waits(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
