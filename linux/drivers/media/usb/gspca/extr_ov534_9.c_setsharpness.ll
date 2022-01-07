; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_setsharpness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_setsharpness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setsharpness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsharpness(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = call i32 @sccb_read(%struct.gspca_dev* %8, i32 66)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = call i32 @sccb_write(%struct.gspca_dev* %10, i32 255, i32 0)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, 64
  %15 = call i32 @sccb_write(%struct.gspca_dev* %12, i32 66, i32 %14)
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = shl i32 1, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @sccb_write(%struct.gspca_dev* %24, i32 63, i32 %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = call i32 @sccb_read(%struct.gspca_dev* %27, i32 66)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = call i32 @sccb_write(%struct.gspca_dev* %29, i32 255, i32 0)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 191
  %34 = call i32 @sccb_write(%struct.gspca_dev* %31, i32 66, i32 %33)
  br label %35

35:                                               ; preds = %23, %7
  ret void
}

declare dso_local i32 @sccb_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sccb_write(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
