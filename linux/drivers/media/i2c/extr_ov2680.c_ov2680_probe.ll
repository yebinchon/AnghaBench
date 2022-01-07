; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.ov2680_dev = type { i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ov2680 init correctly\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ov2680 init fail: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov2680_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ov2680_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ov2680_dev* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.ov2680_dev* %11, %struct.ov2680_dev** %5, align 8
  %12 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %13 = icmp ne %struct.ov2680_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %20 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %19, i32 0, i32 1
  store %struct.i2c_client* %18, %struct.i2c_client** %20, align 8
  %21 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %22 = call i32 @ov2680_parse_dt(%struct.ov2680_dev* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %70

28:                                               ; preds = %17
  %29 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %30 = call i32 @ov2680_mode_init(%struct.ov2680_dev* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %70

35:                                               ; preds = %28
  %36 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %37 = call i32 @ov2680_get_regulators(%struct.ov2680_dev* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %70

44:                                               ; preds = %35
  %45 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %46 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %45, i32 0, i32 0
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %49 = call i32 @ov2680_check_id(%struct.ov2680_dev* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %62

53:                                               ; preds = %44
  %54 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %55 = call i32 @ov2680_v4l2_register(%struct.ov2680_dev* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_info(%struct.device* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

62:                                               ; preds = %58, %52
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %67 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %66, i32 0, i32 0
  %68 = call i32 @mutex_destroy(i32* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %59, %40, %33, %25, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.ov2680_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ov2680_parse_dt(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_mode_init(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_get_regulators(%struct.ov2680_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ov2680_check_id(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_v4l2_register(%struct.ov2680_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
