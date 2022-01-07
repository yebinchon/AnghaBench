; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, %struct.ieee80211_hw* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ieee80211_hw = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mt76-%s\00", align 1
@IEEE80211_TPT_LEDTRIG_FL_RADIO = common dso_local global i32 0, align 4
@mt76_tpt_blink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"led-sources\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"led-active-low\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*)* @mt76_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_led_init(%struct.mt76_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  %7 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %12, i32 0, i32 5
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %13, align 8
  store %struct.ieee80211_hw* %14, %struct.ieee80211_hw** %5, align 8
  %15 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %75

27:                                               ; preds = %20, %1
  %28 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @wiphy_name(i32 %33)
  %35 = call i32 @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %43 = load i32, i32* @IEEE80211_TPT_LEDTRIG_FL_RADIO, align 4
  %44 = load i32, i32* @mt76_tpt_blink, align 4
  %45 = load i32, i32* @mt76_tpt_blink, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = call i32 @ieee80211_create_tpt_led_trigger(%struct.ieee80211_hw* %42, i32 %43, i32 %44, i32 %46)
  %48 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %52, %struct.device_node** %4, align 8
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = icmp ne %struct.device_node* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %27
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = call i32 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.device_node*, %struct.device_node** %4, align 8
  %65 = call i32 @of_property_read_bool(%struct.device_node* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %27
  %69 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %72, i32 0, i32 1
  %74 = call i32 @devm_led_classdev_register(%struct.TYPE_3__* %71, %struct.TYPE_4__* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %68, %26
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @wiphy_name(i32) #1

declare dso_local i32 @ieee80211_create_tpt_led_trigger(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
