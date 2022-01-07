; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_cx0342_6810_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_cx0342_6810_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@cx0342_6810_init.reg_init_1 = internal constant [9 x %struct.cmd] [%struct.cmd { i32 130, i32 47 }, %struct.cmd { i32 37, i32 2 }, %struct.cmd { i32 131, i32 0 }, %struct.cmd { i32 129, i32 128 }, %struct.cmd { i32 130, i32 47 }, %struct.cmd { i32 132, i32 225 }, %struct.cmd { i32 132, i32 193 }, %struct.cmd { i32 132, i32 225 }, %struct.cmd { i32 133, i32 0 }], align 16
@cx0342_6810_init.reg_init_2 = internal constant [2 x %struct.cmd] [%struct.cmd { i32 128, i32 72 }, %struct.cmd { i32 133, i32 0 }], align 16
@cx0342_6810_init.sensor_init = internal constant [31 x %struct.cmd] [%struct.cmd { i32 147, i32 7 }, %struct.cmd { i32 160, i32 88 }, %struct.cmd { i32 153, i32 40 }, %struct.cmd { i32 143, i32 40 }, %struct.cmd { i32 145, i32 80 }, %struct.cmd { i32 146, i32 3 }, %struct.cmd { i32 141, i32 255 }, %struct.cmd { i32 142, i32 7 }, %struct.cmd { i32 151, i32 255 }, %struct.cmd { i32 152, i32 7 }, %struct.cmd { i32 139, i32 92 }, %struct.cmd { i32 140, i32 1 }, %struct.cmd { i32 157, i32 252 }, %struct.cmd { i32 158, i32 3 }, %struct.cmd { i32 155, i32 0 }, %struct.cmd { i32 156, i32 0 }, %struct.cmd { i32 136, i32 64 }, %struct.cmd { i32 154, i32 1 }, %struct.cmd { i32 159, i32 0 }, %struct.cmd { i32 136, i32 2 }, %struct.cmd { i32 150, i32 5 }, %struct.cmd { i32 163, i32 0 }, %struct.cmd { i32 162, i32 0 }, %struct.cmd { i32 148, i32 1 }, %struct.cmd { i32 134, i32 11 }, %struct.cmd { i32 144, i32 11 }, %struct.cmd { i32 149, i32 7 }, %struct.cmd { i32 137, i32 64 }, %struct.cmd { i32 138, i32 2 }, %struct.cmd { i32 161, i32 129 }, %struct.cmd { i32 135, i32 1 }], align 16
@tp6810_cx_init_common = common dso_local global %struct.cmd* null, align 8
@TP6800_R12_SIF_ADDR_S = common dso_local global i32 0, align 4
@cx0342_timing_seq = common dso_local global %struct.cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @cx0342_6810_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx0342_6810_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([9 x %struct.cmd], [9 x %struct.cmd]* @cx0342_6810_init.reg_init_1, i64 0, i64 0))
  %5 = call i32 @reg_w_buf(%struct.gspca_dev* %3, %struct.cmd* getelementptr inbounds ([9 x %struct.cmd], [9 x %struct.cmd]* @cx0342_6810_init.reg_init_1, i64 0, i64 0), i32 %4)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load %struct.cmd*, %struct.cmd** @tp6810_cx_init_common, align 8
  %8 = load %struct.cmd*, %struct.cmd** @tp6810_cx_init_common, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.cmd* %8)
  %10 = call i32 @reg_w_buf(%struct.gspca_dev* %6, %struct.cmd* %7, i32 %9)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([2 x %struct.cmd], [2 x %struct.cmd]* @cx0342_6810_init.reg_init_2, i64 0, i64 0))
  %13 = call i32 @reg_w_buf(%struct.gspca_dev* %11, %struct.cmd* getelementptr inbounds ([2 x %struct.cmd], [2 x %struct.cmd]* @cx0342_6810_init.reg_init_2, i64 0, i64 0), i32 %12)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %16 = call i32 @reg_w(%struct.gspca_dev* %14, i32 %15, i32 32)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([31 x %struct.cmd], [31 x %struct.cmd]* @cx0342_6810_init.sensor_init, i64 0, i64 0))
  %19 = call i32 @i2c_w_buf(%struct.gspca_dev* %17, %struct.cmd* getelementptr inbounds ([31 x %struct.cmd], [31 x %struct.cmd]* @cx0342_6810_init.sensor_init, i64 0, i64 0), i32 %18)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = load %struct.cmd*, %struct.cmd** @cx0342_timing_seq, align 8
  %22 = load %struct.cmd*, %struct.cmd** @cx0342_timing_seq, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.cmd* %22)
  %24 = call i32 @i2c_w_buf(%struct.gspca_dev* %20, %struct.cmd* %21, i32 %23)
  ret void
}

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
