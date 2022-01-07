; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_leds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_leds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@led_mode = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s-led\00", align 1
@il_led_brightness_set = common dso_local global i32 0, align 4
@il_led_blink_set = common dso_local global i32 0, align 4
@IEEE80211_TPT_LEDTRIG_FL_CONNECTED = common dso_local global i32 0, align 4
@il_blink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_leds_init(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %5 = load i32, i32* @led_mode, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 129
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wiphy_name(i32 %20)
  %22 = call i32 @kasprintf(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @il_led_brightness_set, align 4
  %27 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @il_led_blink_set, align 4
  %31 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  switch i32 %37, label %60 [
    i32 129, label %38
    i32 130, label %40
    i32 128, label %52
  ]

38:                                               ; preds = %14
  %39 = call i32 @WARN_ON(i32 1)
  br label %60

40:                                               ; preds = %14
  %41 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* @IEEE80211_TPT_LEDTRIG_FL_CONNECTED, align 4
  %45 = load i32, i32* @il_blink, align 4
  %46 = load i32, i32* @il_blink, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @ieee80211_create_tpt_led_trigger(%struct.TYPE_9__* %43, i32 %44, i32 %45, i32 %47)
  %49 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  br label %60

52:                                               ; preds = %14
  %53 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 3
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @ieee80211_get_radio_led_name(%struct.TYPE_9__* %55)
  %57 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %14, %52, %40, %38
  %61 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %62 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %66 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %65, i32 0, i32 1
  %67 = call i32 @led_classdev_register(i32* %64, %struct.TYPE_8__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %72 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @kfree(i32 %74)
  br label %79

76:                                               ; preds = %60
  %77 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %70
  ret void
}

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_create_tpt_led_trigger(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ieee80211_get_radio_led_name(%struct.TYPE_9__*) #1

declare dso_local i32 @led_classdev_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
