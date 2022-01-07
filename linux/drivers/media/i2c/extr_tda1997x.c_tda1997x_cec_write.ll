; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_cec_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_cec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"write reg error:reg=%2x,val=%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32)* @tda1997x_cec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_cec_write(%struct.v4l2_subdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tda1997x_state*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.tda1997x_state* %10, %struct.tda1997x_state** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.tda1997x_state*, %struct.tda1997x_state** %7, align 8
  %12 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @i2c_smbus_write_byte_data(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.tda1997x_state*, %struct.tda1997x_state** %7, align 8
  %21 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @v4l_err(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  store i32 -1, i32* %8, align 4
  br label %26

26:                                               ; preds = %19, %3
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @v4l_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
