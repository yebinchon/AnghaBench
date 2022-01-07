; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_setawb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_setawb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@SENSOR_OV772x = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @setawb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setawb(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = call i32 @sccb_reg_read(%struct.gspca_dev* %12, i32 19)
  %14 = or i32 %13, 2
  %15 = call i32 @sccb_reg_write(%struct.gspca_dev* %11, i32 19, i32 %14)
  %16 = load %struct.sd*, %struct.sd** %5, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SENSOR_OV772x, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @sccb_reg_read(%struct.gspca_dev* %23, i32 99)
  %25 = or i32 %24, 192
  %26 = call i32 @sccb_reg_write(%struct.gspca_dev* %22, i32 99, i32 %25)
  br label %27

27:                                               ; preds = %21, %10
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = call i32 @sccb_reg_read(%struct.gspca_dev* %30, i32 19)
  %32 = and i32 %31, -3
  %33 = call i32 @sccb_reg_write(%struct.gspca_dev* %29, i32 19, i32 %32)
  %34 = load %struct.sd*, %struct.sd** %5, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SENSOR_OV772x, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = call i32 @sccb_reg_read(%struct.gspca_dev* %41, i32 99)
  %43 = and i32 %42, -193
  %44 = call i32 @sccb_reg_write(%struct.gspca_dev* %40, i32 99, i32 %43)
  br label %45

45:                                               ; preds = %39, %28
  br label %46

46:                                               ; preds = %45, %27
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
