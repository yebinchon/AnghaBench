; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_setgain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_setgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setgain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 48
  switch i32 %6, label %20 [
    i32 0, label %7
    i32 16, label %10
    i32 32, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 15
  store i32 %9, i32* %4, align 4
  br label %25

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 15
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, 48
  store i32 %14, i32* %4, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, 112
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, 240
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %15, %10, %7
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @sccb_reg_write(%struct.gspca_dev* %26, i32 0, i32 %27)
  ret void
}

declare dso_local i32 @sccb_reg_write(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
