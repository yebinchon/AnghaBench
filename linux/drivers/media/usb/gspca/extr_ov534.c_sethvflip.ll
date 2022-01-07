; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sethvflip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_sethvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@SENSOR_OV767x = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64, i64)* @sethvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sethvflip(%struct.gspca_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load %struct.sd*, %struct.sd** %7, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SENSOR_OV767x, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = call i32 @sccb_reg_read(%struct.gspca_dev* %17, i32 30)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, -49
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, 32
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, 16
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @sccb_reg_write(%struct.gspca_dev* %33, i32 30, i32 %34)
  br label %56

36:                                               ; preds = %3
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %38 = call i32 @sccb_reg_read(%struct.gspca_dev* %37, i32 12)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, -193
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, 64
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, 128
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @sccb_reg_write(%struct.gspca_dev* %53, i32 12, i32 %54)
  br label %56

56:                                               ; preds = %52, %32
  ret void
}

declare dso_local i32 @sccb_reg_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sccb_reg_write(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
