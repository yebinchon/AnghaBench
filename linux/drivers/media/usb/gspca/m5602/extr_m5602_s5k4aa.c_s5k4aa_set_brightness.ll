; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@S5K4AA_PAGE_MAP_2 = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Set brightness to %d\0A\00", align 1
@S5K4AA_PAGE_MAP = common dso_local global i32 0, align 4
@S5K4AA_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @s5k4aa_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4aa_set_brightness(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %6, align 8
  %11 = load i32, i32* @S5K4AA_PAGE_MAP_2, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = load i32, i32* @D_CONF, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @gspca_dbg(%struct.gspca_dev* %12, i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.sd*, %struct.sd** %6, align 8
  %17 = load i32, i32* @S5K4AA_PAGE_MAP, align 4
  %18 = call i32 @m5602_write_sensor(%struct.sd* %16, i32 %17, i32* %7, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %7, align 4
  %26 = load %struct.sd*, %struct.sd** %6, align 8
  %27 = load i32, i32* @S5K4AA_BRIGHTNESS, align 4
  %28 = call i32 @m5602_write_sensor(%struct.sd* %26, i32 %27, i32* %7, i32 1)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
