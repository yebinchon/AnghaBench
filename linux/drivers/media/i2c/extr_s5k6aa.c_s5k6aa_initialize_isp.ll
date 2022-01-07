; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_initialize_isp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_initialize_isp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.s5k6aa = type { i32, i32, i32, i32 }

@s5k6aa_analog_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5k6aa_initialize_isp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_initialize_isp(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.s5k6aa*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev* %9)
  store %struct.s5k6aa* %10, %struct.s5k6aa** %5, align 8
  %11 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %12 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %14 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = call i32 @msleep(i32 100)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call i32 @s5k6aa_set_ahb_address(%struct.i2c_client* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %24 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %25 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %28 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @s5k6aa_configure_video_bus(%struct.s5k6aa* %23, i32 %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %22
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %37 = load i32, i32* @s5k6aa_analog_config, align 4
  %38 = call i32 @s5k6aa_write_array(%struct.v4l2_subdev* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %47

43:                                               ; preds = %35
  %44 = call i32 @msleep(i32 20)
  %45 = load %struct.s5k6aa*, %struct.s5k6aa** %5, align 8
  %46 = call i32 @s5k6aa_configure_pixel_clocks(%struct.s5k6aa* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %41, %33, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @s5k6aa_set_ahb_address(%struct.i2c_client*) #1

declare dso_local i32 @s5k6aa_configure_video_bus(%struct.s5k6aa*, i32, i32) #1

declare dso_local i32 @s5k6aa_write_array(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @s5k6aa_configure_pixel_clocks(%struct.s5k6aa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
