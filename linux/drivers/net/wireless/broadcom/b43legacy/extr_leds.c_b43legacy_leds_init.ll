; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_leds.c_b43legacy_leds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_leds.c_b43legacy_leds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@B43legacy_LED_ACTIVITY = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_COMPAQ = common dso_local global i32 0, align 4
@B43legacy_LED_RADIO_ALL = common dso_local global i32 0, align 4
@B43legacy_LED_RADIO_B = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ASUSTEK = common dso_local global i32 0, align 4
@B43legacy_LED_ASSOC = common dso_local global i32 0, align 4
@B43legacy_LED_RADIO_A = common dso_local global i32 0, align 4
@B43legacy_LED_OFF = common dso_local global i32 0, align 4
@B43legacy_LED_BEHAVIOUR = common dso_local global i32 0, align 4
@B43legacy_LED_ACTIVELOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_leds_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %11, align 8
  store %struct.ssb_bus* %12, %struct.ssb_bus** %3, align 8
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %14 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %19 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %29 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %96, %1
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %99

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %73

42:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %70 [
    i32 0, label %44
    i32 1, label %55
    i32 2, label %66
    i32 3, label %68
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @B43legacy_LED_ACTIVITY, align 4
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %46 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %47 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PCI_VENDOR_ID_COMPAQ, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @B43legacy_LED_RADIO_ALL, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %44
  br label %72

55:                                               ; preds = %42
  %56 = load i32, i32* @B43legacy_LED_RADIO_B, align 4
  store i32 %56, i32* %6, align 4
  %57 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %58 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PCI_VENDOR_ID_ASUSTEK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @B43legacy_LED_ASSOC, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %55
  br label %72

66:                                               ; preds = %42
  %67 = load i32, i32* @B43legacy_LED_RADIO_A, align 4
  store i32 %67, i32* %6, align 4
  br label %72

68:                                               ; preds = %42
  %69 = load i32, i32* @B43legacy_LED_OFF, align 4
  store i32 %69, i32* %6, align 4
  br label %72

70:                                               ; preds = %42
  %71 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %99

72:                                               ; preds = %68, %66, %65, %54
  br label %90

73:                                               ; preds = %36
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @B43legacy_LED_BEHAVIOUR, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @B43legacy_LED_ACTIVELOW, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %73, %72
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @b43legacy_map_led(%struct.b43legacy_wldev* %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %33

99:                                               ; preds = %70, %33
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_map_led(%struct.b43legacy_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
