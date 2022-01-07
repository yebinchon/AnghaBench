; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmi.c_fmi_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmi.c_fmi_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmi = type { i32 }

@RSF16_MINFREQ = common dso_local global i32 0, align 4
@RSF16_MAXFREQ = common dso_local global i32 0, align 4
@fmi_set_pins = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmi*)* @fmi_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmi_set_freq(%struct.fmi* %0) #0 {
  %2 = alloca %struct.fmi*, align 8
  store %struct.fmi* %0, %struct.fmi** %2, align 8
  %3 = load %struct.fmi*, %struct.fmi** %2, align 8
  %4 = getelementptr inbounds %struct.fmi, %struct.fmi* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RSF16_MINFREQ, align 4
  %7 = load i32, i32* @RSF16_MAXFREQ, align 4
  %8 = call i32 @clamp(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.fmi*, %struct.fmi** %2, align 8
  %10 = getelementptr inbounds %struct.fmi, %struct.fmi* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.fmi*, %struct.fmi** %2, align 8
  %12 = getelementptr inbounds %struct.fmi, %struct.fmi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 800
  %15 = mul nsw i32 %14, 800
  %16 = load %struct.fmi*, %struct.fmi** %2, align 8
  %17 = load i32, i32* @fmi_set_pins, align 4
  %18 = call i32 @lm7000_set_freq(i32 %15, %struct.fmi* %16, i32 %17)
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @lm7000_set_freq(i32, %struct.fmi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
