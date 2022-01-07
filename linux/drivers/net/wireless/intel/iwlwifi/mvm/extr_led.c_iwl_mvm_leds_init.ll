; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_led.c_iwl_mvm_leds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_led.c_iwl_mvm_leds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [44 x i8] c"Blink led mode not supported, used default\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Led disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s-led\00", align 1
@iwl_led_brightness_set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to enable led\0A\00", align 1
@IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_leds_init(%struct.iwl_mvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %15 [
    i32 131, label %8
    i32 130, label %11
    i32 128, label %11
    i32 129, label %12
  ]

8:                                                ; preds = %1
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = call i32 @IWL_ERR(%struct.iwl_mvm* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %1, %1, %8
  store i32 128, i32* %4, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %14 = call i32 @IWL_INFO(%struct.iwl_mvm* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %73

18:                                               ; preds = %11
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wiphy_name(i32 %24)
  %26 = call i32 @kasprintf(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @iwl_led_brightness_set, align 4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %47

39:                                               ; preds = %18
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = call i32 @ieee80211_get_radio_led_name(%struct.TYPE_8__* %42)
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %18
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 1
  %55 = call i32 @led_classdev_register(i32 %52, %struct.TYPE_6__* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %47
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @kfree(i32 %62)
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %65 = call i32 @IWL_INFO(%struct.iwl_mvm* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %73

67:                                               ; preds = %47
  %68 = load i32, i32* @IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE, align 4
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %67, %58, %15, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @ieee80211_get_radio_led_name(%struct.TYPE_8__*) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
