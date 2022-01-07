; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_write_inittab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_write_inittab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_reg_value = type { i32, i32 }
%struct.tvp5150 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.i2c_reg_value*)* @tvp5150_write_inittab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_write_inittab(%struct.v4l2_subdev* %0, %struct.i2c_reg_value* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_reg_value*, align 8
  %5 = alloca %struct.tvp5150*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.i2c_reg_value* %1, %struct.i2c_reg_value** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %6)
  store %struct.tvp5150* %7, %struct.tvp5150** %5, align 8
  br label %8

8:                                                ; preds = %13, %2
  %9 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 255
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %15 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_write(i32 %16, i32 %19, i32 %22)
  %24 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %24, i32 1
  store %struct.i2c_reg_value* %25, %struct.i2c_reg_value** %4, align 8
  br label %8

26:                                               ; preds = %8
  ret i32 0
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
