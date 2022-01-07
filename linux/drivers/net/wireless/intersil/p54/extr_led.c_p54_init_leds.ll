; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_led.c_p54_init_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_led.c_p54_init_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32 }

@p54_update_leds = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"assoc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"radio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_init_leds(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %5 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %6 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %5, i32 0, i32 1
  %7 = load i32, i32* @p54_update_leds, align 4
  %8 = call i32 @INIT_DELAYED_WORK(i32* %6, i32 %7)
  %9 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %10 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %11 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ieee80211_get_assoc_led_name(i32 %12)
  %14 = call i32 @p54_register_led(%struct.p54_common* %9, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %21 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ieee80211_get_tx_led_name(i32 %23)
  %25 = call i32 @p54_register_led(%struct.p54_common* %20, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %19
  %31 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %32 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %33 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ieee80211_get_rx_led_name(i32 %34)
  %36 = call i32 @p54_register_led(%struct.p54_common* %31, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %30
  %42 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %43 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %44 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ieee80211_get_radio_led_name(i32 %45)
  %47 = call i32 @p54_register_led(%struct.p54_common* %42, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %41
  %53 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %54 = call i32 @p54_set_leds(%struct.p54_common* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %50, %39, %28, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @p54_register_led(%struct.p54_common*, i32, i8*, i32) #1

declare dso_local i32 @ieee80211_get_assoc_led_name(i32) #1

declare dso_local i32 @ieee80211_get_tx_led_name(i32) #1

declare dso_local i32 @ieee80211_get_rx_led_name(i32) #1

declare dso_local i32 @ieee80211_get_radio_led_name(i32) #1

declare dso_local i32 @p54_set_leds(%struct.p54_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
