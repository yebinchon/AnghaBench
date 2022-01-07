; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_gpio-ir-tx.c_gpio_ir_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_gpio-ir-tx.c_gpio_ir_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.gpio_ir* }
%struct.gpio_ir = type { i32, i32, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @gpio_ir_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_ir_tx(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_ir*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %15, i32 0, i32 0
  %17 = load %struct.gpio_ir*, %struct.gpio_ir** %16, align 8
  store %struct.gpio_ir* %17, %struct.gpio_ir** %7, align 8
  %18 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %19 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NSEC_PER_SEC, align 4
  %22 = sdiv i32 %21, 100
  %23 = mul nsw i32 %20, %22
  %24 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %25 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DIV_ROUND_CLOSEST(i32 %23, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %29 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 100, %30
  %32 = load i32, i32* @NSEC_PER_SEC, align 4
  %33 = sdiv i32 %32, 100
  %34 = mul nsw i32 %31, %33
  %35 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %36 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DIV_ROUND_CLOSEST(i32 %34, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %40 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = call i32 (...) @ktime_get()
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %137, %3
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %140

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = srem i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ktime_add_us(i32 %53, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (...) @ktime_get()
  %62 = call i32 @ktime_us_delta(i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 10
  br i1 %64, label %65, label %78

65:                                               ; preds = %52
  %66 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %67 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %66, i32 0, i32 1
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 10
  %73 = call i32 @usleep_range(i32 %70, i32 %72)
  %74 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %75 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %74, i32 0, i32 1
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  br label %85

78:                                               ; preds = %52
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @udelay(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %65
  br label %136

86:                                               ; preds = %48
  %87 = load i32, i32* %9, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ktime_add_us(i32 %87, i32 %92)
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %133, %86
  %95 = call i32 (...) @ktime_get()
  %96 = load i32, i32* %14, align 4
  %97 = call i64 @ktime_before(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %94
  %100 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %101 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @gpiod_set_value(i32 %102, i32 1)
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @ktime_add_ns(i32 %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (...) @ktime_get()
  %109 = call i32 @ktime_sub(i32 %107, i32 %108)
  %110 = call i32 @ktime_to_ns(i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @ndelay(i32 %114)
  br label %116

116:                                              ; preds = %113, %99
  %117 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %118 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @gpiod_set_value(i32 %119, i32 0)
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @ktime_add_ns(i32 %121, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 (...) @ktime_get()
  %126 = call i32 @ktime_sub(i32 %124, i32 %125)
  %127 = call i32 @ktime_to_ns(i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %116
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @ndelay(i32 %131)
  br label %133

133:                                              ; preds = %130, %116
  br label %94

134:                                              ; preds = %94
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %134, %85
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %44

140:                                              ; preds = %44
  %141 = load %struct.gpio_ir*, %struct.gpio_ir** %7, align 8
  %142 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %141, i32 0, i32 1
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
