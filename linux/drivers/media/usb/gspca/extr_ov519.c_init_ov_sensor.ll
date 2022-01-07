; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_init_ov_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_init_ov_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.gspca_dev = type { i32 }

@i2c_detect_tries = common dso_local global i32 0, align 4
@OV7610_REG_ID_HIGH = common dso_local global i32 0, align 4
@OV7610_REG_ID_LOW = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"I2C synced in %d attempt(s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @init_ov_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ov_sensor(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sd*, %struct.sd** %4, align 8
  %9 = bitcast %struct.sd* %8 to %struct.gspca_dev*
  store %struct.gspca_dev* %9, %struct.gspca_dev** %7, align 8
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ov51x_set_slave_ids(%struct.sd* %10, i32 %11)
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = call i32 @i2c_w(%struct.sd* %13, i32 18, i32 128)
  %15 = call i32 @msleep(i32 150)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %44, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @i2c_detect_tries, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load %struct.sd*, %struct.sd** %4, align 8
  %22 = load i32, i32* @OV7610_REG_ID_HIGH, align 4
  %23 = call i64 @i2c_r(%struct.sd* %21, i32 %22)
  %24 = icmp eq i64 %23, 127
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = load i32, i32* @OV7610_REG_ID_LOW, align 4
  %28 = call i64 @i2c_r(%struct.sd* %26, i32 %27)
  %29 = icmp eq i64 %28, 162
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %32 = load i32, i32* @D_PROBE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @gspca_dbg(%struct.gspca_dev* %31, i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %3, align 4
  br label %48

35:                                               ; preds = %25, %20
  %36 = load %struct.sd*, %struct.sd** %4, align 8
  %37 = call i32 @i2c_w(%struct.sd* %36, i32 18, i32 128)
  %38 = call i32 @msleep(i32 150)
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = call i64 @i2c_r(%struct.sd* %39, i32 0)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %48

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %16

47:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %42, %30
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @ov51x_set_slave_ids(%struct.sd*, i32) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
