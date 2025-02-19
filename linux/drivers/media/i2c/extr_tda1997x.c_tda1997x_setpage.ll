; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_setpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_setpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { i64, i32 }

@REG_CURPAGE_00H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"write reg error:reg=%2x,val=%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64)* @tda1997x_setpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_setpage(%struct.v4l2_subdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tda1997x_state*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.tda1997x_state* %9, %struct.tda1997x_state** %6, align 8
  %10 = load %struct.tda1997x_state*, %struct.tda1997x_state** %6, align 8
  %11 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.tda1997x_state*, %struct.tda1997x_state** %6, align 8
  %17 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @REG_CURPAGE_00H, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @i2c_smbus_write_byte_data(i32 %18, i32 %19, i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.tda1997x_state*, %struct.tda1997x_state** %6, align 8
  %26 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @REG_CURPAGE_00H, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @v4l_err(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %15
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.tda1997x_state*, %struct.tda1997x_state** %6, align 8
  %35 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

declare dso_local i32 @v4l_err(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
