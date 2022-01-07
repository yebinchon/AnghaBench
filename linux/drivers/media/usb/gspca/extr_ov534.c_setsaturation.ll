; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_setsaturation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_setsaturation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64 }

@SENSOR_OV767x = common dso_local global i64 0, align 8
@setsaturation.color_tb = internal global [7 x [6 x i64]] [[6 x i64] [i64 66, i64 66, i64 0, i64 17, i64 48, i64 65], [6 x i64] [i64 82, i64 82, i64 0, i64 22, i64 60, i64 82], [6 x i64] [i64 102, i64 102, i64 0, i64 27, i64 75, i64 102], [6 x i64] [i64 128, i64 128, i64 0, i64 34, i64 94, i64 128], [6 x i64] [i64 154, i64 154, i64 0, i64 41, i64 113, i64 154], [6 x i64] [i64 184, i64 184, i64 0, i64 49, i64 135, i64 184], [6 x i64] [i64 221, i64 221, i64 0, i64 59, i64 162, i64 221]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @setsaturation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsaturation(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.sd*, %struct.sd** %5, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SENSOR_OV767x, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([7 x [6 x i64]], [7 x [6 x i64]]* @setsaturation.color_tb, i64 0, i64 0, i64 0))
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 79, %21
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds [7 x [6 x i64]], [7 x [6 x i64]]* @setsaturation.color_tb, i64 0, i64 %23
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x i64], [6 x i64]* %24, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @sccb_reg_write(%struct.gspca_dev* %20, i32 %22, i64 %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %15

33:                                               ; preds = %15
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @sccb_reg_write(%struct.gspca_dev* %35, i32 167, i64 %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @sccb_reg_write(%struct.gspca_dev* %38, i32 168, i64 %39)
  br label %41

41:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @sccb_reg_write(%struct.gspca_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
