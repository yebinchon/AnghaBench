; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8540_gpadc_vbat_meas_and_ibat_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-debugfs.c_ab8540_gpadc_vbat_meas_and_ibat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ab8500_gpadc = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ab8500-gpadc.0\00", align 1
@VBAT_MEAS_AND_IBAT = common dso_local global i32 0, align 4
@avg_sample = common dso_local global i32 0, align 4
@trig_edge = common dso_local global i32 0, align 4
@trig_timer = common dso_local global i32 0, align 4
@conv_type = common dso_local global i32 0, align 4
@MAIN_BAT_V = common dso_local global i32 0, align 4
@IBAT_VIRTUAL_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%d,0x%X\0A%d,0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ab8540_gpadc_vbat_meas_and_ibat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8540_gpadc_vbat_meas_and_ibat_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ab8500_gpadc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call %struct.ab8500_gpadc* @ab8500_gpadc_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.ab8500_gpadc* %10, %struct.ab8500_gpadc** %9, align 8
  %11 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %12 = load i32, i32* @VBAT_MEAS_AND_IBAT, align 4
  %13 = load i32, i32* @avg_sample, align 4
  %14 = load i32, i32* @trig_edge, align 4
  %15 = load i32, i32* @trig_timer, align 4
  %16 = load i32, i32* @conv_type, align 4
  %17 = call i32 @ab8500_gpadc_double_read_raw(%struct.ab8500_gpadc* %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32* %7)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %19 = load i32, i32* @MAIN_BAT_V, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ab8500_gpadc_ad_to_voltage(%struct.ab8500_gpadc* %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %9, align 8
  %23 = load i32, i32* @IBAT_VIRTUAL_CHANNEL, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ab8500_gpadc_ad_to_voltage(%struct.ab8500_gpadc* %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30)
  ret i32 0
}

declare dso_local %struct.ab8500_gpadc* @ab8500_gpadc_get(i8*) #1

declare dso_local i32 @ab8500_gpadc_double_read_raw(%struct.ab8500_gpadc*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ab8500_gpadc_ad_to_voltage(%struct.ab8500_gpadc*, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
