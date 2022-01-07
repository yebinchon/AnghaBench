; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_uda1342.c_uda1342_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_uda1342.c_uda1342_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"initializing UDA1342 at address %d on %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@uda1342_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @uda1342_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1342_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %6, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 2
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.v4l2_subdev* @devm_kzalloc(i32* %29, i32 4, i32 %30)
  store %struct.v4l2_subdev* %31, %struct.v4l2_subdev** %7, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %33 = icmp eq %struct.v4l2_subdev* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %18
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %38, %struct.i2c_client* %39, i32* @uda1342_ops)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @write_reg(%struct.i2c_client* %41, i32 0, i32 32768)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = call i32 @write_reg(%struct.i2c_client* %43, i32 0, i32 4673)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 1
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 1
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %51, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @v4l_info(%struct.i2c_client* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %37, %34, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @write_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
