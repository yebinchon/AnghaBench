; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_tv8532.c_setgain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_tv8532.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@R20_GAIN_G1L = common dso_local global i32 0, align 4
@R22_GAIN_RL = common dso_local global i32 0, align 4
@R24_GAIN_BL = common dso_local global i32 0, align 4
@R26_GAIN_G2L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setgain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = load i32, i32* @R20_GAIN_G1L, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @reg_w2(%struct.gspca_dev* %5, i32 %6, i32 %7)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = load i32, i32* @R22_GAIN_RL, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @reg_w2(%struct.gspca_dev* %9, i32 %10, i32 %11)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = load i32, i32* @R24_GAIN_BL, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @reg_w2(%struct.gspca_dev* %13, i32 %14, i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %18 = load i32, i32* @R26_GAIN_G2L, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @reg_w2(%struct.gspca_dev* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @reg_w2(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
