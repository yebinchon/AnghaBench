; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_set_ahb_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_set_ahb_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@AHB_MSB_ADDR_PTR = common dso_local global i32 0, align 4
@GEN_REG_OFFSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5k4ecgx_set_ahb_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_set_ahb_address(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = load i32, i32* @AHB_MSB_ADDR_PTR, align 4
  %10 = load i32, i32* @GEN_REG_OFFSH, align 4
  %11 = call i32 @s5k4ecgx_i2c_write(%struct.i2c_client* %8, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = call i32 @s5k4ecgx_i2c_write(%struct.i2c_client* %17, i32 16, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %16
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @s5k4ecgx_i2c_write(%struct.i2c_client* %24, i32 4144, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @s5k4ecgx_i2c_write(%struct.i2c_client* %31, i32 20, i32 1)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %28, %21, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @s5k4ecgx_i2c_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
