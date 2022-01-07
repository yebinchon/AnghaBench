; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_soi763a_6810_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_soi763a_6810_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@soi763a_6810_init.reg_init_1 = internal constant [7 x %struct.cmd] [%struct.cmd { i32 130, i32 47 }, %struct.cmd { i32 132, i32 225 }, %struct.cmd { i32 37, i32 2 }, %struct.cmd { i32 131, i32 0 }, %struct.cmd { i32 129, i32 128 }, %struct.cmd { i32 130, i32 47 }, %struct.cmd { i32 132, i32 193 }], align 16
@soi763a_6810_init.reg_init_2 = internal constant [1 x %struct.cmd] [%struct.cmd { i32 128, i32 84 }], align 4
@soi763a_6810_init.sensor_init = internal constant [128 x %struct.cmd] [%struct.cmd zeroinitializer, %struct.cmd { i32 1, i32 128 }, %struct.cmd { i32 2, i32 128 }, %struct.cmd { i32 3, i32 144 }, %struct.cmd { i32 4, i32 32 }, %struct.cmd { i32 5, i32 32 }, %struct.cmd { i32 6, i32 128 }, %struct.cmd { i32 7, i32 0 }, %struct.cmd { i32 8, i32 255 }, %struct.cmd { i32 9, i32 255 }, %struct.cmd { i32 10, i32 118 }, %struct.cmd { i32 11, i32 48 }, %struct.cmd { i32 12, i32 32 }, %struct.cmd { i32 13, i32 32 }, %struct.cmd { i32 14, i32 255 }, %struct.cmd { i32 15, i32 255 }, %struct.cmd { i32 16, i32 65 }, %struct.cmd { i32 21, i32 20 }, %struct.cmd { i32 17, i32 64 }, %struct.cmd { i32 18, i32 72 }, %struct.cmd { i32 19, i32 128 }, %struct.cmd { i32 20, i32 128 }, %struct.cmd { i32 22, i32 3 }, %struct.cmd { i32 40, i32 176 }, %struct.cmd { i32 113, i32 32 }, %struct.cmd { i32 117, i32 142 }, %struct.cmd { i32 23, i32 27 }, %struct.cmd { i32 24, i32 189 }, %struct.cmd { i32 25, i32 5 }, %struct.cmd { i32 26, i32 246 }, %struct.cmd { i32 27, i32 4 }, %struct.cmd { i32 28, i32 127 }, %struct.cmd { i32 29, i32 162 }, %struct.cmd { i32 30, i32 0 }, %struct.cmd { i32 31, i32 0 }, %struct.cmd { i32 32, i32 69 }, %struct.cmd { i32 33, i32 128 }, %struct.cmd { i32 34, i32 128 }, %struct.cmd { i32 35, i32 238 }, %struct.cmd { i32 36, i32 80 }, %struct.cmd { i32 37, i32 122 }, %struct.cmd { i32 38, i32 160 }, %struct.cmd { i32 39, i32 154 }, %struct.cmd { i32 41, i32 48 }, %struct.cmd { i32 42, i32 128 }, %struct.cmd { i32 43, i32 0 }, %struct.cmd { i32 44, i32 172 }, %struct.cmd { i32 45, i32 5 }, %struct.cmd { i32 46, i32 128 }, %struct.cmd { i32 47, i32 60 }, %struct.cmd { i32 48, i32 34 }, %struct.cmd { i32 49, i32 0 }, %struct.cmd { i32 50, i32 134 }, %struct.cmd { i32 51, i32 8 }, %struct.cmd { i32 52, i32 255 }, %struct.cmd { i32 53, i32 255 }, %struct.cmd { i32 54, i32 255 }, %struct.cmd { i32 55, i32 255 }, %struct.cmd { i32 56, i32 255 }, %struct.cmd { i32 57, i32 255 }, %struct.cmd { i32 58, i32 254 }, %struct.cmd { i32 59, i32 254 }, %struct.cmd { i32 60, i32 254 }, %struct.cmd { i32 61, i32 254 }, %struct.cmd { i32 62, i32 254 }, %struct.cmd { i32 63, i32 113 }, %struct.cmd { i32 64, i32 255 }, %struct.cmd { i32 65, i32 255 }, %struct.cmd { i32 66, i32 255 }, %struct.cmd { i32 67, i32 255 }, %struct.cmd { i32 68, i32 255 }, %struct.cmd { i32 69, i32 255 }, %struct.cmd { i32 70, i32 255 }, %struct.cmd { i32 71, i32 255 }, %struct.cmd { i32 72, i32 255 }, %struct.cmd { i32 73, i32 255 }, %struct.cmd { i32 74, i32 254 }, %struct.cmd { i32 75, i32 255 }, %struct.cmd { i32 76, i32 0 }, %struct.cmd { i32 77, i32 0 }, %struct.cmd { i32 78, i32 255 }, %struct.cmd { i32 79, i32 255 }, %struct.cmd { i32 80, i32 255 }, %struct.cmd { i32 81, i32 255 }, %struct.cmd { i32 82, i32 255 }, %struct.cmd { i32 83, i32 255 }, %struct.cmd { i32 84, i32 255 }, %struct.cmd { i32 85, i32 255 }, %struct.cmd { i32 86, i32 255 }, %struct.cmd { i32 87, i32 255 }, %struct.cmd { i32 88, i32 255 }, %struct.cmd { i32 89, i32 255 }, %struct.cmd { i32 90, i32 255 }, %struct.cmd { i32 91, i32 254 }, %struct.cmd { i32 92, i32 255 }, %struct.cmd { i32 93, i32 143 }, %struct.cmd { i32 94, i32 255 }, %struct.cmd { i32 95, i32 143 }, %struct.cmd { i32 96, i32 162 }, %struct.cmd { i32 97, i32 74 }, %struct.cmd { i32 98, i32 243 }, %struct.cmd { i32 99, i32 117 }, %struct.cmd { i32 100, i32 240 }, %struct.cmd { i32 101, i32 0 }, %struct.cmd { i32 102, i32 85 }, %struct.cmd { i32 103, i32 146 }, %struct.cmd { i32 104, i32 160 }, %struct.cmd { i32 105, i32 74 }, %struct.cmd { i32 106, i32 34 }, %struct.cmd { i32 107, i32 0 }, %struct.cmd { i32 108, i32 51 }, %struct.cmd { i32 109, i32 68 }, %struct.cmd { i32 110, i32 34 }, %struct.cmd { i32 111, i32 132 }, %struct.cmd { i32 112, i32 11 }, %struct.cmd { i32 114, i32 16 }, %struct.cmd { i32 115, i32 80 }, %struct.cmd { i32 116, i32 33 }, %struct.cmd { i32 118, i32 0 }, %struct.cmd { i32 119, i32 165 }, %struct.cmd { i32 120, i32 128 }, %struct.cmd { i32 121, i32 128 }, %struct.cmd { i32 122, i32 128 }, %struct.cmd { i32 123, i32 226 }, %struct.cmd { i32 124, i32 0 }, %struct.cmd { i32 125, i32 247 }, %struct.cmd { i32 126, i32 0 }, %struct.cmd { i32 127, i32 0 }], align 16
@tp6810_ov_init_common = common dso_local global %struct.cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @soi763a_6810_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soi763a_6810_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([7 x %struct.cmd], [7 x %struct.cmd]* @soi763a_6810_init.reg_init_1, i64 0, i64 0))
  %5 = call i32 @reg_w_buf(%struct.gspca_dev* %3, %struct.cmd* getelementptr inbounds ([7 x %struct.cmd], [7 x %struct.cmd]* @soi763a_6810_init.reg_init_1, i64 0, i64 0), i32 %4)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load %struct.cmd*, %struct.cmd** @tp6810_ov_init_common, align 8
  %8 = load %struct.cmd*, %struct.cmd** @tp6810_ov_init_common, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.cmd* %8)
  %10 = call i32 @reg_w_buf(%struct.gspca_dev* %6, %struct.cmd* %7, i32 %9)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([1 x %struct.cmd], [1 x %struct.cmd]* @soi763a_6810_init.reg_init_2, i64 0, i64 0))
  %13 = call i32 @reg_w_buf(%struct.gspca_dev* %11, %struct.cmd* getelementptr inbounds ([1 x %struct.cmd], [1 x %struct.cmd]* @soi763a_6810_init.reg_init_2, i64 0, i64 0), i32 %12)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @i2c_w(%struct.gspca_dev* %14, i32 18, i32 128)
  %16 = call i32 @msleep(i32 10)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([128 x %struct.cmd], [128 x %struct.cmd]* @soi763a_6810_init.sensor_init, i64 0, i64 0))
  %19 = call i32 @i2c_w_buf(%struct.gspca_dev* %17, %struct.cmd* getelementptr inbounds ([128 x %struct.cmd], [128 x %struct.cmd]* @soi763a_6810_init.sensor_init, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
