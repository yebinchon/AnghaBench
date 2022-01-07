; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_sd_stopN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_sd_stopN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@led_invert = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_stopN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_stopN(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load i64, i64* @led_invert, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 2, i32* %3, align 4
  br label %8

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @pac207_write_reg(%struct.gspca_dev* %9, i32 64, i32 0)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pac207_write_reg(%struct.gspca_dev* %11, i32 65, i32 %12)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @pac207_write_reg(%struct.gspca_dev* %14, i32 15, i32 0)
  ret void
}

declare dso_local i32 @pac207_write_reg(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
