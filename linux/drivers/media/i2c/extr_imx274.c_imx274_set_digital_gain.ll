; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_set_digital_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_set_digital_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stimx274 = type { i32 }

@IMX274_DIGITAL_GAIN_REG = common dso_local global i32 0, align 4
@IMX274_MASK_LSB_4_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stimx274*, i32)* @imx274_set_digital_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx274_set_digital_gain(%struct.stimx274* %0, i32 %1) #0 {
  %3 = alloca %struct.stimx274*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stimx274* %0, %struct.stimx274** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @ffs(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @clamp(i32 %14, i32 0, i32 3)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.stimx274*, %struct.stimx274** %3, align 8
  %17 = load i32, i32* @IMX274_DIGITAL_GAIN_REG, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IMX274_MASK_LSB_4_BITS, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @imx274_write_reg(%struct.stimx274* %16, i32 %17, i32 %20)
  ret i32 %21
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @imx274_write_reg(%struct.stimx274*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
