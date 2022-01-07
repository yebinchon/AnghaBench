; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_green_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_set_green_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Set green balance %d\0A\00", align 1
@MT9M111_SC_GREEN_1_GAIN = common dso_local global i32 0, align 4
@MT9M111_SC_GREEN_2_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @mt9m111_set_green_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_green_balance(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 255
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 65280
  %16 = ashr i32 %15, 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = load i32, i32* @D_CONF, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @gspca_dbg(%struct.gspca_dev* %18, i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.sd*, %struct.sd** %8, align 8
  %23 = load i32, i32* @MT9M111_SC_GREEN_1_GAIN, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = call i32 @m5602_write_sensor(%struct.sd* %22, i32 %23, i32* %24, i32 2)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.sd*, %struct.sd** %8, align 8
  %32 = load i32, i32* @MT9M111_SC_GREEN_2_GAIN, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %34 = call i32 @m5602_write_sensor(%struct.sd* %31, i32 %32, i32* %33, i32 2)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
