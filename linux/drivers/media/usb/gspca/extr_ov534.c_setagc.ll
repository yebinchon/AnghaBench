; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_setagc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_setagc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @setagc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setagc(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = call i32 @sccb_reg_read(%struct.gspca_dev* %9, i32 19)
  %11 = or i32 %10, 4
  %12 = call i32 @sccb_reg_write(%struct.gspca_dev* %8, i32 19, i32 %11)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @sccb_reg_read(%struct.gspca_dev* %14, i32 100)
  %16 = or i32 %15, 3
  %17 = call i32 @sccb_reg_write(%struct.gspca_dev* %13, i32 100, i32 %16)
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @sccb_reg_read(%struct.gspca_dev* %20, i32 19)
  %22 = and i32 %21, -5
  %23 = call i32 @sccb_reg_write(%struct.gspca_dev* %19, i32 19, i32 %22)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @sccb_reg_read(%struct.gspca_dev* %25, i32 100)
  %27 = and i32 %26, -4
  %28 = call i32 @sccb_reg_write(%struct.gspca_dev* %24, i32 100, i32 %27)
  br label %29

29:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @sccb_reg_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sccb_reg_read(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
