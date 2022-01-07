; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_leds.c_b43_led_get_sprominfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_leds.c_b43_led_get_sprominfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@B43_LED_ACTIVITY = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_COMPAQ = common dso_local global i32 0, align 4
@B43_LED_RADIO_ALL = common dso_local global i32 0, align 4
@B43_LED_RADIO_B = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ASUSTEK = common dso_local global i32 0, align 4
@B43_LED_ASSOC = common dso_local global i32 0, align 4
@B43_LED_RADIO_A = common dso_local global i32 0, align 4
@B43_LED_OFF = common dso_local global i32 0, align 4
@B43_LED_BEHAVIOUR = common dso_local global i32 0, align 4
@B43_LED_ACTIVELOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32*, i32*)* @b43_led_get_sprominfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_led_get_sprominfo(%struct.b43_wldev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %43, %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %46, %48
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %49, %51
  %53 = icmp eq i32 %52, 255
  br i1 %53, label %54, label %97

54:                                               ; preds = %4
  %55 = load i32*, i32** %8, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %92 [
    i32 0, label %57
    i32 1, label %72
    i32 2, label %86
    i32 3, label %89
  ]

57:                                               ; preds = %54
  %58 = load i32, i32* @B43_LED_ACTIVITY, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 1, i32* %60, align 4
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %62 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PCI_VENDOR_ID_COMPAQ, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @B43_LED_RADIO_ALL, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %57
  br label %96

72:                                               ; preds = %54
  %73 = load i32, i32* @B43_LED_RADIO_B, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %76 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PCI_VENDOR_ID_ASUSTEK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @B43_LED_ASSOC, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %72
  br label %96

86:                                               ; preds = %54
  %87 = load i32, i32* @B43_LED_RADIO_A, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %96

89:                                               ; preds = %54
  %90 = load i32, i32* @B43_LED_OFF, align 4
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  br label %96

92:                                               ; preds = %54
  %93 = load i32, i32* @B43_LED_OFF, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = call i32 @B43_WARN_ON(i32 1)
  br label %126

96:                                               ; preds = %89, %86, %85, %71
  br label %126

97:                                               ; preds = %4
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 255
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @B43_LED_OFF, align 4
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %114

106:                                              ; preds = %97
  %107 = load i32, i32* %6, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @B43_LED_BEHAVIOUR, align 4
  %112 = and i32 %110, %111
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %103
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @B43_LED_ACTIVELOW, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load i32*, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %92, %114, %96
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
