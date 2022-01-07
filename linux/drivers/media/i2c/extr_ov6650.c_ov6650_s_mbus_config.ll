; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_s_mbus_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov6650.c_ov6650_s_mbus_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_config = type { i32 }
%struct.i2c_client = type { i32 }

@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@REG_COMJ = common dso_local global i32 0, align 4
@COMJ_PCLK_RISING = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@REG_COMF = common dso_local global i32 0, align 4
@COMF_HREF_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@COMJ_VSYNC_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_config*)* @ov6650_s_mbus_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov6650_s_mbus_config(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_mbus_config*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_config** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load i32, i32* @REG_COMJ, align 4
  %19 = load i32, i32* @COMJ_PCLK_RISING, align 4
  %20 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %17, i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %23 = load i32, i32* @REG_COMJ, align 4
  %24 = load i32, i32* @COMJ_PCLK_RISING, align 4
  %25 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %22, i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %72

31:                                               ; preds = %26
  %32 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = load i32, i32* @REG_COMF, align 4
  %41 = load i32, i32* @COMF_HREF_LOW, align 4
  %42 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %39, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %7, align 4
  br label %48

43:                                               ; preds = %31
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = load i32, i32* @REG_COMF, align 4
  %46 = load i32, i32* @COMF_HREF_LOW, align 4
  %47 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %44, i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %72

53:                                               ; preds = %48
  %54 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %62 = load i32, i32* @REG_COMJ, align 4
  %63 = load i32, i32* @COMJ_VSYNC_HIGH, align 4
  %64 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %61, i32 %62, i32 %63, i32 0)
  store i32 %64, i32* %7, align 4
  br label %70

65:                                               ; preds = %53
  %66 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %67 = load i32, i32* @REG_COMJ, align 4
  %68 = load i32, i32* @COMJ_VSYNC_HIGH, align 4
  %69 = call i32 @ov6650_reg_rmw(%struct.i2c_client* %66, i32 %67, i32 0, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %51, %29
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov6650_reg_rmw(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
