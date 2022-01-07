; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_leds.c_b43_leds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_leds.c_b43_leds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led }
%struct.b43_led = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@B43_MAX_NR_LEDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_leds_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store %struct.b43_led* %11, %struct.b43_led** %3, align 8
  %12 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %13 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = call i64 @b43_is_hw_radio_enabled(%struct.b43_wldev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %29 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %32 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @b43_led_turn_on(%struct.b43_wldev* %27, i32 %30, i32 %33)
  %35 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %36 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %38 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %37, i32 0, i32 3
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  br label %54

40:                                               ; preds = %22, %16
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %43 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %46 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @b43_led_turn_off(%struct.b43_wldev* %41, i32 %44, i32 %47)
  %49 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %50 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %52 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %51, i32 0, i32 3
  %53 = call i32 @atomic_set(i32* %52, i32 0)
  br label %54

54:                                               ; preds = %40, %26
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store %struct.b43_led* %60, %struct.b43_led** %3, align 8
  %61 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %62 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %55
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %68 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %71 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @b43_led_turn_off(%struct.b43_wldev* %66, i32 %69, i32 %72)
  %74 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %75 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %77 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %76, i32 0, i32 3
  %78 = call i32 @atomic_set(i32* %77, i32 0)
  br label %79

79:                                               ; preds = %65, %55
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store %struct.b43_led* %84, %struct.b43_led** %3, align 8
  %85 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %86 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %79
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %92 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %95 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @b43_led_turn_off(%struct.b43_wldev* %90, i32 %93, i32 %96)
  %98 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %99 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %98, i32 0, i32 2
  store i32 0, i32* %99, align 8
  %100 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %101 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %100, i32 0, i32 3
  %102 = call i32 @atomic_set(i32* %101, i32 0)
  br label %103

103:                                              ; preds = %89, %79
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store %struct.b43_led* %108, %struct.b43_led** %3, align 8
  %109 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %110 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %103
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %116 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %119 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @b43_led_turn_off(%struct.b43_wldev* %114, i32 %117, i32 %120)
  %122 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %123 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %122, i32 0, i32 2
  store i32 0, i32* %123, align 8
  %124 = load %struct.b43_led*, %struct.b43_led** %3, align 8
  %125 = getelementptr inbounds %struct.b43_led, %struct.b43_led* %124, i32 0, i32 3
  %126 = call i32 @atomic_set(i32* %125, i32 0)
  br label %127

127:                                              ; preds = %113, %103
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %149, %127
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @B43_MAX_NR_LEDS, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @b43_led_get_sprominfo(%struct.b43_wldev* %133, i32 %134, i32* %5, i32* %6)
  %136 = load i32, i32* %5, align 4
  switch i32 %136, label %147 [
    i32 129, label %137
    i32 128, label %142
  ]

137:                                              ; preds = %132
  %138 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @b43_led_turn_off(%struct.b43_wldev* %138, i32 %139, i32 %140)
  br label %148

142:                                              ; preds = %132
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @b43_led_turn_on(%struct.b43_wldev* %143, i32 %144, i32 %145)
  br label %148

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147, %142, %137
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %4, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %4, align 4
  br label %128

152:                                              ; preds = %128
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  ret void
}

declare dso_local i64 @b43_is_hw_radio_enabled(%struct.b43_wldev*) #1

declare dso_local i32 @b43_led_turn_on(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @b43_led_turn_off(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_led_get_sprominfo(%struct.b43_wldev*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
