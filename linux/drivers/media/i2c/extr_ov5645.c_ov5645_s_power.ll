; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5645.c_ov5645_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov5645 = type { i32, i32, i32 }

@ov5645_global_init_setting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not set init registers\0A\00", align 1
@OV5645_IO_MIPI_CTRL00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov5645_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5645_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov5645*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ov5645* @to_ov5645(%struct.v4l2_subdev* %7)
  store %struct.ov5645* %8, %struct.ov5645** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %10 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %13 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %25 = call i32 @ov5645_set_power_on(%struct.ov5645* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %68

29:                                               ; preds = %23
  %30 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %31 = load i32, i32* @ov5645_global_init_setting, align 4
  %32 = load i32, i32* @ov5645_global_init_setting, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @ov5645_set_register_array(%struct.ov5645* %30, i32 %31, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %39 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %43 = call i32 @ov5645_set_power_off(%struct.ov5645* %42)
  br label %68

44:                                               ; preds = %29
  %45 = call i32 @usleep_range(i32 500, i32 1000)
  br label %52

46:                                               ; preds = %20
  %47 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %48 = load i32, i32* @OV5645_IO_MIPI_CTRL00, align 4
  %49 = call i32 @ov5645_write_reg(%struct.ov5645* %47, i32 %48, i32 88)
  %50 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %51 = call i32 @ov5645_set_power_off(%struct.ov5645* %50)
  br label %52

52:                                               ; preds = %46, %44
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 -1
  %58 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %59 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %63 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  br label %68

68:                                               ; preds = %53, %37, %28
  %69 = load %struct.ov5645*, %struct.ov5645** %5, align 8
  %70 = getelementptr inbounds %struct.ov5645, %struct.ov5645* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.ov5645* @to_ov5645(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov5645_set_power_on(%struct.ov5645*) #1

declare dso_local i32 @ov5645_set_register_array(%struct.ov5645*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ov5645_set_power_off(%struct.ov5645*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ov5645_write_reg(%struct.ov5645*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
