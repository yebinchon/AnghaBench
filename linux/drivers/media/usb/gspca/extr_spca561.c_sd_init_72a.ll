; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_sd_init_72a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_sd_init_72a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Chip revision: 072a\0A\00", align 1
@rev72a_reset = common dso_local global i32 0, align 4
@rev72a_init_data1 = common dso_local global i32 0, align 4
@rev72a_init_sensor1 = common dso_local global i32 0, align 4
@rev72a_init_data2 = common dso_local global i32 0, align 4
@rev72a_init_sensor2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_72a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_72a(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = load i32, i32* @D_STREAM, align 4
  %5 = call i32 @gspca_dbg(%struct.gspca_dev* %3, i32 %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load i32, i32* @rev72a_reset, align 4
  %8 = call i32 @write_vector(%struct.gspca_dev* %6, i32 %7)
  %9 = call i32 @msleep(i32 200)
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = load i32, i32* @rev72a_init_data1, align 4
  %12 = call i32 @write_vector(%struct.gspca_dev* %10, i32 %11)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = load i32, i32* @rev72a_init_sensor1, align 4
  %15 = call i32 @write_sensor_72a(%struct.gspca_dev* %13, i32 %14)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = load i32, i32* @rev72a_init_data2, align 4
  %18 = call i32 @write_vector(%struct.gspca_dev* %16, i32 %17)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32, i32* @rev72a_init_sensor2, align 4
  %21 = call i32 @write_sensor_72a(%struct.gspca_dev* %19, i32 %20)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @reg_w_val(%struct.gspca_dev* %22, i32 33042, i32 48)
  ret i32 0
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @write_sensor_72a(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
