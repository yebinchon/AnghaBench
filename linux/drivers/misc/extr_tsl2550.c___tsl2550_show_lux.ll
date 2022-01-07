; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_tsl2550.c___tsl2550_show_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_tsl2550.c___tsl2550_show_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tsl2550_data = type { i32 }

@TSL2550_READ_ADC0 = common dso_local global i32 0, align 4
@TSL2550_READ_ADC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8*)* @__tsl2550_show_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tsl2550_show_lux(%struct.i2c_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tsl2550_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.tsl2550_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.tsl2550_data* %11, %struct.tsl2550_data** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = load i32, i32* @TSL2550_READ_ADC0, align 4
  %14 = call i32 @tsl2550_get_adc_value(%struct.i2c_client* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* @TSL2550_READ_ADC1, align 4
  %23 = call i32 @tsl2550_get_adc_value(%struct.i2c_client* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @tsl2550_calculate_lux(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %28
  %38 = load %struct.tsl2550_data*, %struct.tsl2550_data** %6, align 8
  %39 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %43, 5
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %35, %26, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.tsl2550_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @tsl2550_get_adc_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @tsl2550_calculate_lux(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
